<%@ page import="com.springhibernate.integration.model.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0104)http://livedemo00.template-help.com/zencart_36809/index.php?main_page=product_info&cPath=3&products_id=9 -->
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Tennis Store</title>

    <meta http-equiv="imagetoolbar" content="no">
    <base href="../../images/">

    <link rel="stylesheet" type="text/css" href="./stylesheet.css">
    <link rel="stylesheet" type="text/css" href="./stylesheet_boxes.css">
    <link rel="stylesheet" type="text/css" href="./stylesheet_css_buttons.css">
    <link rel="stylesheet" type="text/css" href="./stylesheet_ezpages_footer_columns.css">
    <link rel="stylesheet" type="text/css" href="./stylesheet_header_menu.css">
    <link rel="stylesheet" type="text/css" href="./stylesheet_lightbox-0.5.css">
    <link rel="stylesheet" type="text/css" href="./stylesheet_main.css">
    <link rel="stylesheet" type="text/css" href="./stylesheet_social_media_icons.css">
    <link rel="stylesheet" type="text/css" href="./stylesheet_tm.css">
    <link rel="stylesheet" type="text/css" media="print" href="./print_stylesheet.css">
    <script src="./saved_resource" async=""></script>
    <script type="text/javascript" src="./jscript_jquery-1.6.4.js"></script>
    <script type="text/javascript" src="./jscript_xdropdown_menu.js"></script>
    <script type="text/javascript" src="./jscript_xeasyTooltip.js"></script>
    <script type="text/javascript" src="./jscript_xjquery.easing.1.3.js"></script>
    <script type="text/javascript" src="./jscript_xjquery.insetBorderEffect.js"></script>
    <script type="text/javascript" src="./jscript_xjquery.jqtransform.js"></script>
    <script type="text/javascript" src="./jscript_xjquery.lightbox-0.5.js"></script>
    <script type="text/javascript" src="./jscript_zhover-image.js"></script>
    <script type="text/javascript" src="./jscript_zjcarousellite.js"></script>
    <script type="text/javascript" src="./jscript_zjquery.faded.js"></script>
<script language="javascript" type="text/javascript"><!--
function popupWindow(url) {
  window.open(url,'popupWindow','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=yes,copyhistory=no,width=100,height=100,screenX=150,screenY=150,top=150,left=150')
}
function popupWindowPrice(url) {
  window.open(url,'popupWindow','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,copyhistory=no,width=600,height=400,screenX=150,screenY=150,top=150,left=150')
}
//--></script>

<!--[if lt IE 7]>
  <div style=' clear: both; text-align:center; position: relative;'>
    <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
      <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
   </a>
 </div>
<![endif]-->
<style type="text/css">
    div.Outer {
        width: 634px;
        position: relative;
        clear: both;
    }

    div.InnerLeft {
        width: 50%;
        position: relative;
        float: left;
    }

    div.InnerRight {
        width: 49%;
        position: relative;
        float: right;
    }
</style>

<style type="text/css">
	.class{ behavior:url(includes/templates/theme565/PIE.php)}
</style>
<script type="text/javascript" src="./plusone.js" gapi_processed="true"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("a.tooltips").easyTooltip();
	});
</script>
<script type="text/javascript">
$(function(){
   $('.currencies form').jqTransform({imgPath:'jqtransformplugin/img/'});
});
</script>
<script type="text/javascript">
		$(function(){
		$("#faded").faded({
		speed: 1500,
		bigtarget: false,
		autoplay: 5000,
		autorestart: false,
		autopagination:false,
		crossfade:true
		});
	});
</script>
<script type="text/javascript">
	$(function() {
		 $(".spec").jCarouselLite({
			  btnNext: ".next",
			  btnPrev: ".prev"
		 });
	});
</script>
<script type="text/javascript">
	$(function(){
	$('.centerBoxWrapper .centeredContent').eq(3).addClass('last');
	$('.centerBoxWrapper .centeredContent').eq(7).addClass('last');
	});
