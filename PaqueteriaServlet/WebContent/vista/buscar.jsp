<!-- C�digo a abrir como html en el navegador donde aparece mapa y barra b�squedas con predicci�n de texto -->
<!-- Places search box. https://developers.google.com/maps/documentation/javascript/examples/places-searchbox -->
<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Places Searchbox</title>
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      .controls {
        margin-top: 10px;
        border: 1px solid transparent;
        border-radius: 2px 0 0 2px;
        box-sizing: border-box;
        -moz-box-sizing: border-box;
        height: 32px;
        outline: none;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
      }
      #pac-input {
        background-color: #fff;
        font-family: Roboto;
        font-size: 15px;
        font-weight: 300;
        margin-left: 12px;
        padding: 0 11px 0 13px;
        text-overflow: ellipsis;
        width: 300px;
      }
      #pac-input:focus {
        border-color: #4d90fe;
      }
      .pac-container {
        font-family: Roboto;
      }
      #type-selector {
        color: #fff;
        background-color: #4d90fe;
        padding: 5px 11px 0px 11px;
      }
      #type-selector label {
        font-family: Roboto;
        font-size: 13px;
        font-weight: 300;
      }
      #target {
        width: 345px;
      }
    </style>
  </head>
  <body>
  	<form action="mostrar">
	  	<input id="pac-input" class="controls" type="text" placeholder="Search Box"><br>
	    <input id="pac-input2" class="controls" type="text" placeholder="Search Box"><br>
	    <input type="submit" value="enviar">
  	</form>
    <a href="adminArticulo?action=mostrar">Mostrar</a>
    <div id="map"></div>
    <script>
      // This example adds a search box to a map, using the Google Place Autocomplete
      // feature. People can enter geographical searches. The search box will return a
      // pick list containing a mix of places and predicted search terms.
      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
      function initAutocomplete() {
    	// Create the search box and link it to the UI element.
    	  var input = document.getElementById('pac-input');
          var searchBox = new google.maps.places.SearchBox(input);
          var markers = [];
          // Listen for the event fired when the user selects a prediction and retrieve
          // more details for that place.
          searchBox.addListener('places_changed', function() {
            var places = searchBox.getPlaces();
            if (places.length == 0) {
              return;
            }
            markers = [];
            // For each place, get the icon, name and location.
            var bounds = new google.maps.LatLngBounds();
            places.forEach(function(place) {
              if (!place.geometry) {
                console.log("Returned place contains no geometry");
                return;
              }
              
            });
            
        });
          
          var input = document.getElementById('pac-input2');
          var searchBox = new google.maps.places.SearchBox(input);
          var markers = [];
          // Listen for the event fired when the user selects a prediction and retrieve
          // more details for that place.
          searchBox.addListener('places_changed', function() {
            var places = searchBox.getPlaces();
            if (places.length == 0) {
              return;
            }
            markers = [];
            // For each place, get the icon, name and location.
            var bounds = new google.maps.LatLngBounds();
            places.forEach(function(place) {
              if (!place.geometry) {
                console.log("Returned place contains no geometry");
                return;
              }
              
            });
            
        });
      }
      
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCKtPhLTpAp84VaOouOpfYpNII05UvbVK8&libraries=places&callback=initAutocomplete"
         async defer></script>
         
  </body>
</html>