// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var map;
// Map Display
function initMap() {
//  Tribeca parameters
  var nyc = {lat: 40.7359, lng: -73.9911};
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 12,
    center: nyc
  });
// Tribeca marker
  var marker = new google.maps.Marker({
    map: map
  });

 // Array of locations, which are looped to display multiple markers
  var locations = [
    ["Urban Snooze Tribeca",  40.7163, -74.0086, 1],
    ["Urban Snooze Soho", 40.7233, -74.0030, 2],
    ["Urban Snooze Fidi", 40.7075, -74.0113, 3],
    ["Urban Snooze Times Square", 40.7589, -73.9851, 4],
    ["Urban Snooze Union Square", 40.7359, -73.9911, 5],
    ["Urban Snooze Midtown", 40.7484, -73.9857, 6]
  ];

  // Drop down list array
  // var locationChoice = document.getElementById('location_choice')
  //
  // marker.setAttribute('style', '');

// Adds onlick INFO WINDOW to marker
  var infoWindow = new google.maps.InfoWindow();

   // Adds multiple MARKERS to map
    var marker, i
    for (i = 0; i < locations.length; i++) {
    marker = new google.maps.Marker({
      position: new google.maps.LatLng(locations[i][1], locations[i][2]),
      map: map
    });
    // Adds onlick INFO WINDOW to marker
    google.maps.event.addListener(marker, 'click', (function(marker, i) {
      return function() {
        infoWindow.setContent(locations[i][0]);
        infoWindow.open(map, marker);
      }
    })(marker, i));
    // locationChoice.querySelector('onclick', function(event) {
    //     addMarker(event.latLng);
    //   });
    // Loop ends
  }
}