</script>
<script type="text/javascript">
	$(function(){
	$('#featuredProducts .centeredContent').eq(3).addClass('last');
	$('#featuredProducts .centeredContent').eq(7).addClass('last');
	$('#whatsNew .centeredContent').eq(3).addClass('last');
	$('#whatsNew .centeredContent').eq(7).addClass('last');
	$('#specialsDefault .centeredContent').eq(3).addClass('last');
	$('#specialsDefault .centeredContent').eq(7).addClass('last');
	$('#specialsListing .centeredContent').eq(3).addClass('last');
	$('#specialsListing .centeredContent').eq(7).addClass('last');
	$('#specials .sideBoxContent').eq(0).addClass('one');
	$('#specials .sideBoxContent').eq(4).addClass('last');
	});
</script>
<script type="text/javascript">
    $(window).load(function() {
      $(".product-col .img img, .sideBoxContent .img img").insetBorder({
			// Inset Border Effect init
			speed : 250, // 1000 = 1 second, default 250
			borderColor : "#000000", // Default white (#ffffff)
			inset : 1, // Border width, default 10px
			borderType : "solid", // Border type, e.g. dashed
			outerClass : "ibe_outer_nofloat", // Class name of outer wrap
			innerClass : "ibe_inner" // Class name of inner border
      });
    });
  </script>
</head>



<body id="productinfoBody">

<!-- ========== IMAGE BORDER TOP ========== -->

<div class="extra-main">
	<div class="main-width">

<!-- ====================================== -->





<!-- ========== HEADER ========== -->

	<div id="header">
		<div class="wrapper box1">
			<div class="menu">
				<!-- ========== MENU ========== -->
													<div id="navEZPagesTop">
  <ul>

                <li class="  first">
                    <a href="../tennis/template">
						<span class="corner"></span>
                        <span>
                            <span>Home</span>
                        </span>
                    </a>
                </li>

                <li class="  ">
                    <a href="javascript:">
						<span class="corner"></span>
                        <span>
                            <span>New products</span>
                        </span>
                    </a>
                </li>

                <li class="  ">
                    <a href="javascript:">
						<span class="corner"></span>
                        <span>
                            <span>Specials</span>
                        </span>
                    </a>
                </li>

                <li class="  ">
                    <a href="javascript:">
						<span class="corner"></span>
                        <span>
                            <span>All products</span>
                        </span>
                    </a>
                </li>

                <li class="  ">
                    <a href="javascript:">
						<span class="corner"></span>
                        <span>
                            <span>Reviews</span>
                        </span>
                    </a>
                </li>

                <li class="  ">
                    <a href="javascript:">
						<span class="corner"></span>
                        <span>
                            <span>Contacts</span>
                        </span>
                    </a>
                </li>

                <li class=" last ">
                    <a href="javascript:">
						<span class="corner"></span>
                        <span>
                            <span>FAQs</span>
                        </span>
                    </a>
                </li>

  </ul>
</div>
										<!-- ========================== -->
			</div>
			<div class="lang">
				<!-- ========== LANGUAGES ========== -->
					<a href="http://livedemo00.template-help.com/zencart_36809/index.php?main_page=product_info&cPath=3&products_id=9&language=en"><img src="./icon.gif" alt="English" title=" English " width="21" height="18" style="vertical-align:middle;"></a>				<!-- =============================== -->
			</div>
			<div class="currencies">
				<!-- ========== CURRENCIES ========= -->
					<form name="currencies" action="http://livedemo00.template-help.com/zencart_36809/index.php?main_page=index" method="get" class="jqtransformdone">						<div>
							<span class="label">Currencies: &nbsp;</span>

														<div class="jqTransformSelectWrapper" style="z-index: 10; width: 122px; "><div><span style="width: 122px; ">US Dollar</span><a href="http://livedemo00.template-help.com/zencart_36809/#" class="jqTransformSelectOpen" style=""></a></div><ul style="width: 120px; height: 65px; overflow-x: hidden; overflow-y: hidden; display: none; visibility: visible; "><li><a href="http://livedemo00.template-help.com/zencart_36809/#" index="0" class="selected">US Dollar</a></li><li><a href="http://livedemo00.template-help.com/zencart_36809/#" index="1">Euro</a></li><li><a href="http://livedemo00.template-help.com/zencart_36809/#" index="2">GB Pound</a></li><li><a href="http://livedemo00.template-help.com/zencart_36809/#" index="3">Canadian Dollar</a></li><li><a href="http://livedemo00.template-help.com/zencart_36809/#" index="4">Australian Dollar</a></li></ul><select name="currency" class="select jqTransformHidden" onchange="this.form.submit();" style="visibility: visible; ">
  <option value="USD" selected="selected">US Dollar</option>
  <option value="EUR">Euro</option>
  <option value="GBP">GB Pound</option>
  <option value="CAD">Canadian Dollar</option>
  <option value="AUD">Australian Dollar</option>
