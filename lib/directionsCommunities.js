/**
 * Created by Tommy on 2/14/2016.
 */
var directions = require('./directions');
var db = require('./db');

function getTimeToCommunities(drivingPreferences, callback) {
  db.getAllCommunitiesInfo(function(err, communitiesInfo) {
    if (err) {
      callback(err);
    } else {
      directions.getTimeToCommunities(communitiesInfo, drivingPreferences,
          function(err, result) {
        if (err) {
          callback(err);
        } else {
          callback(null, result);
        }
      });
    }
  });
}

/*var startTime = new Date().getTime();
getTimeToCommunities(
    {
      destination: '201 S Wacker Dr, Chicago, IL',
      mode: 'driving'
    }, function(err, result) {
  var endTime = new Date().getTime();
  console.log('Time elapsed:', (endTime - startTime) / 1000, 's');
  console.log(result);
});*/

module.exports = {
  getTimeToCommunities: getTimeToCommunities
};