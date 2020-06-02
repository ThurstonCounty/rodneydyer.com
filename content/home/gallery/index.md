+++
# Gallery section using the Blank widget and Gallery element (shortcode).
widget = "blank"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = true  # This file represents a page section.
active = false  # Activate this widget? true/false
weight = 66  # Order that this section will appear.

title = "Photos"
subtitle = ""
+++


<script>
$(document).ready(function() {
       $.getJSON("http://api.flickr.com/services/feeds/photos_public.gne?id=38893877@N00&format=json&jsoncallback=?", function(data) {
               var target = "#latest-flickr-images ul"; // Where is it going?
               for (i = 0; i <= 9; i = i + 1) { // Loop through the 10 most recent, [0-9]
                       var pic = data.items[i];
                       var liNumber = i + 1; // Add class to each LI (1-10)
                       $(target).append("<li class='flickr-image no-" + liNumber + "'><a title='" + pic.title + "' href='" + pic.link + "'><img src='" + pic.media.m + "' /></a></li>");
               }
       });
});
</script>