</select></div>
<input type="hidden" name="main_page" value="product_info"><input type="hidden" name="cPath" value="3"><input type="hidden" name="products_id" value="9">						</div>
					</form>
			</div>
		</div>
		<div class="wrapper box2">
			<div class="logo">
				<!-- ========== LOGO ========== -->
                <a href="../tennis/template"><img src="./logo.jpg" alt="" width="230" height="30"></a>
				<!-- ========================== -->
			</div>
			<div class="cart">
				<!-- ========== SHOPPING CART ========== -->
                <span class="cart1">Now in your cart </span><a href="http://livedemo00.template-help.com/zencart_36809/index.php?main_page=shopping_cart">0 items</a>
				<!-- =================================== -->
			</div>
			<div class="right-head">
				<div class="navigation">
					<!-- ========== NAVIGATION LINKS ========== -->
                    <a href="http://livedemo00.template-help.com/zencart_36809/index.php?main_page=login">Log In</a>
                    <!-- ====================================== -->
				</div>
				<div class="clear"></div>
				<div class="search">
					<!-- ========== SEARCH ========== -->
                    <form name="quick_find_header" action="../tennis/testSearch/search" method="get">
                        <input type="text" name="keyword" value="Search" class="input1" onblur="if(this.value==&#39;&#39;) this.value=&#39;Search&#39;" onfocus="if(this.value ==&#39;Search&#39; ) this.value=&#39;&#39;">
                        <input type="image" src="./search.gif" alt="Search" title=" Search " class="input2">
                    </form>
					<!-- ============================ -->
				</div>
			</div>
		</div>
		<div class="horizontal-categories">
			<!--bof-drop down menu display-->
				<!-- menu area -->

        <div id="dropMenuWrapper">
            <div id="dropMenu">
                <ul class="level1">
                    <li class="submenu"><a href="javascript:">Racquets</a>
                        <ul class="level2">
                            <c:forEach var="category" items="${categories}">
                              <li>
                                <a href="../tennis/viewCategory/${category.id}"><c:out value="${category.name}"/></a>
                              </li>
                            </c:forEach>
                        </ul>
                    </li>

                </ul>
            </div>
        </div>
<div class="clearBoth"></div>
			<!--eof-drop down menu display-->
		</div>
	</div>



<!-- ========== CATEGORIES TABS ========= -->

<!-- ============================ -->

<table border="0" cellspacing="0" cellpadding="0" width="100%" id="contentMainWrapper">
	<tbody><tr>
            <td id="column-center" valign="top">
                <!-- BOF- BANNER #3 display -->
                <!-- EOF- BANNER #3 display -->

                <div class="column-center-padding">
                <!--content_center-->
                        <!-- bof breadcrumb -->
                        <!-- eof breadcrumb -->
                        <!-- bof upload alerts -->
                        <!-- eof upload alerts -->
<div class="centerColumn" id="productGeneral">

<!--bof Product Name-->
<h1 id="productName" class="productGeneral">${product.category.name}</h1>
<!--eof Product Name-->

<div class="tie">
	<div class="tie-indent">


<div class="page-content">

<div class="wrapper">

<!--bof Form start-->
<form name="cart_quantity" action="http://livedemo00.template-help.com/zencart_36809/index.php?main_page=product_info&cPath=3&products_id=9&action=add_product" method="post" enctype="multipart/form-data">
<!--eof Form start-->


<!--bof Category Icon -->


<!--bof Prev/Next top position -->
<!--eof Prev/Next top position-->

<!--bof Main Product Image -->



<div id="productMainImage" class="centeredContent back" >
    <c:forEach var="image" items="${product.images}" begin="0" end="0">
	    <span class="image"><a href="${image.url}"><img src="${image.url}" alt="${product.name}" title=" ${product.name} " width="134" height="134"><span class="zoom"></span></a></span>
    </c:forEach>

