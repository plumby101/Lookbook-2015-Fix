<#-- reference to global functions [Required to run macros] -->
<#assign FLTFile= companyhome.childByNamePath["Data Dictionary/Web Scripts/bootstrappedFiles/functions.ftl"] > 
<#include "${FLTFile.nodeRef}" > 
<#assign channel = args["channel"] />
<#assign language=args['language']?lower_case />
<style type="text/css">
#LBlooks li {width:316px; height:390px; background: url(/images/lookbook/build_assets/spinner.gif) center no-repeat;}
.LBleftButton {position:absolute; z-index:10; top:140px; left:-3px; width:38px; height:70px; background:url(/alfresco/nap/webAssets/webPage/lookbook/CR15_Images/buildImages/leftArrow.png) no-repeat top; display:none}
.LBrightButton {position:absolute; z-index:10; top:140px; left:912px; width:38px; height:70px; background:url(/alfresco/nap/webAssets/webPage/lookbook/CR15_Images/buildImages/rightArrow.png) no-repeat top}
.LBbacktoindex {width:220px; float:left; margin:8px 0 0 20px; padding-left:15px; background:url(/nap/content/2012/images/lookbook/images/back.gif) left center no-repeat; font-family:Arial, Helvetica, sans-serif;height:16px}
.LBdesignerList {height:90px; border-right:1px solid #eaeaea; border-left:1px solid #eaeaea; width:948px; background:url(/nap/content/2012/images/lookbook/images/designer_list_bg.gif) bottom no-repeat}
.LBOpenDesgnerBoxButton {width:950px; height:27px; background:url(/nap/content/2012/images/lookbook/images/designerdrop.gif) 0 27px }
.LBOpenDesgnerBoxButtonDown {width:950px; height:27px; background:url(/nap/content/2012/images/lookbook/images/designerdrop.gif)}
.LBtitle {background:url(/nap/content/2012/images/lookbook/images/titlebox.gif) bottom no-repeat; font-family:Georgia, "Times New Roman", Times, serif; font-size:18px; width:950px; height:30px; text-transform:uppercase}
.LBPIDoverlay {width:315px; height:370px; background:url(/alfresco/nap/webAssets/webPage/lookbook/CR14_Images/buildImages/overlay_box.gif); display:block}
.LBcloseLB {background:url(/nap/content/2012/images/lookbook/remove.gif) right no-repeat; width:50px; height:20px; display:block; float:right; margin:5px 10px 0 0}
.smallPrint {width: 252px; float: left; text-transform: none; margin-top:5px; }

.nextDesignerText {background: url(/alfresco/nap/webAssets/webPage/lookbook/CR15_Images/buildImages/nextDesigner.gif) no-repeat; width: 296px; height: 184px; padding:150px 0 0 20px; text-transform: uppercase;}

.UDLBlightboxBlackOverlay-about, .UDLBlightboxBlackOverlay-steps {width: 100%; height: 680px; background: url(/alfresco/nap/webAssets/webPage/lookbook/SS15_Images/buildImages/overlaybg.png); position: absolute; top:0; left:0; z-index: 10; display: none}
.UDLBlightboxAbout {width:633px; height: 446px; background: url(/alfresco/nap/webAssets/webPage/lookbook/SS15_Images/buildImages/hoverbox_vip.png); position: absolute; left: 164px; top: 100px }
.UDLBlightboxTitle {width: 533px; height: 30px; left: 50px; top:37px; position: absolute; text-transform: uppercase; text-align: center; font-family: ModernNAP-Display; font-size: 18px}
.UDLBlightboxClose {width: 50px; height: 50px; position: absolute; top: 20px; right: 20px; }

.UDLBlightboxContent {width: 430px; height: 230px; position: absolute; top: 85px; left: 100px; text-align: center; font-family: arial; font-size: 12px; line-height: 16px}

.UDLBlightboxButton {padding: 10px; background-color: #000000; position: absolute; top:310px; width: 125px; left: 240px; color: #ffffff !important; text-align: center; font-size: 12px; font-family: arial; text-decoration: none}

.UDLBbackToDesigner_en {margin: 0 auto;width: 220px;padding: 0 13px;background: url(/alfresco/nap/webAssets/webPage/lookbook/SS15_Images/buildImages/arrow_left.gif) no-repeat;font-family: gillsansbold;font-size: 14px;position: absolute;top: 321px;left: 197px;line-height: 10px;}
.UDLBbackToDesigner_fr {margin: 0 auto;width: 310px;padding: 0 13px;background: url(/alfresco/nap/webAssets/webPage/lookbook/SS15_Images/buildImages/arrow_left.gif) no-repeat;font-family: gillsansbold;font-size: 14px;position: absolute;top: 387px;left: 167px;line-height: 10px;}
.UDLBbackToDesigner_de {margin: 0 auto;width: 340px;padding: 0 13px;background: url(/alfresco/nap/webAssets/webPage/lookbook/SS15_Images/buildImages/arrow_left.gif) no-repeat;font-family: gillsansbold;font-size: 14px;position: absolute;top: 400px;left: 177px;line-height: 10px;}
.UDLBbackToDesigner_zh {margin: 0 auto;width: 220px;padding: 0 13px;background: url(/alfresco/nap/webAssets/webPage/lookbook/SS15_Images/buildImages/arrow_left.gif) no-repeat;font-family: gillsansbold;font-size: 14px;position: absolute;top: 340px;left: 248px;line-height: 10px;}

.LBmaintitle {font-size: 25px !important; width: 473px !important; margin: 23px 0 0 0 !important}
.LBbacktoindex {width: 240px !important}

</style>

<script type="text/javascript" src="/nap/content/2012/images/lookbook/js/jquery-nap-image-zoom.js"></script>

<div class="fakeNapHolder">
  <div class="LBholder">
    <div class="LBtitleNav">
    	<div class="LBabout"><a href="javascript:showHideAboutLB()">${message("lookbook.copy.about.title")}</a></div>
        <div class="LBmaintitle">${message("lookbook.copy.lookbookedition")}</div>
		<div class="LButility"><a href="javascript:noSelectionLB()">${message("lookbook.copy.calltoaction.view")} (<span class="LBtotalItems">0</span> ${message("lookbook.copy.items")})</a> <br /><span class="LBitemAdded">${message("lookbook.copy.itemadded")} </span></div>
    </div>
    <div class="LBdesignerSelect">
      <div class="LBletterbar"> <a href="/${message(channel)}/lookbook.nap?page=lbss15_designerindex_vip" class="LBbacktoindex">${message("lookbook.copy.calltoaction.back.index")}</a>
        <div class="LBletters">
          <ul>
            <li><a href="javascript:loadDesignerlist('a')" id="letter1">A</a></li>
            <li><a href="javascript:loadDesignerlist('b-c')" id="letter2">B-C</a></li>
            <li><a href="javascript:loadDesignerlist('d-f')" id="letter3">D-F</a></li>
            <li><a href="javascript:loadDesignerlist('g-i')" id="letter4">G-I</a></li>
            <li><a href="javascript:loadDesignerlist('j-l')" id="letter5">J-L</a></li>
            <li><a href="javascript:loadDesignerlist('m')" id="letter6">M</a></li>
            <li><a href="javascript:loadDesignerlist('n-q')" id="letter7">N-Q</a></li>
            <li><a href="javascript:loadDesignerlist('r-s')" id="letter8">R-S</a></li>
            <li><a href="javascript:loadDesignerlist('t-z')" id="letter9">T-Z</a></li>
            <li><a href="javascript:loadDesignerlist('numeric')" id="letter10" class="currentDesigner">0-9</a></li>
          </ul>
        </div>
      </div>
      <div class="LBdesignerList"> </div>
      <div class="LBOpenDesgnerBoxButton"> </div>
    </div>
    <div class="LBtitle"><span id="LBShowing"></span> </div>
    <div id="LBlooks">
      <div class="product">
        <div id="image-zoom-container" style="overflow-x: hidden; overflow-y: hidden; display: none; "></div>
        <div id="image-container">
          <div id="image-l" style="cursor: crosshair; ">
            <div id="image-zoom-marker" style="position: absolute; height: 87.5px; width: 87.5px; top: 138px; left: 162.5px; display: none; opacity: 0.7; "></div>
            <img src="/nap/content/2012/images/lookbook/images//dress2_in_l.jpg" width="217" height="350"></div>
        </div>
      </div>
      <div id="pids">
        <div class="LBPIDoverlay">
        	<div class="LBhoverTitleA">${message("lookbook.copy.overlay.title")}</div>
        	<div class="LBhoverTitleB">${message("lookbook.copy.overlay.zoom")}</div><div class="LBhoverTitleC">${message("lookbook.copy.overlay.larger")}</div>
        	<div class="LBhoverDivideline"> </div>
          <div class="LBclosePids"> </div>
          <div class="LBoverlayText"> </div>
          <div class="LBPIDitems"> </div>
        </div>
      </div>
      <div class="LBleftButton"></div>
      <div class="LBrightButton"></div>
      <ul>
      </ul>
    </div>

<div class="UDLBlightboxBlackOverlay-about">
  <div class="UDLBlightboxAbout">
    <div class="UDLBlightboxTitle">${message("lookbook.copy.landing.steps.title.choosing")}</div>
     <a class="UDLBlightboxClose" href="javascript:closeLightboxAbout()"></a>
    <div class="UDLBlightboxContent">${message("lookbook.copy.landing.steps.neip")}</div>
    <a class="UDLBbackToDesigner_${message(language)}" href="/${message(channel)}/lookbook.nap?page=lbss15_designerindex_vip">${message("lookbook.copy.landing.steps.backto")}</a>
  </div>
</div>

<div class="UDLBlightboxBlackOverlay-steps">
  <div class="UDLBlightboxAbout">
    <div class="UDLBlightboxTitle">${message("lookbook.copy.landing.steps.title.noselection")}</div>
    <a class="UDLBlightboxClose" href="javascript:closeLightboxSteps()"></a>
    <div class="UDLBlightboxContent">${message("lookbook.copy.landing.steps.neip")}</div>
    <a class="UDLBbackToDesigner_${message(language)}" href="/${message(channel)}/lookbook.nap?page=lbss15_designerindex_vip">${message("lookbook.copy.landing.steps.backto")}</a>
  </div>
</div>


 
  </div>
</div>
<script type="text/javascript">

var wrapEveryN = function(n, elements, wrapper) {
   for (var i=0; i< elements.length; i+=n) {
       elements.slice(i,i+n).wrapAll(wrapper);
   }
}

$(document).ready(function() {

    initiateCarousel()
	selectedPIDarray = new Array()
	selectedPIDarray.length
	getPidCount()
		
	$('.LBleftButton').click(function() {
 		hidePIDlist()
	})

	$('.LBrightButton').click(function() {
 		hidePIDlist()
	if ($(".disabled-next").length > 0) {nextDesigner()}
	})

	$('.LBclosePids').click(function() {
 		hidePIDlist()
	})
});

$('input[type=checkbox]').on('click', function () {
	
	var isChecked = $(this).prop('checked');
	var cbPIDid = $(this).attr('id');
	cbPIDid  = parseFloat(cbPIDid)
	
    if (isChecked == true) {		
		selectedPIDarray[selectedPIDarray.length] = parseFloat(cbPIDid)
    }
    else
    {
         selectedPIDarray = removeFromArray(cbPIDid, selectedPIDarray);
    }
});


function itemAdded() {
	$(".LBitemAdded").show()
	$(".LBitemAdded").delay(600).fadeOut('slow', function() {});
}

function loadDesignerlist(passedDataSource, designerID) {
	
	location.hash = "?src="+passedDataSource;
	$('.LBdesignerList').html("")
	activeLetter(passedDataSource)
	
	designerIDs = new Array();
	var counter = 0
	$.ajax({
		type: "GET",
		url:  '/alfresco/nap/webAssets/webPage/lookbook/SS15_XML/' + passedDataSource +".xml",
		//url:  passedDataSource +".xml",
		dataType: "xml",
		success: function(xml) {
			$(xml).find('DESIGNER').each(function(){
				counter++
				var id = $(this).attr('ID');s
				var title = $(this).find('TITLE').text();
				designerIDs[designerIDs.length] = parseFloat(id);	
				passedDataSources = '"'+passedDataSource.toString()+'"'	
				thisDataSource = String(passedDataSource)
				$('.LBdesignerList').append('<div class="designerEntry"><a href="javascript:loadDesignItems('+id+')" id='+id+' class="'+counter+'">'+title+'</a></div>')
			});
			if ($('.LBdesignerList').is(':hidden')) {expandDesigners()};
			wrapEveryN( 4, $(".LBdesignerList .designerEntry"), '<div class="designerEntryCol"></div>' );
			if (designerID != null)
			{
				loadDesignItems(designerID, passedDataSource )
			}
			else {
			loadDesignItems(designerIDs[0], passedDataSource )
			}	
		}
	});
};

function loadDesignItems(designerID) {
	$(".LBleftButton").fadeOut()
	location.hash = "&src="+thisDataSource+'&designerID='+designerID
	$(".designerEntry a").removeClass('currentDesigner')
	$(".designerEntry a#"+designerID).addClass('currentDesigner')
	$(".LBtitle").html($(".designerEntry #"+designerID).html() + "<span id='LBShowingFrom'></span><span id='LBShowingOf'></span>")
	hidePIDlist()	
	$('#LBlooks ul').html('')
	counter = 0;
	$.ajax({
		type: "GET",
		url: '/alfresco/nap/webAssets/webPage/lookbook/SS15_XML/' + thisDataSource +".xml",
		//url: thisDataSource +".xml",
		dataType: "xml",
		success: function(xml) {
			$(xml).find('DESIGNER[ID='+designerID+']').each(
				function(){
					$(this).find('LOOK').each(function(){
						counter++
						$("#LBShowingOf").html(counter)
						var id = $(this).attr('ID');
						$('#LBlooks ul').append('<li id='+counter+' class=item'+id+'><a href="javascript:loadPIDoverlay('+id+')"><img src="/alfresco/nap/webAssets/webPage/lookbook/SS15_Images/productsShots/' + $(this).attr('ID') + '_s.jpg"></a></li>')
			}), 
			showingXofY(1)
			$('#LBlooks ul').append('<li><a href="javascript:nextDesigner()"><div class="nextDesignerText">${message("lookbook.viewnext.designer")}</div></a></li>');
			$("#LBlooks").napCarousel({
				 btnNext: ".LBrightButton",
        		 btnPrev: ".LBleftButton",
				 reset:true,
				 visable:3,
				 circular:false,
				 afterEnd: function(a) { 
					showingItems($(a[0]).attr("id")),
					showingXofY($(a[0]).attr("id"))		
   		 		}
			})
	});	
		}
	});
}

function showingXofY(leftItemID){
	var right = 0
	total = parseFloat($("#LBShowingOf").html())
	left = parseFloat(leftItemID)
	if (total > 3) {right = left + 2}
	if (total == 3) {right = left + 2}
	if (total == 2) {right = left + 1}
	if (total == 1) {right = left}
	if (right > total) {right = total; left = total - 1; isLast = "yes"}
	$('#LBShowingFrom').html("${message("lookbook.copy.items.showing")} "+left + " - "+right+  " /")
}

function activeLetter(activeID){
	letterList = new Array();
	letterList = [ "a", "b-c", "d-f" ,"g-i", "j-l", "m", "n-q", "r-s", "t-z", "numeric"]	
	newletter = jQuery.inArray(activeID, letterList) + 1
	$(".LBletters a").removeClass('currentDesigner')
	$(".LBletters #letter"+newletter).addClass('currentDesigner')	
}

function nextDesigner(){
	letterList = new Array();
	letterList = [ "a", "b-c", "d-f" ,"g-i", "j-l", "m", "n-q", "r-s", "t-z", "numeric"]
	var pattern = /[0-9]+/g;
	var currentDesigner = $(".LBdesignerList .currentDesigner").attr("class").match(pattern)
	var currentLetter = $(".LBletters .currentDesigner").attr("id").match(pattern)
	var totalDesigners = parseFloat($(".LBdesignerList a").size())
	if (currentDesigner != totalDesigners) {loadDesignItems(parseFloat(designerIDs[currentDesigner]))}
	if (currentDesigner == totalDesigners & currentLetter != letterList.length) {loadDesignerlist(letterList[currentLetter])}
	if (currentDesigner == totalDesigners & currentLetter == letterList.length) {loadDesignerlist(letterList[0])}
}

function itemSmallPrint(title) {
	itemSmallPrintArray = new Array();
	itemSmallPrintArray = ['385454','385455']	
	if ( jQuery.inArray(title, itemSmallPrintArray) != -1) { 
		return '<div class="smallPrint">${message("lookbook.smallprint")}</div>'
	}
	else {
		return ''
	}
}

function loadPIDoverlay(lookID){	

	itemArray = new Array();
	itemArray = ["tie", "socks" ,"bustier", "sleepwear", "visor", "robe", "pouch", "hand ring", "arm cuffs", "rings", "belt", "bag", "bangle", "bikini", "bikini briefs", "bikini top", "blazer", "blouse", "bodysuit", "boots", "bra", "bracelet", "briefs", "cami", "cape","cardigan", "clutch", "coat", "collar", "cuff", "dress", "earrings","earring", "espradilles", "flat sandals", "flat shoes", "flats", "gloves", "harness", "hat", "headband", "ipad case", "iphone case", "jacket", "jeans", "jumpsuit", "kisomo", "knitwear", "loafers", "necklace", "necktie", "pants", "pumps", "ring", "sandals", "scarf", "shirt", "shoes", "shorts", "shoulder bag", "skirt", "slip dress", "sneakers", "sweater", "swimsuit", "top", "tote", "trench", "tunic", "vest", "wallet", "wedges","hair accessory","ear cuff", "arm cuff","bra top","ear piece","choker","beauty case", "turban", "slippers", "gilet", "gift set", "bangles", "backpack", "flatforms", "playsuit", "poncho", "hand piece", "culottes", "keychain"]

	translationArray = new Array();
	translationArray = ["${message("lookbook.glossary.tie")}", "${message("lookbook.glossary.socks")}", "${message("lookbook.glossary.bustier")}", "${message("lookbook.glossary.sleepwear")}",  "${message("lookbook.glossary.visor")}", "${message("lookbook.glossary.robe")}","${message("lookbook.glossary.pouch")}", "${message("lookbook.glossary.handring")}", "${message("lookbook.glossary.armcuff")}",  "${message("lookbook.glossary.rings")}", "${message("lookbook.glossary.belt")}", "${message("lookbook.glossary.bag")}", "${message("lookbook.glossary.bangle")}", "${message("lookbook.glossary.bikini")}", "${message("lookbook.glossary.bikini.briefs")}", "${message("lookbook.glossary.bikini.top")}", "${message("lookbook.glossary.blazer")}", "${message("lookbook.glossary.blouse")}", "${message("lookbook.glossary.bodysuit")}", "${message("lookbook.glossary.boots")}", "${message("lookbook.glossary.bra")}", "${message("lookbook.glossary.bracelet")}", "${message("lookbook.glossary.briefs")}", "${message("lookbook.glossary.cami")}", "${message("lookbook.glossary.cape")}","${message("lookbook.glossary.cardigan")}", "${message("lookbook.glossary.clutch")}", "${message("lookbook.glossary.coat")}", "${message("lookbook.glossary.collar")}", "${message("lookbook.glossary.cuff")}", "${message("lookbook.glossary.dress")}", "${message("lookbook.glossary.earrings")}","${message("lookbook.glossary.earring")}", "${message("lookbook.glossary.espadrilles")}", "${message("lookbook.glossary.flat.sandals")}", "${message("lookbook.glossary.flat.shoes")}", "${message("lookbook.glossary.flats")}", "${message("lookbook.glossary.gloves")}", "${message("lookbook.glossary.harness")}", "${message("lookbook.glossary.hat")}", "${message("lookbook.glossary.headband")}", "${message("lookbook.glossary.ipad.case")}", "${message("lookbook.glossary.iphone.case")}", "${message("lookbook.glossary.jacket")}", "${message("lookbook.glossary.jeans")}", "${message("lookbook.glossary.jumpsuit")}", "${message("lookbook.glossary.kimono")}", "${message("lookbook.glossary.knitwear")}", "${message("lookbook.glossary.loafers")}", "${message("lookbook.glossary.necklace")}", "${message("lookbook.glossary.necktie")}", "${message("lookbook.glossary.pants")}", "${message("lookbook.glossary.pumps")}", "${message("lookbook.glossary.ring")}", "${message("lookbook.glossary.sandals")}", "${message("lookbook.glossary.scarf")}", "${message("lookbook.glossary.shirt")}", "${message("lookbook.glossary.shoes")}", "${message("lookbook.glossary.shorts")}", "${message("lookbook.glossary.bag")}", "${message("lookbook.glossary.skirt")}",  "${message("lookbook.glossary.slip.dress")}",  "${message("lookbook.glossary.sneakers")}", "${message("lookbook.glossary.sweater")}", "${message("lookbook.glossary.swimsuit")}", "${message("lookbook.glossary.top")}","${message("lookbook.glossary.tote")}", "${message("lookbook.glossary.trench")}", "${message("lookbook.glossary.tunic")}", "${message("lookbook.glossary.vest")}", "${message("lookbook.glossary.wallet")}", "${message("lookbook.glossary.wedges")}","${message("lookbook.glossary.hairaccessory")}","${message("lookbook.glossary.earcuff")}","${message("lookbook.glossary.armcuff")}","${message("lookbook.glossary.bratop")}","${message("lookbook.glossary.earpiece")}","${message("lookbook.glossary.choker")}","${message("lookbook.glossary.beuatycase")}","${message("lookbook.glossary.turban")}","${message("lookbook.glossary.slippers")}","${message("lookbook.glossary.gilets")}","${message("lookbook.glossary.giftset")}","${message("lookbook.glossary.bangles")}","${message("lookbook.glossary.backpack")}","${message("lookbook.glossary.flatforms")}","${message("lookbook.glossary.playsuit")}","${message("lookbook.glossary.poncho")}","${message("lookbook.glossary.handpiece")}","${message("lookbook.glossary.culottes")}","${message("lookbook.glossary.keychain")}"]
	
	var currentPIDs = ""
	var formatttedPIDlist = ""
	PIDArray = new Array();
	
	if ($(".LBPIDoverlay").is(":visible")) {
		hidePIDlist()
	}
	else {
	$(".LBleftButton").fadeOut()
	$(".LBrightButton").fadeOut()
	
	selectedPIDarray.length = 0;
	
	$('#LBlooks ul').fadeTo('slow', 0.5)
	$("#image-l img").attr("src","/alfresco/nap/webAssets/webPage/lookbook/SS15_Images/productsShots/" + lookID + "_s.jpg");
	
	if(NAP.imageZoom) {
		NAP.imageZoom.init('image-l', {
			message: '<div style="width:350px; background-color:#FFF; text-align:center;"></div>',
			timeout: 10,
			threshold: {x:20, y:0},
			imageSizeSuffix: 'xl',
			cursorStyle: 'crosshair',
			onZoomReady: function() {if(typeof console !== 'undefined') console.log('zoom ready')},
			beforeZoomImageLoad: function() {if(typeof console !== 'undefined') console.log('before image load')},
			afterZoomImageLoad: function() {if(typeof console !== 'undefined') console.log('after image load')},
			onZoomStart: function() {$("#pids").fadeOut() },
			onZoomEnd: function() {$("#pids").show()},
			onZoomLoadError: function(image) {if(typeof console !== 'undefined') console.log(image)}
		});
	}
	
	var clickedItem = $('#LBlooks .item'+lookID).offset().left
	var relativePosition = $('#LBlooks .item'+lookID).offset().left - $('.LBholder').offset().left 
	$('.product').fadeIn()	
	positionZoomElements(relativePosition)
	$('.LBPIDitems').html("")
	
	$.ajax({
		type: "GET",
		url: "/alfresco/nap/webAssets/webPage/lookbook/SS15_XML/" + thisDataSource + ".xml",
		dataType: "xml",
		success: function(xml) {
			$(xml).find('LOOK[ID='+lookID+']').each(
				function(){
				
					$(this).find('ITEM').each(function(){	
					var title = $(this).find('PID').text();
					PIDArray.push($(this).find('PID').text());
					if (currentPIDs != "") {
						currentPIDs = currentPIDs + "," + title
					} else 
					{currentPIDs = title};
						
					var description = $(this).find('DESCRIPTION').text();
						$('.LBPIDitems').append('<div class="pid'+title+'" id="LBitem"><div class="LBcheckboxHolder"><input id='+title+' name="checkbox_PID" type="checkbox" value="" class="checkBox"></div><div class="LBItemInfo"><div class="LBtextTweak">' + translationArray[jQuery.inArray(description, itemArray )] + '</div><div class="LBPrice" id="price'+title+'"></div></div><div class="LBItemInfoPID"><div class="LBtextPID"> '+ title +'</div></div>' + itemSmallPrint(title) +'</div>');
					checkAvailability(title);
					checkCheckedStatus(lookID);
		}), $('#pids').fadeIn(); $('.LBPIDitems').append("<a href='javascript:submitAndClose("+lookID+")'><div class='LBsubmitButton'>${message("lookbook.copy.calltoaction.additem")}</div></a><div class='LBPriceMessage'></div><a class='LBviewLarge' href='javascript:launchGenericPopUp("+lookID+")'></a>")

		formatttedPIDlist = "["+currentPIDs+"]"
		getPIDjson(formatttedPIDlist, PIDArray);

	});
	}
	});
}
}

function resetCheckboxDetection() {

$('input:checkbox').on('click', function () {
	
	var isChecked = $(this).prop('checked');
	var cbPIDid = $(this).attr('id');
	cbPIDid  = parseFloat(cbPIDid)
	
    if (isChecked == true) {		
		selectedPIDarray[selectedPIDarray.length] = parseFloat(cbPIDid)
    }
    else
    {
         selectedPIDarray = removeFromArray(cbPIDid, selectedPIDarray);
    }
});}

function getPIDjson(formattedPIDslist, currentPIDlist) {

	loopArray = new Array();
	loopArray = currentPIDlist

	$.ajax({
        type: "POST",
        traditional: true,
        url: "/intl/api/account/look/productdata.json",
        data: formattedPIDslist,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success:  function(data) {
        	
			if(data.data.length != 0){
				for(var n=0; n<data.data.length; n++) {


				 		$('#price'+data.data[n].pid).html(data.data[n].price)
				 		loopArray = removeFromArray(String(data.data[n].pid), loopArray);
				 
				 	
				}}
			for(var x=0; x<loopArray.length; x++) {
					//$('#price'+loopArray[x]).html("TBA")
					//addPricingSmallPrint()
			}
		}
	})
	resetCheckboxDetection()
}

function addPricingSmallPrint() {
	$('.LBPriceMessage').html('Pricing smallprint')
}

function positionZoomElements(relativePosition) 
{
	if (relativePosition == '0') { 
		$("#image-zoom-container").css('left', '317/intl/lookbook.nap?page=Lookbook_SS15_designerlistpx')
		$("#image-container").css('left', '0px')
		$('.product').css('left', '0px') 
		$('#pids').css('left', '316px') 
		}
	if (relativePosition == '316') {
		$("#image-zoom-container").css('left', '316px')
		$("#image-container").css('left', '0px')
		$('.product').css('left', '316px') 
		$('#pids').css('left', '630px')
		}
	if (relativePosition == '632') {
		$("#image-zoom-container").css('left', '-316px')
		$("#image-container").css('left', '316px')
		$('.product').css('left', '316px') 
		$('#pids').css('left', '316px') 
		}	
}

function launchGenericPopUp(url) {
    var newWindow = window.open("http://www.net-a-porter.com/content/notemplate/lbss15-popup?imageID="+url, "Thisname", 'width='+770+',height='+800+',menubar=no,location=no,resizable=1,status=no');
    if (window.focus) {
       newWindow.focus();
    }
}

function hidePIDlist() {
	$(".LBleftButton").fadeIn()
	$(".LBrightButton").fadeIn()
	$('#LBlooks ul').fadeTo('slow', 1)
	$('#image-zoom-container').remove();
	$('.product').fadeOut();
	$('#pids').fadeOut();
	$('.LBPIDitems').html("")	
	$(".product").hide();
	$(".product").html("");
	$(".product").html("<div id='image-container'><div id='image-l' style='cursor: crosshair; '><div id='image-zoom-marker' style='position: absolute; height: 87.5px; width: 87.5px; top: 138px; left: 162.5px; display: none; opacity: 0.7; '></div><img src='/nap/content/2012/images/lookbook/images/dress2_in_l.jpg' width='316' height='359'></div></div>");
}

function showingItems(currentID){
		if (currentID > 1 ) { $(".LBleftButton").fadeIn() }
		if (currentID < 2 ) { $(".LBleftButton").fadeOut() }
}

$('.LBleftButton').hover(function() {
 $(this).css('cursor','pointer');
 }, function() {
 $(this).css('cursor','auto');
})

$('.LBrightButton').hover(function() {
 $(this).css('cursor','pointer');
 }, function() {
 $(this).css('cursor','auto');
})

function expandDesigners(){
	 $('.LBdesignerList').animate({height: 'toggle'}, 500, function() {});
	 if ($(".LBOpenDesgnerBoxButton").length > 0){
	 	$('.LBOpenDesgnerBoxButton').addClass("LBOpenDesgnerBoxButtonDown").removeClass("LBOpenDesgnerBoxButton")
	 } else
	 {
		$('.LBOpenDesgnerBoxButtonDown').addClass("LBOpenDesgnerBoxButton").removeClass("LBOpenDesgnerBoxButtonDown")
	 }
}

function getUrlVars()
	{
    	var vars = [], hash;
    	var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    	for(var i = 0; i < hashes.length; i++)
    	{
        	hash = hashes[i].split('=');
        	vars.push(hash[0]);
        	vars[hash[0]] = hash[1];
    	}
    	return vars;
} 

function initiateCarousel(){
	passedXML = getUrlVars()["src"];
	lookid = getUrlVars()["designerID"];
	if (lookid == null){ lookid = ""}
	if (passedXML == null){ passedXML = ""}
	
	if (passedXML == "") 
		{	
		$(".LBletters #m").css( {'background-color' : 'black', 'color': 'white' } );
		loadDesignerlist("a")
	}
	if (passedXML != ""  && lookid == "") 
		{	
		$(".LBletters #"+passedXML).css( {'background-color' : 'black', 'color': 'white' } );
		loadDesignerlist(passedXML)
	}
	if (passedXML != "" && lookid != "") 
		{
		$(".LBletters #"+passedXML).css( {'background-color' : 'black', 'color': 'white' } );
		loadDesignerlist(passedXML, lookid)
	}
}

$('.LBOpenDesgnerBoxButton').hover(function() {
 	$(this).css('cursor','pointer');
 	}, function() {
 	$(this).css('cursor','auto');
})

$('.LBclosePids').hover(function() {
 	$(this).css('cursor','pointer');
 	}, function() {
 	$(this).css('cursor','auto');
})

$('.LBOpenDesgnerBoxButton').click(function() {
 	expandDesigners()
})

function removeFromArray(value, arr) {
    return jQuery.grep(arr, function(elem, index) {
        return elem !== value;
    });
};

function checkAvailability(pid) {
	$.getJSON("/webapi/feed/searchableproduct/status/"+pid+".json",function(data){
	isAvailable = data.productAvailability.availability
	
	if (isAvailable == "AVAILABLE") {
			  $('.pid'+pid).append('<a class="Lb_shopper" target="blank" href="/product/'+pid+'">${message("lookbook.copy.available")}</a>');
		}
	})
}


function checkCheckedStatus (clickID){
	$.getJSON("/webapi/account/look/"+clickID+".json",function(thisdata){
		if (!thisdata.data) {
			var noData = true;	
			theprefID = ""
		}
		if (thisdata.data) {
			selectedPIDarray  = thisdata.data.pids
			theprefID = thisdata.data.preference_id 
				for(var i=0; i<selectedPIDarray .length; i++) {
					var activePID = selectedPIDarray[i]
					$('input[id='+activePID+']').prop("checked", true);
				}                
    	}})
}

function submitAndClose(clickedLookID){

	checkSignedIn();

	itemAdded()
	if (theprefID != "") {
		if (selectedPIDarray == "") {selectedPIDarray = "0"}
		
		$.post("/webapi/account/look/"+clickedLookID+".json", {"pids":selectedPIDarray.toString(), preference_id: theprefID.toString() }, 
		function(){getPidCount()});
		
	}
		
	if (theprefID == "") {
		if (selectedPIDarray == "") {selectedPIDarray = "0"}
		$.post("/webapi/account/look/"+clickedLookID +".json", {pids:selectedPIDarray.toString()}, 
		function() {getPidCount()}); 
	}
	hidePIDlist()
	
}

function checkSignedIn() {
	$.getJSON( "/${message(channel)}/api/account/customer.json" )
		.done(function(data) {
  			if (data.data) {} else {window.location.href = 'https://www.net-a-porter.com/${message(channel)}/signin.nap'};
		})
		.fail(function() {
  			window.location.href = 'https://www.net-a-porter.com/${message(channel)}/signin.nap'
		});
}

function getPidCount() {
	allSelections = new Array()
	$.getJSON("/webapi/account/looks.json",function(data){
		$.each(data.data, function(i,data){
			allSelections  = allSelections.concat(data.pids);
			$(".LBtotalItems").html(removeFromArray(0, allSelections).length)
		});
	});
}

function showHideAboutLB() {
	 $('.UDLBlightboxBlackOverlay-about').fadeToggle( "fast", "linear");
	
}

function closeLightboxSteps() {
	$('.UDLBlightboxBlackOverlay-steps').fadeToggle( "fast", "linear");
}

function closeLightboxAbout() {
	$('.UDLBlightboxBlackOverlay-about').fadeToggle( "fast", "linear");
}

function noSelectionLB(){
	if ($(".LBtotalItems").html() == 0) {
		$('.UDLBlightboxBlackOverlay-steps').fadeToggle( "fast", "linear");
	} else
	{
		window.location.href="/${message(channel)}/lookbook.nap?page=lbss15_myselection_vip"
	}
}
</script>