# Enhanced MarkerClusterer

Welcome to e_markerclusterer gem! This gem is a javascript to show various infographics on Google Map, which is based on [Marker Clusterer Plus of Google Map Utilities V3](https://github.com/printercu/google-maps-utility-library-v3-read-only/tree/master/markerclustererplus) and infographic charts is derived from [Chart Marker Clusterer by Hassan Mughal](https://github.com/hassanlatif/chart-marker-clusterer).

## Requirement

1) Gemfile

Add this line to your application's Gemfile:

```
gem 'e_markerclusterer'
```

2) Replace Google Marker Clusterer

Replace below google script

Remove the line 

```
<script src="//cdn.rawgit.com/mahnunchik/markerclustererplus/master/dist/markerclusterer.min.js"></script>
```

on your dom, and add this line on asset pipeline:

```
\\= require e_markerclusterer
```

If you use [Google maps for Rails](https://github.com/apneadiving/Google-Maps-for-Rails), add lines on asset pipeline:

```
\\= require e_markerclusterer
\\= require gmaps/google
```

## Usage

e_markerclusterer gem basically works with Google maps for Rails. Only one difference is legend information.

1) GeoJSON:

If you generate markers with sex legend, you should set title of markers for legend.

```
@users = User.all
@markers = Gmaps4rails.build_markers(@users) do |user, marker|
  marker.title user.sex
  marker.lat user.latitude
  marker.lng user.longitude
end
@legend = { 'male' => 1, 'female' => 2}
```

2) HTML view:

```
<div style='width: 800px;'>
  <%= content_tag :div, id: "map", style: 'width: 800px; height: 400px;', data: { markers: @markers, legend: @legend } do %>
  <% end %>
</div>
```

3) Javascript code:

Generate handle:

```
var handler;
google.charts.load('current', {'packages': ['corechart']});
handler = Gmaps.build('Google', {
  markers: {
    clusterer: {
      gridSize: 40,
      maxZoom: 10,
      styles: [{
        height: 60,
        width: 60
      }],
      legend: $('#map').data('legend')
    }
  }
});
```

And build map with markers:

```
handler.buildMap({
  provider: {
    mapTypeId: google.maps.MapTypeId.ROADMAP
  },
  internal: {
    id: 'map'
  }
}, function() {
  var markers;
  markers = gmapHandler.addMarkers($('#map').data('markers'));
});
```

## Todo?

Feel free to contact us, you have your say.

## Copyright

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

```
http://www.apache.org/licenses/LICENSE-2.0
```

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/skonmeme/e_markerclusterer.

