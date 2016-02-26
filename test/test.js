// Prevent jshint from complaining about `should.be.NaN`
// jshint expr:true
var rewire = require('rewire');
var chai = require('chai');
var should = chai.should();
var sinon = require('sinon');
chai.use(require('sinon-chai'));

describe('TribuneData', function() {
  var tribune = rewire('../lib/tribuneData');

  describe.skip('getAllCommunityData', function() {
    it('should return an object with all expected keys', function(done) {
      tribune.getAllCommunityData(1, function(err, obj) {
        if (err) {
          done(err);
        } else {
          obj.should.have.all.keys('adjacent_area_numbers', 'area_number',
            'hardship_index', 'name', 'pct_crowded', 'pct_no_diploma',
            'pct_old_and_young', 'pct_poverty', 'pct_unemployed',
            'per_capita_income', 'population_2000', 'population_2010',
            'shape_area', 'shape_len', 'slug', 'wikipedia');
          done();
        }
      });
    });
  });

  describe('getCrowdedPct', function() {
    var getCrowdedPct = tribune.__get__('getCrowdedPct');
    var reset;
    before(function() {
      reset = tribune.__set__('getAllCommunityData', function(ignore, cb) {
        // Create dummy object to pass back
        var retObj = {
          adjacent_area_numbers: '5',
          area_number: '2',
          hardship_index: '0.7',
          name: 'Loop',
          pct_crowded: '0.6',
          pct_no_diploma: '0.7',
          pct_old_and_young: '0.43',
          pct_poverty: '0.2'
        };
        cb(null, retObj);
      });
    });
    after(function() {
      reset();
    });

    it('should return only pct_crowded as a number', function(done) {
      getCrowdedPct({ communityID: 1 }, function(err, num) {
        if (err) {
          done(err);
        } else {
          num.should.be.a('number');
          num.should.not.be.NaN;
          done();
        }
      });
    });
  });

  describe('getCrimeCount', function() {
    var getCrimeCount = tribune.__get__('getCrimeCount');

    it('should pass the correct parameters to makeRequest', function(done) {
      // NOTE: month is 0-based for the Date constructor
      var clock = sinon.useFakeTimers(new Date(1993, 9, 30).getTime());
      var revert = tribune.__set__('makeRequest', function(url, params, cb) {
        params.should.contain.all.keys('community_area', 'limit',
          'crime_date__gte', 'format');
        params.community_area.should.equal(1);
        params.limit.should.equal(0);
        params.crime_date__gte.should.equal('1993-04-30');
        params.format.should.equal('json');
        clock.restore();
        revert();
        done();
      });
      getCrimeCount({ communityID: 1 }, function() {});
    });

    it.skip('should return an object with violent and non-violent crime',
        function(done) {
      this.timeout(3000);
      getCrimeCount({ communityID: 1, landArea: 1800 },
          function(err, obj) {
        if (err) {
          done(err);
        } else {
          obj.should.contain.all.keys('violent', 'nonViolent');
          obj.violent.should.be.a('number');
          obj.violent.should.not.be.NaN;
          obj.violent.should.be.greaterThan(0);
          obj.nonViolent.should.be.a('number');
          obj.nonViolent.should.not.be.NaN;
          obj.nonViolent.should.be.greaterThan(0);
          done();
        }
      });
    });
  });

  describe('communitiesCrimePctOfAvg', function() {
    var fakeCommInfo = [
      { communityID: 1,
        landArea: 8000 },
      { communityID: 2,
        landArea: 8000}
    ];

    // Create variable to restore getCrimeCount
    var reset;
    before(function() {
      reset = tribune.__set__('getCrimeCount', function(ignore, cb) {
        cb(null, { violent: 0.5, nonViolent: 0.75 });
      });
    });
    after(function() {
      reset();
    });

    it('should return pctOfAvg for violent and non-violent crime',
        function(done) {
      tribune.communitiesCrimePctOfAvg(fakeCommInfo,
                                       function(err, violent, nonViolent) {
        if (err) {
          done(err);
        } else {
          var violentSum = 0;
          for (var vcommunity in violent) {
            if (violent.hasOwnProperty(vcommunity)) {
              violent[vcommunity].should.be.a('number');
              violent[vcommunity].should.not.be.NaN;
              violentSum += violent[vcommunity];
            }
          }
          violentSum.should.equal(fakeCommInfo.length);
          var nonViolentSum = 0;
          for (var community in nonViolent) {
            if (nonViolent.hasOwnProperty(community)) {
              nonViolent[community].should.be.a('number');
              nonViolent[community].should.not.be.NaN;
              nonViolentSum += nonViolent[community];
            }
          }
          nonViolentSum.should.equal(fakeCommInfo.length);
          done();
        }
      });
    });
  });
});

