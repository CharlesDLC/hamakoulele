// TODO: Put your JS code in here
$(document).ready(function() {
// $("#send").on("submit", function(e){
$('#send').click(function() {
$.ajax({
      url: "https://maps.googleapis.com/maps/api/geocode/json?address=" + $('#address').val(),
      success: function(data) {
          // Query lat/long
        console.log(data);
        var lat  = data.results[0].geometry.location.lat;
        var lng  = data.results[0].geometry.location.lng;
    $("#coordinates").append("<h2>" + lat + " , " + lng + "</h2>");

          // Display map
        var map = new google.maps.Map(document.getElementById('map'), {
          center: { lat: lat, lng: lng },
          zoom: 8  // Change this value from 0 to 18
        });
        // Display pointer
        var marker = new google.maps.Marker({
          map: map,
          position: { lat: lat, lng: lng }
        });
},
        error: function(jqXHR) {
    console.error(jqXHR.responseText);
  }
    });
  });
});