</div>
<!--eof Main Product Image-->
	<!--bof free ship icon  -->
		<!--eof free ship icon  -->
	<div class="name-type bot-border">${product.name}</div>
	<!--bof Product details list  -->
    <ul>
	  <li>999 Units in Stock</li>
	</ul>
    <!--eof Product details list -->

	<!--bof Product Price block -->
	<h2 id="productPrices" class="productGeneral">Price: <fmt:formatNumber value="${product.price}" type="currency" currencySymbol="$"/></h2>
	<h2 id="productOurPrices" class="productGeneral">Our Price: <fmt:formatNumber type="CURRENCY" value="${(product.price*1.1)}" currencySymbol="$"/></h2>
	<!--eof Product Price block -->

	<!--bof Add to Cart Box -->
    <div id="cartAdd">
		<strong class="fleft text2">Add to Cart: &nbsp; &nbsp;<input type="text" class="qty" name="cart_quantity" value="1" maxlength="6" size="8"><input type="hidden" name="products_id" value="9"></strong>&nbsp; &nbsp; &nbsp; <span class="buttonRow"><input type="image" src="./button_in_cart.gif" alt="Add to Cart" title=" Add to Cart "></span>		 </div>
	  		<!--eof Add to Cart Box-->
</form></div>

 <div id="productAdditionalImages">
	<ul id="gallery">

    <c:forEach var="image" items="${product.images}">
        <div class="centeredContent back" style="width:33%;">
          <a href="${image.url}"><img src="${image.url}" alt="${product.name}" title=" ${product.name} " width="40" height="48"/><br><span class="lupa"></span></a>
        </div>
    </c:forEach>
    <br class="clearBoth">

  </ul>
</div>


<div>
     <!--bof Product description -->
    <div id="productDescription" class="" style="splay: inline-block;"><strong>Details: </strong></div>
    <!--eof Product description -->

    <div class="Outer">
        <div class="InnerLeft">
            <% Product product = (Product) pageContext.getAttribute("product", PageContext.REQUEST_SCOPE);
             String newSpecs = product.getSpecs().replace("�"," - "); %>

            <c:out value="<%= newSpecs %>" escapeXml="false"/>

        </div>

        <div class="InnerRight">
            <%--Originals - <c:out value="${fn:length(originalPrices)}"/>--%>
            <%--<c:forEach var="priceComparison" items="${originalPrices}">--%>
                <%--<div><a href="${priceComparison.url}">${priceComparison.reseller}</a> - $${priceComparison.price}</div>--%>
            <%--</c:forEach>--%>

            Final - <c:out value="${fn:length(lowestPrices)}"/>
            <c:forEach var="priceComparison" items="${lowestPrices}">
                <div><a href="${priceComparison.url}">${priceComparison.reseller}</a> - <fmt:formatNumber value="${priceComparison.price}" type="currency" currencySymbol="$"/></div>
            </c:forEach>
        </div>

    </div>

</div>





<!--bof Attributes Module -->
<!--eof Attributes Module -->

<!--bof Quantity Discounts table -->
<!--eof Quantity Discounts table -->

<!--bof Additional Product Images -->
<!--eof Additional Product Images -->

<div class="wrapper bot-border">



<!--bof Prev/Next bottom position -->
<div class="navNextPrevWrapper centeredContent back">
<span class="navNextPrevCounter">Product 1/4 &nbsp;</span>
<div class="navNextPrevList"><a href="../tennis/viewProduct/${(product.id - 1)}"><img src="./button_prev.gif" alt="Previous" title=" Previous " width="56" height="33"></a></div>

<div class="navNextPrevList"><a href="../tennis/viewCategory/${product.category.id}"><img src="./button_return_to_product_list.gif" alt="Return to the Product List" title=" Return to the Product List " width="72" height="33"></a></div>

<div class="navNextPrevList"><a href="../tennis/viewProduct/${(product.id + 1)}"><img src="./button_next.gif" alt="Next" title=" Next " width="56" height="33"></a></div>
</div><!--eof Prev/Next bottom position -->


<div class="prod-buttons">
<!--bof Tell a Friend button -->
<div id="productTellFriendLink" class="buttonRow forward"><a href="javascript:"><img src="./button_TellAFriend.gif" alt="Tell a Friend" title=" Tell a Friend " width="188" height="33"></a></div>
<!--eof Tell a Friend button -->

<!--bof Reviews button and count-->
<div id="productReviewLink" class="buttonRow forward"><a href="javascript:"><img src="./button_write_review.gif" alt="Write Review" title=" Write Review " width="130" height="33"></a>&nbsp; &nbsp;</div>