describe('CommunitiesPctOfAvg', function() {
  var pctOfAvg = require('../lib/communitiesPctOfAvg');

  describe('getAllData', function() {
    var fakeCommInfo = [{ communityID: 1 }, { communityID: 2 },
                        { communityID: 3 }];
    var stub;
    beforeEach(function() {
      stub = sinon.stub();
      // Make stub call the second parameter with null and a number. Used to
      // pass a fake result to the callback
      stub.callsArgWith(1, null, 2);
    });

    it('should call the given function on each community', function(done) {
      pctOfAvg.getAllData(fakeCommInfo, stub, function(err, ignore) {
        if (err) {
          done(err);
        } else {
          stub.should.have.callCount(fakeCommInfo.length);
          done();
        }
      });
    });

    it('should finish and log if an error occurs', function(done) {
      var errorStub = sinon.stub(console, 'error');
      stub.onCall(1).callsArgWith(1, 'Error occurred');
      pctOfAvg.getAllData(fakeCommInfo, stub, function(err, result) {
        errorStub.restore();
        stub.should.have.callCount(fakeCommInfo.length);
        errorStub.should.have.been.calledWith('Error on communityID ' +
            fakeCommInfo[1].communityID + ': Error occurred');
        done();
      });
    });

    it('should finish and log if one function fails to return', function(done) {
      var errorStub = sinon.stub(console, 'error');
      stub.onCall(1).callsArgWith(1, null, null);
      pctOfAvg.getAllData(fakeCommInfo, stub, function(err, result) {
        errorStub.restore();
        stub.should.have.callCount(fakeCommInfo.length);
        errorStub.should.have.been.calledWith('No result returned for ' +
            'communityID ' + fakeCommInfo[1].communityID);
        done();
      });
    });
  });

  describe('getAvgData', function() {
    var fakeCommData = [{ data: 5 }, { data: 3 }];

    it('should return the average of a list', function() {
      var retVal = pctOfAvg.getAvgData(fakeCommData);
      retVal.should.equal(4);
    });
  });

  describe('getPctOfAvg', function() {
    it('should return the percent of average of each list item', function() {
      var fakeCommData = [{ communityID: 1, data: 5 },
                          { communityID: 2, data: 3 }];

      var retVal = pctOfAvg.getPctOfAvg(fakeCommData, 4);
      retVal[1].should.equal(1.25);
      retVal[2].should.equal(0.75);
    });
  });
});

