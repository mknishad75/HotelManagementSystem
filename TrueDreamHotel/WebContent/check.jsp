<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta name="viewport" content="width=device-width, initial-scale=1.0" /><base href="http://www.codejava.net/download-attachment" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" /><meta name="keywords" content="download" />
<meta name="description" content="Download Attachments in Articles: Source code Examples, Projects, Deployable WAR files, etc." />
<meta name="generator" content="Joomla! - Open Source Content Management" /><title>Download Attachment</title>
<link href="http://www.codejava.net/download-attachment?fid=329" rel="canonical" />
<link href="/templates/protostar/favicon.ico" rel="shortcut icon" type="image/vnd.microsoft.icon" />
<link rel="stylesheet" href="http://www.codejava.net/cache/plg_scriptmerge/d161ad681747c4c7c3fc0b2722fb26b7.css" type="text/css" /> 
<script src="http://www.codejava.net/cache/plg_scriptmerge/d5772c7c90f52670a7355d9ababb4bb9.js" type="text/javascript"></script> 
<script type="text/javascript">window.addEvent('load', function() {
				new JCaption('img.caption');
			});
jQuery(document).ready(function()
				{
					jQuery('.hasTooltip').tooltip({"container": false});
				});</script> <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
				<style type="text/css">h1,h2,h3,h4,h5,h6,.site-title{
        font-family: 'Open Sans', sans-serif;
      }</style><style type="text/css">.btn-primary
    {
      background: #0088cc;
    }
    .navbar-inner
    {
      -moz-box-shadow: 0 1px 3px rgba(0, 0, 0, .25), inset 0 -1px 0 rgba(0, 0, 0, .1), inset 0 30px 10px rgba(0, 0, 0, .2);
      -webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, .25), inset 0 -1px 0 rgba(0, 0, 0, .1), inset 0 30px 10px rgba(0, 0, 0, .2);
      box-shadow: 0 1px 3px rgba(0, 0, 0, .25), inset 0 -1px 0 rgba(0, 0, 0, .1), inset 0 30px 10px rgba(0, 0, 0, .2);
    }</style><!--[if lt IE 9]> <script src="/media/jui/js/html5.js"></script> <![endif]--><script src='/google_analytics_auto.js'></script></head>
    <body class="site com_content view-article no-layout no-task itemid-882"><!-- Body -->
    <div class="body"><div class="container"> <!-- Header --> 
    <header class="header" role="banner"><div class="header-inner clearfix"> <a class="brand pull-left" href="/"> 
    <img src="http://www.codejava.net/images/banner.png" alt="CodeJava" /> </a>
    <div class="header-search pull-right"><div class="bannergroup"><div class="banneritem"> <a
href="/component/banners/click/256" target="_blank"
title="Discover the CUBA platform"> <img
src="http://www.codejava.net/images/ads/CUBA-728-90-1.png"
alt="Discover the CUBA platform"
width ="728" height ="90" /> </a><div class="clr"></div></div></div></div></div> </header> <nav class="navigation" role="navigation"> 
<ul class="nav menu nav-pills">
<li class="item-101"><a href="/" >Home</a></li>
<li class="item-465 deeper parent"><a href="/java-core" >Java Core</a>
<ul class="nav-child unstyled small">
	<li class="item-499"><a href="/java-core/the-java-language" >The Java Language</a></li>
	<li class="item-856"><a href="/java-core/collections" >Generics &amp; Collections</a></li>
	<li class="item-859"><a href="/java-core/tools" >Tools</a></li>
	<li class="item-964"><a href="/java-core/exception" >Exception Handling</a></li>
	<li class="item-965"><a href="/java-core/concurrency" >Concurrency</a></li></ul></li>
	<li class="item-850 deeper parent"><a href="/java-se" >Java SE</a>
	<ul class="nav-child unstyled small">
		<li class="item-851"><a href="/java-se/swing" >Swing</a></li>
		<li class="item-852"><a href="/java-se/applet" >Applet</a></li>
		<li class="item-853"><a href="/java-se/file-io" >File I/O</a></li>
		<li class="item-854"><a href="/java-se/graphics" >2D/3D Graphics</a></li>
		<li class="item-855 deeper parent"><a href="/java-se/networking" >Networking</a>
		<ul class="nav-child unstyled small">
			<li class="item-857"><a href="/java-se/networking/ftp" >FTP</a></li></ul></li>
			<li class="item-858"><a href="/java-se/jdbc" >JDBC</a></li>
		</ul></li>
		<li class="item-840 deeper parent"><a href="/java-ee" >Java EE</a>
		<ul class="nav-child unstyled small">
			<li class="item-848"><a href="/java-ee/servlet" >Servlet</a></li>
			<li class="item-510"><a href="/java-ee/javamail" >JavaMail</a></li>
			<li class="item-512"><a href="/java-ee/web-services" >Web Services</a></li>
			<li class="item-849"><a href="/java-ee/jstl" >JSTL</a></li>
			<li class="item-513"><a href="/java-ee/jsp" >JavaServer Pages (JSP)</a></li>
		</ul></li>
		<li class="item-470 deeper parent"><a href="/frameworks" >Frameworks</a>
		<ul class="nav-child unstyled small">
			<li class="item-515"><a href="/frameworks/spring" >Spring</a></li>
			<li class="item-514"><a href="/frameworks/hibernate" >Hibernate</a></li>
			<li class="item-516"><a href="/frameworks/struts" >Struts</a></li></ul></li>
			<li class="item-471 deeper parent"><a href="/ides" >IDEs</a>
				<ul class="nav-child unstyled small">
					<li class="item-517"><a href="/ides/eclipse" >Eclipse</a></li>
					<li class="item-954"><a href="/ides/netbeans" >NetBeans</a></li>
				</ul></li>
			<li class="item-472 deeper parent"><a href="/servers" >Servers</a>
			<ul class="nav-child unstyled small"><li class="item-518"><a href="/servers/tomcat" >Tomcat</a></li></ul></li>
			<li class="item-473"><a href="/coding" >Coding</a></li><li class="item-498"><a href="/books" >Books</a></li>
			<li class="item-960"><a href="/videos" >Videos</a></li><div style="float: right; margin: 3px;">
