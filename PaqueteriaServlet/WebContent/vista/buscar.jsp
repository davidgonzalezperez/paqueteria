<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function initAutocomplete(){
	
	var map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: -33.8688, lng: 151.2195},
        zoom: 13,
        mapTypeId: 'roadmap'
      });
	
	 var input = document.getElementById('origen');
     var searchBox = new google.maps.places.SearchBox(input);
     map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
     // Bias the SearchBox results towards current map's viewport.
     map.addListener('bounds_changed', function() {
       searchBox.setBounds(map.getBounds());
     });
     
     var input = document.getElementById('destino');
     var searchBox = new google.maps.places.SearchBox(input);
     map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
     // Bias the SearchBox results towards current map's viewport.
     map.addListener('bounds_changed', function() {
       searchBox.setBounds(map.getBounds());
     });
     var markers = [];
     // Listen for the event fired when the user selects a prediction and retrieve
     // more details for that place.
     searchBox.addListener('places_changed', function() {
       var places = searchBox.getPlaces();
       if (places.length == 0) {
         return;
       }
       // Clear out the old markers.
       markers.forEach(function(marker) {
         marker.setMap(null);
       });
       markers = [];
       // For each place, get the icon, name and location.
       var bounds = new google.maps.LatLngBounds();
       places.forEach(function(place) {
         if (!place.geometry) {
           console.log("Returned place contains no geometry");
           return;
         }
         var icon = {
           url: place.icon,
           size: new google.maps.Size(71, 71),
           origin: new google.maps.Point(0, 0),
           anchor: new google.maps.Point(17, 34),
           scaledSize: new google.maps.Size(25, 25)
         };
         // Create a marker for each place.
         markers.push(new google.maps.Marker({
           map: map,
           icon: icon,
           title: place.name,
           position: place.geometry.location
         }));
         if (place.geometry.viewport) {
           // Only geocodes have viewport.
           bounds.union(place.geometry.viewport);
         } else {
           bounds.extend(place.geometry.location);
         }
       });
       map.fitBounds(bounds);
     });
   }
</script>
 <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAP__OFgx6WT-N68z5uA8cUWt0gnBe-Y2I&libraries=places&callback=initAutocomplete"
         async defer></script>
</head>
<body>
Origen
<input type="text" id="origen" name="origen" placeholder="Origen"><br>
Destino
<input type="text" id="destino" name="destino" placeholder="Destino"><br>
<a href="adminArticulo?action=mostrar"><input type="submit" value="Buscar"></a>
<div id="map"></div>
</body>
</html>