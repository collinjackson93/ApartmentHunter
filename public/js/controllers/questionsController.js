/**
 * Created by chrissu on 12/12/15.
 */
app.controller('questionsController', function($scope, $http) {
    angular.element(document).ready(function() {
    });

    $scope.questions = [
        {
            text: "How do you like to spend your weekends?",
            options:
                [
                    "Drinking at a bar",
                    "Reading at home",
                    "Playing an outdoor sport",
                    "Working out at the gym",
                    "Watching a movie at home",
                    "Hosting a party at home"
                ]
        }
    ];

});