<a href="feeds">
<img alt="RSS Feeds" title="Stay updated via RSS Feeds" src="data:image/png;" style="vertical-align:middle"/></a>&nbsp;
<a href="http://www.facebook.com/codejava" target="_blank"><img alt="Facebook" title="Follow us on Facebook" src="" style="vertical-align:middle"/></a>&nbsp;	
<a href="https://twitter.com/codejavadotnet" target="_blank"><img alt="Twitter" title="Follow us on Twitter" src="" style="vertical-align:middle"/></a>&nbsp;
<a href="https://plus.google.com/+CodejavaNet" target="_blank"><img alt="Google Plus" title="Follow us on Google+" src="" style="vertical-align:middle"/></a>&nbsp;
<a href="https://delicious.com/codejavadotnet" target="_blank"><img alt="Google Plus" title="Follow us on Delicious" src="" style="vertical-align:middle"/></a>
</div>
</ul>

<ul class="breadcrumb">
	<li class="active"><span class="divider icon-location hasTooltip" title="You are here: "></span></li>
	<li><a href="/" class="pathway">Home</a><span class="divider"><img src="/media/system/images/arrow.png" alt="" /></span></li>
	<li><span>Download Attachment</span></li>			
	<div class="moduletable_search" style ="float:right">
		<div class="search_search">
			<form action="http://www.codejava.net/search" method="post" class="form-inline">
				<label for="mod-search-searchword" class="element-invisible">Search...</label>
					<input name="searchword" id="mod-search-searchword" max-length="128" class="inputbox search-query" type="text" size="20" value="Search..." onblur="if (this.value=='') this.value='Search...';" onfocus="if (this.value=='Search...') this.value='';"> 
					<input type="image" value="search" class="button" src="" onclick="this.form.searchword.focus();">   
					<input type="hidden" name="task" value="search">
			</form>
		</div>
		</div>
	</ul>

 </nav><div class="row-fluid"><style>.moduletable_search{
            margin-right: 0!important;
          }
          #sidebar{
            width: 21%!important;
            margin-left: 5px!important;
          }
          #content{
            margin-left: 25px!important;
          }</style><!-- Begin Sidebar --><div id="sidebar" class="span3"><div class="sidebar-nav"><div class="moduletable"><div class="bannergroup"><div class="banneritem"> <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script> <!-- CJ Download Link Ads --> <ins class="adsbygoogle"
style="display:inline-block;width:200px;height:90px"
data-ad-client="ca-pub-8129714482020982"
data-ad-slot="9618482152"></ins> <script>(adsbygoogle = window.adsbygoogle || []).push({});</script> <div class="clr"></div></div><div class="banneritem"> <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script> <!-- CJ Download Text Ads --> <ins class="adsbygoogle"
style="display:inline-block;width:220px;height:240px"
data-ad-client="ca-pub-8129714482020982"
data-ad-slot="1955614559"></ins> <script>(adsbygoogle = window.adsbygoogle || []).push({});</script> <div class="clr"></div></div></div></div></div></div> <!-- End Sidebar --> <main id="content" role="main" class="span9"> <!-- Begin Content --><div id="system-message-container"><div id="system-message"></div></div><div class="item-page"><h1 style="text-align: center;">&nbsp;</h1><table style="width: 100%;" border="0"><tbody><tr><td width="50%"><p style="text-align: center;"><div class="moduletable"><style>#download {
        font-size: 20px;
        font-weight: bold; 
        text-align: center;
    }
    #download span {
        font-size: 30px;
    }</style><div id="file_infomation"><ul><li>File Name: <b><img src="/media/com_attachments/images/file_icons/zip.gif" alt="" /> SpringMvcHibernateFileUpload.zip</b></li><li>File Size: <b>37,301 KB</b></li><li>File Description: <b>Eclipse-Maven Project</b></li><li>Article: <b>Upload Files to Database with Spring MVC and Hibernate</b></li></ul><div id = "download">Your Download will Start <br>Automatically in<br> <span>30</span> seconds.</div></div> <script>(function($) {
        $(document).ready(function() {
            var fileId = "329";
            if (fileId !== null) {
                var sec = $('#download span').text();
                var timer = setInterval(function() {
                    $('#download span').text(--sec);
                    if (sec === 0) {
                        $('#download').html('Your file is being downloaded.<br>');
                        $('#download').append(' If your download did not start automatically,<br> \n\
                                <a href = "index.php?option=com_attachments&task=download&id='
                                + parseInt(fileId) + '">Click Here</a>');
                        clearInterval(timer);
                        window.location.href = 'index.php?option=com_attachments&task=download&id=' + fileId;
                    }
                }, 1000);
            } else {
                $('#file_infomation').html("<h1 id='download'>Sorry, the file could not be found!</h1>");
            }
        });
    })(jQuery);</script> </div></p></td><td valign="top"> &nbsp;<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script> <!-- CodeJava Download Page Right Side --> <ins class="adsbygoogle"
