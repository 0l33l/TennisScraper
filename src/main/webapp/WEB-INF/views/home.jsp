<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0075)http://livedemo00.template-help.com/zencart_36809/index.php?main_page=index -->
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Tennis Store</title>

    <meta http-equiv="imagetoolbar" content="no">
    <base href="../images/">

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

    <!--[if lt IE 7]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
            <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0"
                 height="42" width="820"
                 alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a>
    </div>
    <![endif]-->

    <style type="text/css">
        .class {
            behavior: url(includes/templates/theme565/PIE.php)
        }
    </style>
    <script type="text/javascript" src="./plusone.js" gapi_processed="true"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("a.tooltips").easyTooltip();
        });
    </script>
    <script type="text/javascript">
        $(function() {
            $('.currencies form').jqTransform({imgPath:'jqtransformplugin/img/'});
        });
    </script>
    <script type="text/javascript">
        $(function() {
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
        $(function() {
            $('.centerBoxWrapper .centeredContent').eq(3).addClass('last');
            $('.centerBoxWrapper .centeredContent').eq(7).addClass('last');
        });
    </script>
    <script type="text/javascript">
        $(function() {
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


<body id="indexBody">

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

                    <li class="selected  first">
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
            <a href="http://livedemo00.template-help.com/zencart_36809/index.php?main_page=index&language=en"><img
                    src="./icon.gif" alt="English" title=" English " width="21" height="18"
                    style="vertical-align:middle;"></a> <!-- =============================== -->
        </div>
        <div class="currencies">
            <!-- ========== CURRENCIES ========= -->
            <form name="currencies" action="./Zen Cart!, The Art of E-commerce.htm" method="get"
                  class="jqtransformdone">
                <div>
                    <span class="label">Currencies: &nbsp;</span>

                    <div class="jqTransformSelectWrapper" style="z-index: 10; width: 122px; ">
                        <div><span style="width: 122px; ">US Dollar</span><a
                                href="http://livedemo00.template-help.com/zencart_36809/#" class="jqTransformSelectOpen"
                                style=""></a></div>
                        <ul style="width: 120px; height: 65px; overflow-x: hidden; overflow-y: hidden; display: none; visibility: visible; ">
                            <li><a href="http://livedemo00.template-help.com/zencart_36809/#" index="0"
                                   class="selected">US Dollar</a></li>
                            <li><a href="http://livedemo00.template-help.com/zencart_36809/#" index="1">Euro</a></li>
                            <li><a href="http://livedemo00.template-help.com/zencart_36809/#" index="2">GB Pound</a>
                            </li>
                            <li><a href="http://livedemo00.template-help.com/zencart_36809/#" index="3">Canadian
                                Dollar</a></li>
                            <li><a href="http://livedemo00.template-help.com/zencart_36809/#" index="4">Australian
                                Dollar</a></li>
                        </ul>
                        <select name="currency" class="select jqTransformHidden" onchange="this.form.submit();"
                                style="">
                            <option value="USD" selected="selected">US Dollar</option>
                            <option value="EUR">Euro</option>
                            <option value="GBP">GB Pound</option>
                            <option value="CAD">Canadian Dollar</option>
                            <option value="AUD">Australian Dollar</option>
                        </select></div>
                    <input type="hidden" name="main_page" value="index"></div>
            </form>
            <!-- ====================================== -->
        </div>
    </div>
    <div class="wrapper box2">
        <div class="logo">
            <!-- ========== LOGO ========== -->
            <a href="javascript:"><img src="./logo.jpg" alt="" width="230" height="30"></a>
            <!-- ========================== -->
        </div>
        <div class="cart">
            <!-- ========== SHOPPING CART ========== -->
            <span class="cart1">Now in your cart </span><a
                href="http://livedemo00.template-help.com/zencart_36809/index.php?main_page=shopping_cart">0 items</a>
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
<!-- ==================================== -->


<!-- ============================ -->
<div class="wrapper">
    <div class="slider">
        <div id="faded">
            <div style="position: relative; ">
                <div class="item" style="position: absolute; top: 0px; left: 0px; display: none; z-index: 0; "><a
                        href="http://livedemo00.template-help.com/zencart_36809/index.php?main_page=redirect&action=banner&goto=1"><img
                        src="./banner1.jpg" alt="Serena Williams" title=" Serena Williams " width="460" height="395"></a></div>
                <div class="item" style="position: absolute; top: 0px; left: 0px; display: none; z-index: 0; "><a
                        href="http://livedemo00.template-help.com/zencart_36809/index.php?main_page=redirect&action=banner&goto=2"><img
                        src="./banner2.jpg" alt="Andre Agassi" title=" Andre Agassi " width="460" height="395" style=""></a></div>
                <div class="item" style="position: absolute; top: 0px; left: 0px; z-index: 0; "><a
                        href="http://livedemo00.template-help.com/zencart_36809/index.php?main_page=redirect&action=banner&goto=3"><img
                        src="./banner3.jpg" alt="Novak Djokovic" title=" Novak Djokovic " width="460" height="395" style=""></a></div>
            </div>
        </div>
    </div>
    <div class="carousel-box">
        <div class="inner">
            <a href="http://livedemo00.template-help.com/zencart_36809/#" class="prev"></a>
            <a href="http://livedemo00.template-help.com/zencart_36809/#" class="next"></a>

            <div class="spec"
                 style="visibility: visible; overflow-x: hidden; overflow-y: hidden; position: relative; z-index: 2; left: 0px; width: 480px; ">
                <ul style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; position: relative; list-style-type: none; z-index: 1; width: 2880px; left: -1680px; ">
                    <c:forEach var="product" items="${topNav}">
                        <li class="product-col2 blue"
                            style="overflow-x: hidden; overflow-y: hidden; float: left; width: 218px; height: 373px; ">
                            <c:forEach var="image" items="${product.images}" begin="0" end="0">
                                <div align="center">
                                <%--<div class="img">--%>
                                    <a href="../tennis/viewProduct/${product.id}"><img
                                       src="${image.url}" alt="${product.name}"
                                       title=" ${product.name} " width="164" height="180"></a>
                                </div>
                            </c:forEach>

                            <div class="prod-info">
                                <div class="name"><a class="name" href="../tennis/viewProduct/${product.id}">
                                    ${product.name}</a></div>
                                <div class="text">${product.brand}</div>
                                <div class="price"><strong><span class="normalprice">$${product.price + 25} </span>&nbsp;
                                    <span class="productSpecialPrice">$${product.price}</span>
                                    <%--<span class="productPriceDiscount"><br>--11%</span></strong>--%>
                                </div>
                                <div class="button"><a
                                        href="../tennis/viewProduct/${product.id}"><img
                                        src="./button_add_to_cart2.gif" alt="Add to Cart" title=" Add to Cart "
                                        width="71" height="26"></a></div>
                            </div>
                        </li>
                    </c:forEach>

                </ul>
            </div>
        </div>
    </div>
</div>
<!-- BOF- BANNER #2 display -->
<div id="bannerTwo"><a
        href="http://livedemo00.template-help.com/zencart_36809/index.php?main_page=redirect&action=banner&goto=4"><img
        src="./banner4.jpg" alt="mens sale" title=" mens sale " width="940" height="55"></a></div>
<!-- EOF- BANNER #2 display -->

<table border="0" cellspacing="0" cellpadding="0" width="100%" id="contentMainWrapper">
<tbody>
<tr>


<td id="column-center" valign="top">


    <!-- BOF- BANNER #3 display -->
    <!-- EOF- BANNER #3 display -->


    <div class="column-center-padding">

        <!--content_center-->


        <!-- bof breadcrumb -->
        <!-- eof breadcrumb -->


        <!-- bof upload alerts -->
        <!-- eof upload alerts -->


        <div class="centerColumn" id="indexDefault">


            <!-- deprecated - to use uncomment this section
            <div id="" class="content">This is the main define statement for the page for english when no template defined file exists. It is located in: <strong>/includes/languages/english/index.php</strong></div>
            -->

            <!-- deprecated - to use uncomment this section
            <div id="" class="content">Define your main Index page copy here.</div>
            -->

            <div id="indexDefaultMainContent"></div>


            <!-- bof: featured products  -->
            <div class="centerBoxWrapper" id="featuredProducts">

                <h2 class="centerBoxHeading">Featured Products</h2>

                <c:forEach var="product" items="${featured}" varStatus="prodLoop" end="7">
                    <c:choose>
                        <c:when test="${(prodLoop.count - 1) % 4 eq 0}">
                            <div class="centerBoxContentsFeatured centeredContent back " style="width:25%;">
                            <div class="product-col">
                            <%--FIRST--%>
                        </c:when>
                        <c:when test="${(prodLoop.count - 1) % 4 eq 1}">
                            <div class="centerBoxContentsFeatured centeredContent back vLine " style="width:25%;">
                            <div class="product-col" style="margin-left:20px; margin-right:0px;">
                            <%--SECOND--%>
                        </c:when>
                        <c:when test="${(prodLoop.count - 1) % 4 eq 2}">
                            <div class="centerBoxContentsFeatured centeredContent back vLine " style="width:25%;">
                            <div class="product-col" style="margin-left:19px;">
                            <%--THIRD--%>
                        </c:when>
                        <c:when test="${(prodLoop.count - 1) % 4 eq 3}">
                            <div class="centerBoxContentsFeatured centeredContent back vLine last" style="width:25%;">
                            <div class="product-col" style="margin-left:19px;">
                            <%--FOURTH--%>
                        </c:when>
                    </c:choose>


                            <div class="img">
                                <a href="../tennis/viewProduct/${product.id}">
                                    <div class="ibe_outer_nofloat"
                                         style="width: 134px; height: 150px; overflow-x: hidden; overflow-y: hidden; top: 0px; left: 0px; position: relative; ">
                                        <c:forEach var="image" items="${product.images}" begin="0" end="0">
                                            <img src="${image.url}" alt="${product.name}" title=" ${product.name} " width="134" height="150">
                                        </c:forEach>

                                        <div class="ibe_inner"
                                             style="height: 210px; width: 134px; border-left-width: 1px; border-left-style: solid; border-left-color: rgb(0, 0, 0); border-right-width: 1px; border-right-style: solid; border-right-color: rgb(0, 0, 0); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(0, 0, 0); border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(0, 0, 0); position: absolute; top: -1px; left: -1px; opacity: 0.01; "></div>
                                    </div>
                                </a>
                            </div>
                            <div class="prod-info">
                                <a class="name"
                                   href="../tennis/viewProduct/${product.id}">
                                        ${product.name}
                                   </a>

                                <div class="wrapper">
                                    <div class="price">
                                        <strong><fmt:formatNumber value="${product.price}" type="currency" currencySymbol="$"/></strong>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <c:if test="${prodLoop.count % 4 eq 0}">
                        <br class="clearBoth">
                    </c:if>
                </c:forEach>



            </div>
            <!-- eof: featured products  -->


        </div>

        <div class="clear"></div>

        <!--eof content_center-->
    </div>


    <!-- BOF- BANNER #4 display -->
    <!-- EOF- BANNER #4 display -->

</td>


<td id="column_right" style="width:218px">

    <div style="width:218px;">
        <!--// bof: specials //-->
        <div class="box " id="specials" style="width:218px;">


            <div class="box-head">
                <a href="http://livedemo00.template-help.com/zencart_36809/index.php?main_page=specials">Specials</a>
            </div>

            <div class="box-body">
                <c:forEach var="product" items="${specials}">
                    <div class="sideBoxContent centeredContent">
                        <div class="img"><a href="../tennis/viewProduct/${product.id}">
                            <div class="ibe_outer_nofloat"
                                 style="width: 54px; height: 85px; overflow-x: hidden; overflow-y: hidden; top: 0px; left: 0px; position: relative; ">
                                <c:forEach var="image" items="${product.images}" begin="0" end="0">
                                    <img src="${image.url}" alt="${product.name}" title=" ${product.name} " width="134" height="210">
                                </c:forEach>

                                <div class="ibe_inner" style="height: 85px; width: 54px; border-left-width: 1px; border-left-style: solid; border-left-color: rgb(0, 0, 0); border-right-width: 1px; border-right-style: solid; border-right-color: rgb(0, 0, 0); border-top-width: 1px; border-top-style: solid; border-top-color: rgb(0, 0, 0); border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(0, 0, 0); position: absolute; top: -1px; left: -1px; opacity: 0.01; "></div>
                            </div>
                        </a><br></div>
                        <div class="desc"><a class="name"href="../tennis/viewProduct/${product.id}">
                            ${product.name}
                        </a>

                            <div class="price"><span class="normalprice">$${(product.price+25)} </span>&nbsp;<span
                                    class="productSpecialPrice">$${product.price}</span><span
                                    class="productPriceDiscount"><br>-15%</span></div>
                        </div>
                    </div>
                </c:forEach>

            </div>


        </div>
        <!--// eof: specials //-->

        <!--// bof: information //-->
        <div class="box " id="information" style="width:218px;display:none;">


            <div class="box-head">
                Information
            </div>

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
</tbody>
</table>


<!-- ========== FOOTER ========== -->


<div id="footer" class="wrapper">
    <div class="fleft">
        <div class="footer-menu">
            <div id="navSupp">

                <div class="ezpagesFooterCol col1" style="width: 14%">
                    <ul>
                        <li><a href="javascript:" class="activeILPage">Home</a></li>
                    </ul>
                </div>
                <div class="ezpagesFooterCol col2" style="width: 14%">
                    <ul>
                        <li>
                            <a href="javascript:">New products</a></li>
                    </ul>
                </div>
                <div class="ezpagesFooterCol col3" style="width: 14%">
                    <ul>
                        <li><a href="javascript:">Specials</a>
                        </li>
                    </ul>
                </div>
                <div class="ezpagesFooterCol col4" style="width: 14%">
                    <ul>
                        <li>
                            <a href="javascript:">All products</a></li>
                    </ul>
                </div>
                <div class="ezpagesFooterCol col5" style="width: 14%">
                    <ul>
                        <li><a href="javascript:">Reviews</a>
                        </li>
                    </ul>
                </div>
                <div class="ezpagesFooterCol col6" style="width: 14%">
                    <ul>
                        <li><a href="javascript:">Contacts</a>
                        </li>
                    </ul>
                </div>
                <div class="ezpagesFooterCol col7" style="width: 14%">
                    <ul>
                        <li>
                            <a href="javascript:">FAQs</a>
                        </li>
                    </ul>
                </div>
                <br class="clearBoth"></div>
        </div>
        <%--<div class="copyright">--%>
            <%--<!-- ========== COPYRIGHT ========== -->--%>
            <%--Copyright © 2012 <a href="./Zen Cart!, The Art of E-commerce.htm">Underwear Store</a>. Powered by <a--%>
                <%--href="http://www.zen-cart.com/" target="_blank">Zen Cart</a> <a--%>
                <%--href="http://livedemo00.template-help.com/zencart_36809/index.php?main_page=privacy">Privacy Notice</a>--%>

            <%--<!-- =============================== -->--%>
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
    <div><!-- {%FOOTER_LINK} --></div>
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

</body>
</html>