  Note: This is in reverse chronological order, so newer entries are added to the top.

## Enhanced MarkerClusterer 0.0.6

######2016. 10. 26
* rails dependency was changed to '>= 4.2.5.2'

## Enhanced MarkerClusterer 0.0.5

######2016. 8. 1
* A bug not to show a chart of last created cluster is fixed.

## Enhanced MarkerClusterer 0.0.4

######2016. 7. 25
* Chart triggering is changed to 'dblclick', which is to play when clearly targetted action.
* Several options only for Pie Chart are changed. Especially, slice information will be only shown when slice is selected. Those options will be settable by icon options.

######2016. 7. 13
* Calling renderIcon function is provisionally restricted in ClusterIcon.prototype.show which induces renderings charts each marker. For many markers, performance to browse map could be critically dropped (for example, rendering one frame takes 30 seconds.)

## Enhanced MarkerClusterer 0.0.3

* An element 'legendStyle' of opt_options to MarkerClusterer is added to set styles of legend box, which set several styles like position on Map, tag id, classes, and HTML CSS.

## Enhanced MarkerClusterer 0.0.2