style="display:block"
data-ad-client="ca-pub-7423378050781349"
data-ad-slot="6666980519"
data-ad-format="auto"></ins> <script>(adsbygoogle = window.adsbygoogle || []).push({});</script> </td></tr></tbody></table>
<div class="attachmentsContainer"><div class="attachmentsList" id="attachmentsList_com_content_default_520"></div>
</div></div> <!-- End Content --> </main></div></div></div> <!-- Footer --> <footer class="footer" role="contentinfo">
<div class="container"> <p> <a href="http://javatipseveryday.com" target="_blank">
<font color="yellow"><b>JavaTipsEveryDay</b></font></a>&nbsp; 
<a href="/site/about">About</a>&nbsp; <a href="/advertise">Advertise</a>&nbsp; 
<a href="/site/contribute">Contribute</a>&nbsp; <a href="/contactus">Contact</a>&nbsp; 
<a href="/site/terms">Terms of Use</a>&nbsp; <a href="/site/privacy-policy">Privacy Policy</a>&nbsp; 
<a href="/site/site-map">Site Map</a>&nbsp; <a href="http://newsletter.codejava.net">Newsletter</a>&nbsp; 
<a href="/feeds"><img alt="RSS Feeds"  title="Stay updated via RSS Feeds" src="" style="vertical-align:middle"/></a>&nbsp; 
<a href="http://www.facebook.com/codejava" target="_blank">
	<img alt="Facebook" title="Follow us on Facebook" src="" style="vertical-align:middle"/></a>&nbsp; 
<a href="https://twitter.com/codejavadotnet" target="_blank">
	<img alt="Twitter" title="Follow us on Twitter" src="" style="vertical-align:middle"/></a>&nbsp; 
<a href="https://plus.google.com/+CodejavaNet" target="_blank">
	<img alt="Google Plus" title="Follow us on Google+" src="" style="vertical-align:middle"/></a>&nbsp; 
<a href="https://delicious.com/codejavadotnet" target="_blank">
	<img alt="Google Plus" title="Follow us on Delicious" src="" style="vertical-align:middle"/></a>&nbsp; <br> 
	<font size="-3">Copyright &copy; 2012 - 2017 by www.codejava.net</font></p></div> </footer> 
<script type="text/javascript">jQuery(document).ready(function($){
      $(function() {

      // add dropdown to the list element that contains first dropdown list
      $('ul.nav.menu > li.parent').addClass('dropdown');
      // add dropdown-toggle, data-toggle and disabled to the main dropdown <a> (allows it to work correctly on the ipad, requiring a rollover to show the menu
      $('ul.nav.menu > li.parent > a').addClass('dropdown-toggle').attr('data-toggle', 'dropdown').attr('disabled', '');
      // adds dropdown-menu to the first dropdown (basically the whole first menu)
      $('ul.nav.menu > li.parent > ul.nav-child').addClass('dropdown-menu');
      // add dropdown-submenu to the list element that contains the submenu (this adds the arrow to the element)
      $('ul.nav-child > li.parent').addClass('dropdown-submenu');
      // add dropdown menu to the submenu ul (basically the whole other menu) and style it with nav-child-sub
      $('ul.nav-child > li.parent > ul.nav-child').addClass('dropdown-menu').removeClass('nav-child').addClass('nav-child-sub');
      // var anchor_id = window.location.hash;
      // anchor_id = '#cccomment-' + anchor_id.match(/[0-9][0-9]/img).toString();
      // $(anchor_id).on('create', function(){
      //   alert("create");
      // });
      // if (anchor_id != "") {
      //   //var new_position = $('#cccomment-77').offset();
      //   //console.log(new_position);
      //   //window.scrollTo(new_position.left,new_position.top);
      // }
    })
   });</script> <noscript><strong>JavaScript is currently disabled.</strong>Please enable it for a better experience of <a href="http://2glux.com/projects/jumi">Jumi</a>.</noscript></body>
</html>