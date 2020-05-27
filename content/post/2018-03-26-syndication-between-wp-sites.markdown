---
author: Rodney
date: 2018-03-26 16:37:09+00:00
draft: false
title: Syndication Between WP Sites
type: post
url: /2018/03/26/syndication-between-wp-sites/
categories:
- Dyerlab
- IndieWeb
- WP
tags:
- Syndication
- Teaching
---
Syndication is a process whereby you can post something to your site and other locations will detect that you have posted something and then pull in the content to their site, making it look like you wrote it and posted it on their site. Is that clear? Here is my use-case:

<!-- more -->

  1. I post everything I do to [https://rodneydyer.com](https://rodneydyer.com).  2. For things that I want to be shown on my work page, I select a particular Category or Tag for the post.  These can be for my laboratory site ([https://dyerlab.org](https://dyerlab.org)) or for individual classes I teach (e.g., [https://rampages.us/envs643](https://rampages.us/envs643)).  3. The lab or class sites sit there and when something at [rodneydyer.com](https://rodneydyer.com) is presented with the Category and/or Tag, those sites pull the content of the post in and format it to look just like it was written on that particular site.

This is particularly interesting for teaching and other uses. If a class uses WordPress for its webpage, students can provide content for that class page by publishing on their own site. This allows each student to create a "Digital Portfolio" of work that they maintain (see my thing on [Content Silos](http://rodneydyer.com//2018/03/25/content-silos/) for more on this).  This is also of interest because as a professor, certain content may be relevant to more than one class (e.g., this particular post on my personal site is syndicated to many other locales as necessary).

## FeedWordPress Plugin

I'm going to use the FeedWordPress Plugin for this because it was the one that my university uses and I want to standardize the approaches.

To install it, go to _Plugins->Add New_ and search for it. Install & Activate.  I'm going to use a new Category, named _Dyerlab_, to trigger the syndication. So I add a new one.

![](http://rodneydyer.com//wp-content/uploads/2018/03/Screen-Shot-2018-03-26-at-10.29.53-AM.png)
A new top-level category to handle the syndication.

## Configuration

OK, now on my personal page, I have a category "Dyerlab" that I will attach to things that I want to show up on my Dyerlab Wordpress site.  You can use other Categories to syndicate materials relevant to WordPress or any other use.  There is no limit to the number of categories you can use. To make the connection, we need to get the category feed address. Unless you are changing something drastic it has the following structure:
    
    https://yoursiteurl/category/categoryname

which in my case is:
    
    https://rodneydyer.com/category/Dyerlab/

You can try it out and you should see (if you have any posts with that category published) a list of just those posts.  If so, _perfect_﻿.  If not, then you either have not posted anything with that category or you have not set up the category correctly.  Go back and check.

Now, I need to set up the other site, in this case my laboratory site, to monitor my personal site, and any time something is posted, grab it.  Go open your other site and make sure the plugin is installed.  This site will "Pull" the posts from the original site.  Click on Syndication in the bottom left panel and you will open the settings page. 

![](http://rodneydyer.com//wp-content/uploads/2018/03/Screen-Shot-2018-03-26-at-12.09.39-PM.png)
The syndication settings page.

In the "New Source" box, paste in the category address from your other site.  In my case I pasted in 
    
    https://rodneydyer.com/category/Dyerlab

You will be taken to a verification screen where you can verify that things are working properly and select the correct feed type (typically there is  /feed/ tacked onto the end of the URL). There is a 'verify' link that you can use to make sure it is providing good input.  Make sure you have the right category, you probably do not want everything from your site being mirrored on the lab or class site! After you select which kind of feed you want, you will be redirected back to the list, as above, but with your new feed in it.

![](http://rodneydyer.com//wp-content/uploads/2018/03/Screen-Shot-2018-03-26-at-12.07.39-PM.png)
Success

Now, when I write something (like this post) on my site, it will automagically show up on my laboratory site as well. The Cool thing is that wherever it is displayed, it is reformatted to look as if it belonged at that location.  Here is this post on my personal site.

![](http://rodneydyer.com//wp-content/uploads/2018/03/Screen-Shot-2018-03-26-at-12.34.08-PM.png)
and on my laboratory site

![](http://rodneydyer.com//wp-content/uploads/2018/03/Screen-Shot-2018-03-26-at-12.52.30-PM.png)
are identical in content, though are individually styles.  Pretty cool!

Featured image bytes [amattox mattox](https://www.flickr.com/photos/amattox/) (CC BY-NC 2.0).