<!--eof Reviews button and count -->
</div>

</div>

<div class="text2">

<p class="reviewCount"><strong>Current Reviews: 0</strong></p>

<!--bof Product date added/available-->
      <p id="productDateAdded" class="productGeneral centeredContent">This product was added to our catalog on Thursday 09 September, 2010.</p>
<!--eof Product date added/available -->

<!--bof Product URL -->
<!--eof Product URL -->

</div>

<!--bof also purchased products module-->

<!--eof also purchased products module-->

<!--bof Form close-->

<!--bof Form close-->




<div class="wrapper" id="social">

	<!-- bof Social Media Icons -->
	<div id="socialIcons" class="fright"><div class="googleplus fleft"><div id="___plusone_0" style="height: 24px; width: 106px; display: inline-block; text-indent: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; float: none; line-height: normal; font-size: 1px; vertical-align: baseline; background-position: initial initial; background-repeat: initial initial; "><iframe allowtransparency="true" frameborder="0" hspace="0" id="I1_1326777950849" marginheight="0" marginwidth="0" name="I1_1326777950849" scrolling="no" src="./fastbutton.htm" style="width: 106px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; height: 24px; position: static; left: 0px; top: 0px; visibility: visible; " tabindex="-1" vspace="0" width="100%" title="+1"></iframe></div></div><a class="facebook tooltips" href="http://www.facebook.com/sharer.php?u=http%3A%2F%2Flivedemo00.template-help.com%2Fzencart_36809%2Findex.php%3Fmain_page%3Dproduct_info%26amp%3BcPath%3D3%26amp%3Bproducts_id%3D9&t=2xist%20Contrast%20Contour%20Pouch" rel="external nofollow" target="_blank" title="Share this on Facebook"><img src="./facebook.png" alt="" width="24" height="24" class="socialImage"></a>&nbsp;<a class="twitter tooltips" href="http://twitthis.com/twit?url=http%3A%2F%2Flivedemo00.template-help.com%2Fzencart_36809%2Findex.php%3Fmain_page%3Dproduct_info%26amp%3BcPath%3D3%26amp%3Bproducts_id%3D9&title=2xist%20Contrast%20Contour%20Pouch" rel="external nofollow" target="_blank" title="Tweet this"><img src="./twitter.png" alt="" width="24" height="24" class="socialImage"></a>&nbsp;<a class="delicious tooltips" href="http://del.icio.us/post?url=http%3A%2F%2Flivedemo00.template-help.com%2Fzencart_36809%2Findex.php%3Fmain_page%3Dproduct_info%26amp%3BcPath%3D3%26amp%3Bproducts_id%3D9&title=2xist%20Contrast%20Contour%20Pouch" rel="external nofollow" target="_blank" title="Add this to Delicious"><img src="./delicious.png" alt="" width="24" height="24" class="socialImage"></a>&nbsp;<a class="digg tooltips" href="http://digg.com/submit?phase=2&url=http%3A%2F%2Flivedemo00.template-help.com%2Fzencart_36809%2Findex.php%3Fmain_page%3Dproduct_info%26amp%3BcPath%3D3%26amp%3Bproducts_id%3D9" rel="external nofollow" target="_blank" title="Digg this"><img src="./digg.png" alt="" width="24" height="24" class="socialImage"></a>&nbsp;<a class="stumbleupon tooltips" href="http://www.stumbleupon.com/submit?url=http%3A%2F%2Flivedemo00.template-help.com%2Fzencart_36809%2Findex.php%3Fmain_page%3Dproduct_info%26amp%3BcPath%3D3%26amp%3Bproducts_id%3D9&title=2xist%20Contrast%20Contour%20Pouch" rel="external nofollow" target="_blank" title="Stumble this"><img src="./stumbleupon.png" alt="" width="24" height="24" class="socialImage"></a>&nbsp;<a class="technorati tooltips" href="http://technorati.com/faves?add=http%3A%2F%2Flivedemo00.template-help.com%2Fzencart_36809%2Findex.php%3Fmain_page%3Dproduct_info%26amp%3BcPath%3D3%26amp%3Bproducts_id%3D9" rel="external nofollow" target="_blank" title="Fave this"><img src="./technorati.png" alt="" width="24" height="24" class="socialImage"></a>&nbsp;<a class="reddit tooltips" href="http://reddit.com/submit?url=http%3A%2F%2Flivedemo00.template-help.com%2Fzencart_36809%2Findex.php%3Fmain_page%3Dproduct_info%26amp%3BcPath%3D3%26amp%3Bproducts_id%3D9&title=2xist%20Contrast%20Contour%20Pouch" rel="external nofollow" target="_blank" title="Bookmark and tag this"><img src="./reddit.png" alt="" width="24" height="24" class="socialImage"></a>&nbsp;</div>	<!-- eof Social Media Icons -->