describe('DB', function() {
  var sqlite3 = require('sqlite3');
  var database = rewire('../lib/db');

  // Swap to an in-memory database and create the schema
  var testDB = new sqlite3.Database(':memory:');
  before(function(done) {
    database.__set__('db', testDB);

    // Turn off jscs so it doesn't complain about mixing commas in SQL strings
    // jscs:disable
    var commAreaStr = "CREATE TABLE 'CommunityArea' (" +
        "`communityID` INTEGER UNIQUE,`name` TEXT NOT NULL," +
        "`landArea` INTEGER NOT NULL,`latLng` TEXT NOT NULL," +
        "`sw` TEXT NOT NULL,`ne` TEXT NOT NULL," +
        "`truliaID` INTEGER NOT NULL UNIQUE,`radius` INTEGER," +
        "PRIMARY KEY(communityID))";
    var commDataStr = "CREATE TABLE 'CommunityData' (" +
        "`communityID` INTEGER UNIQUE,`violentCrimePctOfAvg` REAL," +
        "`nonViolentCrimePctOfAvg` REAL,`nightlifePctOfAvg` REAL," +
        "`crowdedPctOfAvg` REAL,`pricePctOfAvg` REAL," +
        "PRIMARY KEY(communityID)," +
        "FOREIGN KEY(`communityID`) REFERENCES `CommunityArea`(`communityID`))";
    testDB.exec(commAreaStr).exec(commDataStr);
    testDB.exec("INSERT INTO CommunityArea VALUES (1, 'Loop', 5000, '81,56'," +
                "'80,55', '82,57', 1, 50)", function(err) {
                  if (err) {
                    done(err);
                  } else {
                    done();
                  }
                });
    // jscs:enable
  });

  it('should use the test database', function(done) {
    database.getAllCommunitiesInfo(function(err, result) {
      if (err) {
        done(err);
      } else {
        result.should.have.length(1);
        done();
      }
    });
  });

  it('should insert community data', function(done) {
    var data = { violentCrimePctOfAvg: 0.6, nonViolentCrimePctOfAvg: 0.5,
        nightlifePctOfAvg: 0.4, crowdedPctOfAvg: 0.2, pricePctOfAvg: 0.7 };
    database.insertCommunityData(1, data, 'CommunityData');
    testDB.get('SELECT * from CommunityData where communityID=1', [],
                function(err, row) {
      if (err) {
        done(err);
      } else {
        row.should.have.all.keys('communityID', 'violentCrimePctOfAvg',
          'nonViolentCrimePctOfAvg', 'pricePctOfAvg',
          'nightlifePctOfAvg', 'crowdedPctOfAvg');
        row.communityID.should.equal(1);
        row.violentCrimePctOfAvg.should.equal(0.6);
        row.nonViolentCrimePctOfAvg.should.equal(0.5);
        row.nightlifePctOfAvg.should.equal(0.4);
        row.crowdedPctOfAvg.should.equal(0.2);
        row.pricePctOfAvg.should.equal(0.7);
        done();
      }
    });
  });
});

describe('TruliaData', function() {
  var trulia = rewire('../lib/truliaData');

  describe('generateParams', function() {
    var generateParams = trulia.__get__('generateParams');

    var clock;
    before(function() {
      // Mock all date/time functions so we can easily test output
      // NOTE: month is 0-based for the Date constructor
      clock = sinon.useFakeTimers(new Date(1993, 9, 30).getTime());
    });
    after(function() {
      clock.restore();
    });

    it('should calculate/format dates for today and 6 months ago', function() {
      var retObj = generateParams({ truliaID: 6 });
      retObj.startDate.should.equal('1993-04-30');
      retObj.endDate.should.equal('1993-10-30');
    });
  });

  describe('getAveragePriceFromArr', function() {
    var getAveragePriceFromArr = trulia.__get__('getAveragePriceFromArr');
    var fakeXML = `<TruliaWebServices>
                    <response>
                      <TruliaStats>
                        <listingStats>
                          <listingStat>
                            <listingPrice>
                              <subcategory>
                                <type>All Properties</type>
                                <medianListingPrice>192088</medianListingPrice>
                              </subcategory>
                              <subcategory>
                                <type>1 Bedroom Properties</type>
                                <medianListingPrice>153057</medianListingPrice>
                              </subcategory>
                            </listingPrice>
                          </listingStat>
                          <listingStat>
                            <listingPrice>
                              <subcategory>
                                <type>All Properties</type>
                                <medianListingPrice>199300</medianListingPrice>
                              </subcategory>
                              <subcategory>
                                <type>1 Bedroom Properties</type>
                                <medianListingPrice>153057</medianListingPrice>
                              </subcategory>
                            </listingPrice>
                          </listingStat>
                          <listingStat>
                            <listingPrice>
                              <subcategory>
                                <type>All Properties</type>
                                <medianListingPrice>239900</medianListingPrice>
                              </subcategory>
                              <subcategory>
                                <type>1 Bedroom Properties</type>
                                <medianListingPrice>163450</medianListingPrice>
                              </subcategory>
                              <subcategory>
                                <type>1 Bedroom Properties</type>
                                <medianListingPrice>159000</medianListingPrice>
                              </subcategory>
                            </listingPrice>
                          </listingStat>
                        </listingStats>
                      </TruliaStats>
                    </response>
                    </TruliaWebServices>`;
    it('should parse XML and return the correct average', function(done) {
      getAveragePriceFromArr(fakeXML, function(err, result) {
        if (err) {
          done(err);
        } else {
          var properAvg = (153057 + 153057 + 163450) / 3;
          result.should.equal(properAvg);
          done();
        }
      });
    });
  });
});