</div>

</div>

</div>
</div>

</div>

                	<div class="clear"></div>

                    <!--eof content_center-->
										 <div class="bottom-line"></div>
					                </div>


                <!-- BOF- BANNER #4 display -->
                                <!-- EOF- BANNER #4 display -->

            </td>


            <td id="column_right" style="width:218px">

                <div style="width:218px;">
                                        <!--// bof: information //-->
        <div class="box " id="information" style="width:218px;">



											<div class="box-head">
												Information											</div>

											<div class="box-body">
												<div id="informationContent" class="sideBoxContent">
<ul style="margin: 0; padding: 0; list-style-type: none;">
<li><a href="javascript:">Shipping &amp; Returns</a></li>
<li><a href="javascript:">Privacy Notice</a></li>
<li><a href="javascript:">Conditions of Use</a></li>
<li><a href="javascript:">Contact Us</a></li>
<li><a href="javascript:">Site Map</a></li>
<li><a href="javascript:">Gift Certificate FAQ</a></li>
<li><a href="javascript:">Discount Coupons</a></li>
<li><a href="javascript:">Newsletter Unsubscribe</a></li>
</ul>
</div>
</div>



        </div>
<!--// eof: information //-->

                </div>

            </td>


    </tr>
</tbody></table>



<!-- ========== FOOTER ========== -->


	<div id="footer" class="wrapper">
		<div class="fleft">
			<div class="footer-menu">
				<div id="navSupp">

<div class="ezpagesFooterCol col1" style="width: 14%">
<ul>
  <li><a href="../tennis/template">Home</a></li>
</ul>
</div>
<div class="ezpagesFooterCol col2" style="width: 14%">
<ul>
  <li><a href="javascript:">New products</a></li>
</ul>
</div>
<div class="ezpagesFooterCol col3" style="width: 14%">
<ul>
  <li><a href="javascript:">Specials</a></li>
</ul>
</div>
<div class="ezpagesFooterCol col4" style="width: 14%">
<ul>
  <li><a href="javascript:">All products</a></li>
</ul>
</div>
<div class="ezpagesFooterCol col5" style="width: 14%">
<ul>
  <li><a href="javascript:">Reviews</a></li>
</ul>
</div>
<div class="ezpagesFooterCol col6" style="width: 14%">
<ul>
  <li><a href="javascript:">Contacts</a></li>
</ul>
</div>
<div class="ezpagesFooterCol col7" style="width: 14%">
<ul>
  <li><a href="javascript:">FAQs</a></li>
</ul>
</div><br class="clearBoth">								</div>
			</div>
			<%--<div class="copyright">--%>
					<%--Copyright © 2012 <a href="http://livedemo00.template-help.com/zencart_36809/index.php?main_page=index">Underwear Store</a>. Powered by <a href="http://www.zen-cart.com/" target="_blank">Zen Cart</a> <a href="http://livedemo00.template-help.com/zencart_36809/index.php?main_page=privacy">Privacy Notice</a>--%>
			<%--</div>--%>
		</div>
		<div class="fright">
			<div class="social">
				<ul>
					<li><a href="http://www.twitter.com/"><img src="./twitter.gif" alt="" width="24" height="24"></a></li>
					<li><a href="http://www.facebook.com/"><img src="./facebook.gif" alt="" width="24" height="24"></a></li>
				</ul>
			</div>
		</div>
				</div>





<!-- BOF- BANNER #5 display -->
<!-- EOF- BANNER #5 display -->

<!-- ============================ -->



<!--bof- parse time display -->
<!--eof- parse time display -->



<!-- BOF- BANNER #6 display -->
<!-- EOF- BANNER #6 display -->




<!-- ========== IMAGE BORDER BOTTOM ========== -->

    </div>
</div>

<!-- ========================================= -->


</body>
</html>