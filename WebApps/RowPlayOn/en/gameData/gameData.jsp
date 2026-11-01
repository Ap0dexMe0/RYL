


<!doctype html>
<html>
<head>

















<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="/Page/img/row.ico">

<title>Return of Warrior</title>


<!--[if lt IE 9]>
	<script src="img/https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="img/https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->


<link rel="stylesheet" href="/Page/css/bootstrap.min.css">


<link rel="stylesheet" href="/Page/css/bootstrap-theme.min.css">


<script src='/Page/libs/Jquery/jquery-1.9.1.min.js'></script>


<!-- <script src="/Page/js/jquery-3.1.1.min.js"></script> -->


<script src="/Page/js/bootstrap.min.js"></script>

<style type="text/css">
	@import url("/Page/css/commond.css");
</style>
<!--임시 리다이렉션-->
 <script>
 //location.href=www.rowplayon.com;
 </script>


 

 


</head>

<body style="background-color: #f4f4f4;">









<style type="text/css">
	@import url("/Page/css/menu(en).css");
</style>
<script type="text/jscript">
$(function() {
	$('.dropdown').each(function(idx) {
		if (idx >= 8) {
			idx = idx%8;
		}
		else {
			$(this).on({
				mouseover: function() {
					$(this).children('button').dropdown('toggle');
				},
				mouseout: function() {
					$(this).children('button').dropdown('toggle');
				}
			});
		}
		$(this).on('show.bs.dropdown', {menu:idx}, function(event) {
			var idx = event.data.menu + 1;
			$(this).children('a').children('img').attr('src', '/Page/en/img/top/list-0' + idx + '-1.gif');
		});
		$(this).on('hide.bs.dropdown', {menu:idx}, function(event) {
			var idx = event.data.menu + 1;
			$(this).children('a').children('img').attr('src', '/Page/en/img/top/list-0' + idx + '.gif');
		});
		});
});
</script>


<nav class="navbar navbar-inverse navbar-static-top" role="navigation"
	style="background-image: url(/Page/img/main/top-back.gif); background-repeat: repeat; margin-bottom: 0; border: none;">
	<div class="container" style="max-width: 1000px; width: 100%;">
		<div class="navbar-header">
			
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
				aria-expanded="false" aria-controls="navbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<div class="visible-xs-block">
				<a class="navbar-brand zero_margin zero_padding" href="/Page/en/main.jsp">
					<img src="/Page/img/top/list-00.gif" height="50px;" />
				</a>
			</div>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<div class="hidden-xs">
				<div class="hidden-sm">
					<ul class='navbar-nav'><li id='row_li'>	<a href='/Page/en/main.jsp'>		<img src='/Page/img/top/list-00.gif' class='img-responsive' />	</a></li><li class='topmenu0_li'>	<div class='dropdown' id='topmenu0_con'>		<button id='topmenu0_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu0' href='/Page/en/gettingStarted/gettingStarted.jsp?p=1'>			<img src='/Page/en/img/top/list-01.gif' id='topmenu0_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu0_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=1>&nbsp;&nbsp;Getting Ready</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=2>&nbsp;&nbsp;Installation</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=3>&nbsp;&nbsp;Launcher</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=4>&nbsp;&nbsp;Client Setting</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=5>&nbsp;&nbsp;Login</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=6>&nbsp;&nbsp;Create a Character</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu1_li'>	<div class='dropdown' id='topmenu1_con'>		<button id='topmenu1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu1' href='/Page/en/gameGuide/gameGuide.jsp?p=1'>			<img src='/Page/en/img/top/list-02.gif' id='topmenu1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=1>&nbsp;&nbsp;Interface</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=2>&nbsp;&nbsp;Game Options</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=3>&nbsp;&nbsp;Controls</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=4>&nbsp;&nbsp;Communications</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=5>&nbsp;&nbsp;Items</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=6>&nbsp;&nbsp;Combat</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=7>&nbsp;&nbsp;Skills</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=8>&nbsp;&nbsp;Abilities</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=9>&nbsp;&nbsp;Quests</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=10>&nbsp;&nbsp;Character Growth</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=11>&nbsp;&nbsp;Trades</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu2_li'>	<div class='dropdown' id='topmenu2_con'>		<button id='topmenu2_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu2' href='/Page/en/gameSystem/gameSystem.jsp?p=1'>			<img src='/Page/en/img/top/list-03.gif' id='topmenu2_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu2_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=1>&nbsp;&nbsp;Party</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=2>&nbsp;&nbsp;Guild</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=3>&nbsp;&nbsp;Guild Management</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=4>&nbsp;&nbsp;Duel</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=5>&nbsp;&nbsp;Statue War</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=6>&nbsp;&nbsp;Guild War</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=7>&nbsp;&nbsp;Guild Fortress</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=8>&nbsp;&nbsp;Upgrade Items</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu3_li'>	<div class='dropdown' id='topmenu3_con'>		<button id='topmenu3_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu3' href='/Page/en/gameData/gameData.jsp?p=1'>			<img src='/Page/en/img/top/list-04.gif' id='topmenu3_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu3_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=1>&nbsp;&nbsp;Human Classes</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=2>&nbsp;&nbsp;Ak'kan Classes</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=3>&nbsp;&nbsp;Human Skills</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=4>&nbsp;&nbsp;Ak'kan Skills</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=5>&nbsp;&nbsp;Upgrade Data</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu4_li'>	<div class='dropdown' id='topmenu4_con'>		<button id='topmenu4_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu4' href='/Page/en/forum/forum.jsp?p=1&bbs=0'>			<img src='/Page/en/img/top/list-05.gif' id='topmenu4_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu4_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=0>&nbsp;&nbsp;Latest News</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=1>&nbsp;&nbsp;Update News</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=4>&nbsp;&nbsp;Tip and Tech</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=7>&nbsp;&nbsp;FAQ</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu5_li'>	<div class='dropdown' id='topmenu5_con'>		<button id='topmenu5_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu5' href='/Page/en/download/download.jsp'>			<img src='/Page/en/img/top/list-06.gif' id='topmenu5_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu5_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/download/download.jsp>&nbsp;&nbsp;Client Download</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu6_li'>	<div class='dropdown' id='topmenu6_con'>		<button id='topmenu6_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu6' href='/Page/en/itemMall/itemMall.jsp?p=1'>			<img src='/Page/en/img/top/list-07.gif' id='topmenu6_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu6_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=1>&nbsp;&nbsp;Charge Points</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=2>&nbsp;&nbsp;Purchase History</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=3>&nbsp;&nbsp;Item List</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=4>&nbsp;&nbsp;Drawing Game</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=5>&nbsp;&nbsp;Special Item Draw</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu7_li'>	<div class='dropdown' id='topmenu7_con'>		<button id='topmenu7_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu7' href='/Page/main.jsp?language=0'>			<img src='/Page/en/img/top/list-08.gif' id='topmenu7_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu7_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/main.jsp?language=0>&nbsp;&nbsp;ENG</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/main.jsp?language=1>&nbsp;&nbsp;KOR</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li></ul>
				</div>
				<div class="visible-sm-block">
					<ul class='navbar-nav'><li id='row_li'>	<a href='/Page/en/main.jsp'>		<img src='/Page/img/top/list-00.gif' class='img-responsive' />	</a></li><li class='topmenu0_li'>	<div class='dropdown' id='topmenu0_1_con'>		<a id='topmenu0_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-01.gif' id='topmenu0_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu0_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=1>&nbsp;&nbsp;Getting Ready</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=2>&nbsp;&nbsp;Installation</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=3>&nbsp;&nbsp;Launcher</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=4>&nbsp;&nbsp;Client Setting</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=5>&nbsp;&nbsp;Login</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=6>&nbsp;&nbsp;Create a Character</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu1_li'>	<div class='dropdown' id='topmenu1_1_con'>		<a id='topmenu1_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-02.gif' id='topmenu1_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu1_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=1>&nbsp;&nbsp;Interface</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=2>&nbsp;&nbsp;Game Options</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=3>&nbsp;&nbsp;Controls</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=4>&nbsp;&nbsp;Communications</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=5>&nbsp;&nbsp;Items</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=6>&nbsp;&nbsp;Combat</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=7>&nbsp;&nbsp;Skills</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=8>&nbsp;&nbsp;Abilities</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=9>&nbsp;&nbsp;Quests</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=10>&nbsp;&nbsp;Character Growth</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=11>&nbsp;&nbsp;Trades</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu2_li'>	<div class='dropdown' id='topmenu2_1_con'>		<a id='topmenu2_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-03.gif' id='topmenu2_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu2_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=1>&nbsp;&nbsp;Party</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=2>&nbsp;&nbsp;Guild</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=3>&nbsp;&nbsp;Guild Management</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=4>&nbsp;&nbsp;Duel</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=5>&nbsp;&nbsp;Statue War</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=6>&nbsp;&nbsp;Guild War</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=7>&nbsp;&nbsp;Guild Fortress</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=8>&nbsp;&nbsp;Upgrade Items</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu3_li'>	<div class='dropdown' id='topmenu3_1_con'>		<a id='topmenu3_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-04.gif' id='topmenu3_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu3_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=1>&nbsp;&nbsp;Human Classes</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=2>&nbsp;&nbsp;Ak'kan Classes</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=3>&nbsp;&nbsp;Human Skills</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=4>&nbsp;&nbsp;Ak'kan Skills</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=5>&nbsp;&nbsp;Upgrade Data</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu4_li'>	<div class='dropdown' id='topmenu4_1_con'>		<a id='topmenu4_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-05.gif' id='topmenu4_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu4_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=0>&nbsp;&nbsp;Latest News</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=1>&nbsp;&nbsp;Update News</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=4>&nbsp;&nbsp;Tip and Tech</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=7>&nbsp;&nbsp;FAQ</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu5_li'>	<div class='dropdown' id='topmenu5_1_con'>		<a id='topmenu5_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-06.gif' id='topmenu5_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu5_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/download/download.jsp>&nbsp;&nbsp;Client Download</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu6_li'>	<div class='dropdown' id='topmenu6_1_con'>		<a id='topmenu6_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-07.gif' id='topmenu6_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu6_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=1>&nbsp;&nbsp;Charge Points</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=2>&nbsp;&nbsp;Purchase History</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=3>&nbsp;&nbsp;Item List</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=4>&nbsp;&nbsp;Drawing Game</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=5>&nbsp;&nbsp;Special Item Draw</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu7_li'>	<div class='dropdown' id='topmenu7_1_con'>		<a id='topmenu7_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-08.gif' id='topmenu7_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu7_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/main.jsp?language=0>&nbsp;&nbsp;ENG</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/main.jsp?language=1>&nbsp;&nbsp;KOR</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li></ul>
				</div>
			</div>
			<div class="visible-xs-block">
				<ul class='navbar-nav'><li class='topmenu0_li'>	<div class='dropdown' id='topmenu0_1_con'>		<a id='topmenu0_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-01.gif' id='topmenu0_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu0_1_btn'><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=1>&nbsp;&nbsp;Getting Ready</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=2>&nbsp;&nbsp;Installation</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=3>&nbsp;&nbsp;Launcher</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=4>&nbsp;&nbsp;Client Setting</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=5>&nbsp;&nbsp;Login</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=6>&nbsp;&nbsp;Create a Character</a></li></ul>		</div>	</div></li><li class='topmenu1_li'>	<div class='dropdown' id='topmenu1_1_con'>		<a id='topmenu1_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-02.gif' id='topmenu1_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu1_1_btn'><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=1>&nbsp;&nbsp;Interface</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=2>&nbsp;&nbsp;Game Options</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=3>&nbsp;&nbsp;Controls</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=4>&nbsp;&nbsp;Communications</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=5>&nbsp;&nbsp;Items</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=6>&nbsp;&nbsp;Combat</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=7>&nbsp;&nbsp;Skills</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=8>&nbsp;&nbsp;Abilities</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=9>&nbsp;&nbsp;Quests</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=10>&nbsp;&nbsp;Character Growth</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=11>&nbsp;&nbsp;Trades</a></li></ul>		</div>	</div></li><li class='topmenu2_li'>	<div class='dropdown' id='topmenu2_1_con'>		<a id='topmenu2_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-03.gif' id='topmenu2_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu2_1_btn'><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=1>&nbsp;&nbsp;Party</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=2>&nbsp;&nbsp;Guild</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=3>&nbsp;&nbsp;Guild Management</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=4>&nbsp;&nbsp;Duel</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=5>&nbsp;&nbsp;Statue War</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=6>&nbsp;&nbsp;Guild War</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=7>&nbsp;&nbsp;Guild Fortress</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=8>&nbsp;&nbsp;Upgrade Items</a></li></ul>		</div>	</div></li><li class='topmenu3_li'>	<div class='dropdown' id='topmenu3_1_con'>		<a id='topmenu3_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-04.gif' id='topmenu3_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu3_1_btn'><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=1>&nbsp;&nbsp;Human Classes</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=2>&nbsp;&nbsp;Ak'kan Classes</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=3>&nbsp;&nbsp;Human Skills</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=4>&nbsp;&nbsp;Ak'kan Skills</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=5>&nbsp;&nbsp;Upgrade Data</a></li></ul>		</div>	</div></li><li class='topmenu4_li'>	<div class='dropdown' id='topmenu4_1_con'>		<a id='topmenu4_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-05.gif' id='topmenu4_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu4_1_btn'><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=0>&nbsp;&nbsp;Latest News</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=1>&nbsp;&nbsp;Update News</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=4>&nbsp;&nbsp;Tip and Tech</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=7>&nbsp;&nbsp;FAQ</a></li></ul>		</div>	</div></li><li class='topmenu5_li'>	<div class='dropdown' id='topmenu5_1_con'>		<a id='topmenu5_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-06.gif' id='topmenu5_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu5_1_btn'><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/download/download.jsp>&nbsp;&nbsp;Client Download</a></li></ul>		</div>	</div></li><li class='topmenu6_li'>	<div class='dropdown' id='topmenu6_1_con'>		<a id='topmenu6_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-07.gif' id='topmenu6_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu6_1_btn'><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=1>&nbsp;&nbsp;Charge Points</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=2>&nbsp;&nbsp;Purchase History</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=3>&nbsp;&nbsp;Item List</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=4>&nbsp;&nbsp;Drawing Game</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=5>&nbsp;&nbsp;Special Item Draw</a></li></ul>		</div>	</div></li><li class='topmenu7_li'>	<div class='dropdown' id='topmenu7_1_con'>		<a id='topmenu7_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-08.gif' id='topmenu7_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu7_1_btn'><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/main.jsp?language=0>&nbsp;&nbsp;ENG</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/main.jsp?language=1>&nbsp;&nbsp;KOR</a></li></ul>		</div>	</div></li></ul>
			</div>
		</div>
	</div>
</nav>







<style type="text/css">
	@import url("/Page/css/main.css");
</style>


<div class="container" align="center" style="margin-top:10px;">
	<div class="row" id="main_container" style="width:100%; color:#646464;">
		
		<div class="col-md-4 zero_padding zero_margin" align="center" id="left_container">
			



<script type="text/jscript">
$(function() {
	$('.side_menu_a').each(function(index) {
		var idx = index+1;
		if (idx == 4) {
			$(this).children('img').attr('src', '/Page/en/img/side/04_game data/sidebox-3-' + idx + '.gif');
		}
		else {
			$(this).children('img').on({
				mouseover: function() {
					$(this).attr('src', '/Page/en/img/side/04_game data/sidebox-3-' + idx + '.gif');
				},
				mouseout: function() {
					$(this).attr('src', '/Page/en/img/side/04_game data/sidebox-2-' + idx + '.gif');
				}
			});
		}
	});
});
</script>

















<script type="text/javascript" src="/Page/RSA/jsbn.js"></script>
<script type="text/javascript" src="/Page/RSA/rsa.js"></script>
<script type="text/javascript" src="/Page/RSA/prng4.js"></script>
<script type="text/javascript" src="/Page/RSA/rng.js"></script>
<script type="text/javascript">
var rsaPublicKeyModulus = "de48dc0baed074f392d64c463d5b237194d2243e5d56e2c70b9950a0146896ed6427802c754b0e501cabae547e39ebc007e99cd4429eeac72d96fc1d46ceeba2b292ef46a1a54a38319720a6832b0fc6d2cd64deb1b484df06276525af2a3f029dd34f6ccad3744855ca70c3494d5320923df0327307c15a799ae1176dbf9465";
var rsaPublicKeyExponent = "10001";
function fnRsaEnc(value, rsaPublicKeyModulus, rsaPpublicKeyExponent) 
{
    var rsa = new RSAKey();
    rsa.setPublic(rsaPublicKeyModulus, rsaPpublicKeyExponent);
    var encValue = rsa.encrypt(value);     // 사용자ID와 비밀번호를 RSA로 암호화한다.
    return encValue;
}



</script>


<style type="text/css">
	@import url("/Page/css/login.css");
</style>

<script>
function login() {
	
	var errorMessage = null;
	var objFocus = null;
	var formLogin = document.loginForm;

	formLogin.chkIDandPW.value = "Yes";
	
	if (formLogin.account.value.length == 0) {
		errorMessage = "Please enter ID";
		objFocus = formLogin.account;
	} else if (formLogin.passwd.value.length == 0) {
		errorMessage = "Please enter password";
		objFocus = formLogin.passwd;
	}

	if(errorMessage != null) {
		alert(errorMessage);
		objFocus.focus();
		return false;
	}
	//alert("o	");
	formLogin.passwd.value = fnRsaEnc(formLogin.passwd.value, rsaPublicKeyModulus, rsaPublicKeyExponent);
	//alert(formLogin.passwd.value);
	return true;
}
function logout() {
	//alert('Successfully logged out!');
	var formLogout=document.logoutForm;
	formLogout.submit();
}
function Set_Login_Point(_point)
{
	$("#login_point").html(_point);
}
</script>

<div align="center" id="login_container" style="margin:0 5px 5px 5px; padding:4px 4px 4px 4px; border:thin solid #D9D9D9;">

	<form action='' method='post' name='loginForm' id='loginForm' style='margin:0 0 0 0; padding:0 0 0 0;' onSubmit='return login()'>
	<input id='chkIDandPW' name='chkIDandPW' type='hidden' />
		<table id='login_table'>
			<tr>
				<td id='login_input_td'>
					<div class='input-group' id='login_input_group' style='width:100%; margin:1px 1px 1px 1px;'>
						<input type='text' class='form-control' name='account' placeholder='user id' style='border-radius:0; padding:0 0 0 0;'><br/>
						<input type='password' class='form-control' name='passwd' id='passwd' placeholder='password' style='border-radius:0; padding:0 0 0 0;'>
					</div>
				</td>
				<td id='login_btn_td'>
					<div class='btn-group' role='group' id='login_btn_group' style='width:100%;'>
						<button type='submit' class='btn btn-danger'
							style='border-radius:0; font-size:13px; background-color:#AA0000; background-image:none;'>LOG IN</button>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan='2' id='login_text_td' style='text-align:center; font-size:13px;'>
					<a href='/Page/en/member/member.jsp?p=1'>Join Member</a> | <a onclick='alert("Send email to master@rowplayon.com")'>Find ID/PW</a>
				</td>
			</tr>
		</table>
	</form>
	
</div>


<div class="side_under_login">

<div id="side_menu" align="center" class="zero_margin zero_padding" style="width:174px;">
	<img src="/Page/en/img/side/04_game data/sidebox-1-04.gif" class="img-responsive" />
	<a href="/Page/en/gameData/gameData.jsp?p=1" class="side_menu_a"><img src="/Page/en/img/side/04_game data/sidebox-2-1.gif" class="img-responsive" /></a>
	<a href="/Page/en/gameData/gameData.jsp?p=2" class="side_menu_a"><img src="/Page/en/img/side/04_game data/sidebox-2-2.gif" class="img-responsive" /></a>
	<a href="/Page/en/gameData/gameData.jsp?p=3" class="side_menu_a"><img src="/Page/en/img/side/04_game data/sidebox-2-3.gif" class="img-responsive" /></a>
	<a href="/Page/en/gameData/gameData.jsp?p=4" class="side_menu_a"><img src="/Page/en/img/side/04_game data/sidebox-2-4.gif" class="img-responsive" /></a>
	<a href="/Page/en/gameData/gameData.jsp?p=5" class="side_menu_a"><img src="/Page/en/img/side/04_game data/sidebox-2-5.gif" class="img-responsive" /></a>
</div>

<div id="contact" style="margin:5px 0 5px 0; width: 174px; height:49px; background-image: url(/Page/en/img/main/mail2.gif); font-size:13px; line-height:22px;">
	<br/>rowmaster@youxiland.com 
</div>
</div>
		</div>
		
		
		<div class="col-md-4 zero_padding zero_margin" id="center_container">
			


<style type="text/css">
	@import url("/Page/css/sub-center.css");
	@import url("/Page/css/lay_gamedata.css");
</style>

<div id="main_content">
	<img src="/Page/en/img/in/bar04-4.gif" class="img-responsive" />
	
	<div style="border:thin solid #e8e8e8; background-color:#ffffff; padding:15px 15px 15px 15px; margin:5px 0 5px 0;">
		<!-- Contents Begin -->
		<img src="/Page/img/sub/gameData/Contents_img_04.jpg" class="img-responsive">
		
		<div role="tabpanel">

		  <!-- Nav tabs -->
		  <ul id="sub_navi" class="nav nav-tabs" role="tablist" style="border:none; background-color: #e0e0e0;">
		    <li style="width:33.3%;" role="presentation" class="active"><a href="#CommonSkills" aria-controls="CommonSkills" role="tab" data-toggle="tab">Common</a></li>
		    <li style="width:33.3%;" role="presentation"><a href="#Combatant" aria-controls="Combatant" role="tab" data-toggle="tab">Combatant</a></li>
		    <li style="width:33.3%;" role="presentation"><a href="#Officiator" aria-controls="Officiator" role="tab" data-toggle="tab">Officiator</a></li>
		  </ul>
		
		  <!-- Tab panes -->
		  <div class="tab-content">
		    <div role="tabpanel" class="tab-pane active" id="CommonSkills">
			    


<br />
<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_13.gif" /></td>
<td width="140">Hard Hit</td>
<td width="20">I</td>
<td width="75">None</td>
<td width="80">INSTANCE</td>
<td width="140">Each level STR + 10</td>	
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_13.gif" /></td><td>Slug</td><td>II</td><td>STR 70+</td><td>INSTANCE</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_13.gif" /></td><td>Bash</td><td>III</td><td>STR 130+</td><td>INSTANCE</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_13.gif" /></td><td>Pummel</td><td>IV</td><td>STR 190+</td><td>INSTANCE</td><td>Each level STR + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Delivers a strong melee attack to the enemy that taunts and slows.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_06.gif" /></td><td>Blade Mastery</td><td>I</td><td>None</td><td>PASSIVE</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_06.gif" /></td><td>Blade Mastery</td><td>II</td><td>STR 70+</td><td>PASSIVE</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_06.gif" /></td><td>Blade Mastery</td><td>III</td><td>STR 130+</td><td>PASSIVE</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_06.gif" /></td><td>Blade Mastery</td><td>IV</td><td>STR 190+</td><td>PASSIVE</td><td>Each level STR + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Boosts Blades effectiveness but does not improve the Attack Arm.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_83.gif" /></td><td>Improved Critical</td><td>I</td><td>None</td><td>PASSIVE</td><td>Each level STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_83.gif" /></td><td>Improved Critical</td><td>II</td><td>STR 60+</td><td>PASSIVE</td><td>Each level STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_83.gif" /></td><td>Improved Critical</td><td>III</td><td>STR 108+</td><td>PASSIVE</td><td>Each level STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_83.gif" /></td><td>Improved Critical</td><td>IV</td><td>STR 156+</td><td>PASSIVE</td><td>Each level STR + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Increases the probability and damage multiplier of critical hits.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_81.gif" /></td><td>Willpower</td><td>I</td><td>None</td><td>PASSIVE</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_81.gif" /></td><td>Willpower</td><td>II</td><td>STR 70+</td><td>PASSIVE</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_81.gif" /></td><td>Willpower</td><td>III</td><td>STR 130+</td><td>PASSIVE</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_81.gif" /></td><td>Willpower</td><td>IV</td><td>STR 190+</td><td>PASSIVE</td><td>Each level STR + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Increases MP recovery and magic resistance.</td></tr>
</table>
<br />
<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_06.gif" /></td>
<td width="140">Crusher Mastery</td>
<td width="20">I</td>
<td width="75">None</td>
<td width="80">PASSIVE</td>
<td width="140">Each level CON + 8</td>	
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_06.gif" /></td><td>Crusher Mastery</td><td>II</td><td>CON 60+</td><td>PASSIVE</td><td>Each level CON +8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_06.gif" /></td><td>Crusher Mastery</td><td>III</td><td>CON 108+</td><td>PASSIVE</td><td>Each level CON +8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_06.gif" /></td><td>Crusher Mastery</td><td>IV</td><td>CON 156+</td><td>PASSIVE</td><td>Each level CON +8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">When using Crusher Weapon, it increases its effect.(Does not affect the Attack Arm's attack.)</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_31.gif" /></td><td>Split Life</td><td>I</td><td>None</td><td>INSTANCE</td><td>Each level CON +8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_31.gif" /></td><td>Vital Recharge</td><td>II</td><td>CON 60+</td><td>INSTANCE</td><td>Each level CON +8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_31.gif" /></td><td>Fellowship</td><td>III</td><td>CON 108+</td><td>INSTANCE</td><td>Each level CON +8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_31.gif" /></td><td>Blood for All</td><td>IV</td><td>CON 156+</td><td>INSTANCE</td><td>Each level CON +8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Allows strength to be shared with an ally.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_86.gif" /></td><td>Extra Life</td><td>I</td><td>None</td><td>PASSIVE</td><td>Each level CON +8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_86.gif" /></td><td>Extra Life</td><td>II</td><td>CON 60+</td><td>PASSIVE</td><td>Each level CON +8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_86.gif" /></td><td>Extra Life</td><td>III</td><td>CON 108+</td><td>PASSIVE</td><td>Each level CON +8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_86.gif" /></td><td>Extra Life</td><td>IV</td><td>CON 156+</td><td>PASSIVE</td><td>Each level CON +8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Increases maximum strength.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_56.gif" /></td><td>Harden Skin</td><td>I</td><td>None</td><td>CAST</td><td>Each level CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_56.gif" /></td><td>Skin Buff</td><td>II</td><td>CON 60+</td><td>CAST</td><td>Each level CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_56.gif" /></td><td>Stone Skin</td><td>III</td><td>CON 108+</td><td>CAST</td><td>Each level CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_56.gif" /></td><td>Iron Skin</td><td>IV</td><td>CON 156+</td><td>CAST</td><td>Each level CON + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Increases defense ability of oneself.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_80.gif" /></td><td>Toughness</td><td>I</td><td>None</td><td>PASSIVE</td><td>Each level CON +8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_80.gif" /></td><td>Toughness</td><td>II</td><td>CON 60+</td><td>PASSIVE</td><td>Each level CON +8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_80.gif" /></td><td>Toughness</td><td>III</td><td>CON 108+</td><td>PASSIVE</td><td>Each level CON +8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_80.gif" /></td><td>Toughness</td><td>IV</td><td>CON 156+</td><td>PASSIVE</td><td>Each level CON +8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Raises physical defense.</td></tr>
</table>	
<br />
<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_32.gif" /></td>
<td width="140">Flexibility</td>
<td width="20">I</td>
<td width="75">None</td>
<td width="80">INSTANCE</td>
<td width="140">Each level DEX + 8</td>	
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_32.gif" /></td><td>Dodge</td><td>II</td><td>DEX 60+</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_32.gif" /></td><td>Evade</td><td>III</td><td>DEX 108+</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_32.gif" /></td><td>Illusion</td><td>IV</td><td>DEX 156+</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">helps to evade some physical attacks and skills.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_08.gif" /></td><td>Claw Mastery</td><td>I</td><td>None</td><td>PASSIVE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_08.gif" /></td><td>Claw Mastery</td><td>II</td><td>DEX 60+</td><td>PASSIVE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_08.gif" /></td><td>Claw Mastery</td><td>III</td><td>DEX 108+</td><td>PASSIVE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_08.gif" /></td><td>Claw Mastery</td><td>IV</td><td>DEX 156+</td><td>PASSIVE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Improves Claw proficiency but does not improve a Knife Arm use.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_82.gif" /></td><td>Evasion</td><td>I</td><td>None</td><td>PASSIVE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_82.gif" /></td><td>Evasion</td><td>II</td><td>DEX 60+</td><td>PASSIVE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_82.gif" /></td><td>Evasion</td><td>III</td><td>DEX 108+</td><td>PASSIVE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_82.gif" /></td><td>Evasion</td><td>IV</td><td>DEX 156+</td><td>PASSIVE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Increases the probability of avoiding a hit.</td></tr>
</table>	
<br />
<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_57.gif" /></td>
<td width="140">Magic Missile</td>
<td width="20">I</td>
<td width="75">None</td>
<td width="80">CAST</td>
<td width="140">Each level INT + 10</td>	
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_57.gif" /></td><td>Dual Missile</td><td>II</td><td>INT 70+</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_57.gif" /></td><td>Runed Arrow</td><td>III</td><td>INT 130+</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_57.gif" /></td><td>Comet</td><td>IV</td><td>INT 190+</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Fires a mana projectile at a target enemy.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_15.gif" /></td><td>Bloody Mana</td><td>I</td><td>None</td><td>INSTANCE</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_15.gif" /></td><td>Blood Offering</td><td>II</td><td>INT 70+</td><td>INSTANCE</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_15.gif" /></td><td>Blood Sacrifice</td><td>III</td><td>INT 130+</td><td>INSTANCE</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_15.gif" /></td><td>Blood Bequest</td><td>IV</td><td>INT 190+</td><td>INSTANCE</td><td>Each level INT + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Sacrifices the caster's life force in exchange for an infusion of mana.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_44.gif" /></td><td>Grease</td><td>I</td><td>None</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_44.gif" /></td><td>Trap</td><td>II</td><td>INT 70+</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_44.gif" /></td><td>Capture</td><td>III</td><td>INT 130+</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_44.gif" /></td><td>Snare</td><td>IV</td><td>INT 190+</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Immobilizes enemies. Increase spell level Improves range, area, and duration. Unaffected by Mana Shield or Flexibility.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_84.gif" /></td><td>Serenity</td><td>I</td><td>None</td><td>PASSIVE</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_84.gif" /></td><td>Serenity</td><td>II</td><td>INT 70+</td><td>PASSIVE</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_84.gif" /></td><td>Serenity</td><td>III</td><td>INT 130+</td><td>PASSIVE</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_84.gif" /></td><td>Serenity</td><td>IV</td><td>INT 190+</td><td>PASSIVE</td><td>Each level INT + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Increases maximum MP.</td></tr>
</table>	
<br />
<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_12.gif" /></td>
<td width="140">Life Aura</td>
<td width="20">I</td>
<td width="75">None</td>
<td width="80">CHANT</td>
<td width="140">Each level WIS + 10</td>	
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_12.gif" /></td><td>Chant of Heal</td><td>II</td><td>WIS +</td><td>CHANT</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_12.gif" /></td><td>Healing Aura</td><td>III</td><td>WIS +</td><td>CHANT</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_12.gif" /></td><td>Ward of Healing</td><td>IV</td><td>WIS +</td><td>CHANT</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Increases the HP and MP Recovery of the party.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_45.gif" /></td><td>Encourage</td><td>I</td><td>None</td><td>CAST</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_45.gif" /></td><td>Prayer</td><td>II</td><td>WIS +</td><td>CAST</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_45.gif" /></td><td>Bless</td><td>III</td><td>WIS +</td><td>CAST</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_45.gif" /></td><td>Benediction</td><td>IV</td><td>WIS +</td><td>CAST</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Increases the Attack and Defense of the party.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_87.gif" /></td><td>Inner Sight</td><td>I</td><td>None</td><td>PASSIVE</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_87.gif" /></td><td>Inner Sight</td><td>II</td><td>WIS +</td><td>PASSIVE</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_87.gif" /></td><td>Inner Sight</td><td>III</td><td>WIS +</td><td>PASSIVE</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_87.gif" /></td><td>Inner Sight</td><td>IV</td><td>WIS +</td><td>PASSIVE</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Allows increased HP and MP recovery through introspection and meditation training.</td></tr>
</table>	
		    </div>
		    <div role="tabpanel" class="tab-pane" id="Combatant">
			    


<br />
<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_65.gif" /></td>
<td width="140">Net</td>
<td width="20">&nbsp;</td>
<td width="75">None</td>
<td width="80">INSTANCE</td>
<td width="140">Attacker CLASS SKILL</td>	
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Skill to bind ankles together. Is not affected by magic resistance, but is affected by level difference. <br />Does not work on monsters. Is a physical enchantment and cannot be destroyed except with Charge, Blaze and Disenchant.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_69.gif" /></td><td>Blaze</td><td>&nbsp;</td><td>None</td><td>INSTANCE</td><td>Attacker CLASS SKILL</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Dispels negative magical and physical enchantments while increasing Accuracy, Resistance, and Movement, but decreases Evasion.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_35.gif" /></td><td>Drain Power</td><td>I</td><td>None</td><td>INSTANCE</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_35.gif" /></td><td>Drain Life</td><td>II</td><td>STR 70+</td><td>INSTANCE</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_35.gif" /></td><td>Soul Bringer</td><td>III</td><td>STR 130+</td><td>INSTANCE</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_35.gif" /></td><td>Drain Blood</td><td>IV</td><td>STR 190+</td><td>INSTANCE</td><td>Each level STR + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Inflicts damage with the Attack Arm, detaunting, slowing, and absorbing HP from the target.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_09.gif" /></td><td>Battle Song</td><td>I</td><td>None</td><td>CHANT</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_09.gif" /></td><td>Battle Cry</td><td>II</td><td>STR 70+</td><td>CHANT</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_09.gif" /></td><td>War Chant</td><td>III</td><td>STR 130+</td><td>CHANT</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_09.gif" /></td><td>Marching Song</td><td>IV</td><td>STR 190+</td><td>CHANT</td><td>Each level STR + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Fils the hearts of all allies within earshot to boost their Attack.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_93.gif" /></td><td>Skillarm Fight</td><td>I</td><td>None</td><td>PASSIVE</td><td>Each level STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_93.gif" /></td><td>Skillarm Fight</td><td>II</td><td>STR 60+</td><td>PASSIVE</td><td>Each level STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_93.gif" /></td><td>Skillarm Fight</td><td>III</td><td>STR 108+</td><td>PASSIVE</td><td>Each level STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_93.gif" /></td><td>Skillarm Fight</td><td>IV</td><td>STR 156+</td><td>PASSIVE</td><td>Each level STR + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Allows the use of an Attack Arm for extra attacks and more damage.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_36.gif" /></td><td>Shockwave</td><td>I</td><td>None</td><td>INSTANCE</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_36.gif" /></td><td>Shock Ring</td><td>II</td><td>STR 70+</td><td>INSTANCE</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_36.gif" /></td><td>Shock Rocket</td><td>III</td><td>STR 130+</td><td>INSTANCE</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_36.gif" /></td><td>Outburst</td><td>IV</td><td>STR 190+</td><td>INSTANCE</td><td>Each level STR + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Is generated by striking the ground with the Attack Arm. Nearby enemies are slowed and detaunted.</td></tr>
</table>
<br />
<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_65.gif" /></td>
<td width="140">Net</td>
<td width="20">&nbsp;</td>
<td width="75">None</td>
<td width="80">INSTANCE</td>
<td width="140">Templar CLASS SKILL</td>	
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Skill to bind ankles together. Is not affected by magic resistance, but is affected by level difference. <br />Does not work on monsters. Is a physical enchantment and cannot be destroyed except with Charge, Blaze and Disenchant.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_68.gif" /></td><td>Charging</td><td>&nbsp;</td><td>None</td><td>INSTANCE</td><td>Templar CLASS SKILL</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Dispels negative magical and physical enchantments while increasing Defense, Resistance, and Movement.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_59.gif" /></td><td>Guard</td><td>I</td><td>None</td><td>CAST</td><td>Each level CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_59.gif" /></td><td>Heavy Guard</td><td>II</td><td>CON 60+</td><td>CAST</td><td>Each level CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_59.gif" /></td><td>Rune of Guarding</td><td>III</td><td>CON 108+</td><td>CAST</td><td>Each level CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_59.gif" /></td><td>Keeping Ward</td><td>IV</td><td>CON 156+</td><td>CAST</td><td>Each level CON + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Changes an ally's block rate and is not affected by Guardarm.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_33.gif" /></td><td>Fast Hit</td><td>I</td><td>None</td><td>INSTANCE</td><td>Each level CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_33.gif" /></td><td>Rush</td><td>II</td><td>CON 60+</td><td>INSTANCE</td><td>Each level CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_33.gif" /></td><td>Tri Rush</td><td>III</td><td>CON 108+</td><td>INSTANCE</td><td>Each level CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_33.gif" /></td><td>Crazy Rush</td><td>IV</td><td>CON 156+</td><td>INSTANCE</td><td>Each level CON + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Is a powerful attack that taunts and slows.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_34.gif" /></td><td>Mana Convert</td><td>I</td><td>None</td><td>INSTANCE</td><td>Each level STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_34.gif" /></td><td>Mana Operation</td><td>II</td><td>STR 60+</td><td>INSTANCE</td><td>Each level STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_34.gif" /></td><td>Vital Energy</td><td>III</td><td>STR 108+</td><td>INSTANCE</td><td>Each level STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_34.gif" /></td><td>Refresh</td><td>IV</td><td>STR 156+</td><td>INSTANCE</td><td>Each level STR + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Converts one's own MP into HP.</td></tr>
</table>
<br />
<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_66.gif" /></td>
<td width="140">Detection</td>
<td width="20">&nbsp;</td>
<td width="75">None</td>
<td width="80">INSTANCE</td>
<td width="140">Gunner CLASS SKILL</td>	
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Detects nearby enemies, even if they are cloaked in Stealth.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_37.gif" /></td><td>Firing</td><td>I</td><td>None</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_37.gif" /></td><td>Discharge</td><td>II</td><td>DEX 60+</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_37.gif" /></td><td>Quick Fire</td><td>III</td><td>DEX 108+</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_37.gif" /></td><td>Crossfire</td><td>IV</td><td>DEX 156+</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Fires ammunition from the Gunarm.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_23.gif" /></td><td>Camouflage</td><td>I</td><td>None</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_23.gif" /></td><td>Disguise</td><td>II</td><td>DEX 60+</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_23.gif" /></td><td>No Breath</td><td>III</td><td>DEX 108+</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_23.gif" /></td><td>Shadow Form</td><td>IV</td><td>DEX 156+</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Provides a temporary disguise which blends into the surroundings. Movement, duration, and preparation time improves with skill level.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_60.gif" /></td><td>Blast</td><td>I</td><td>None</td><td>CAST</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_60.gif" /></td><td>Heavy Blast</td><td>II</td><td>DEX 60+</td><td>CAST</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_60.gif" /></td><td>Hand Cannon</td><td>III</td><td>DEX 108+</td><td>CAST</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_60.gif" /></td><td>Charged Blast</td><td>IV</td><td>DEX 156+</td><td>CAST</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Is a powerful Gunarm attack.</td></tr>
</table>
		    </div>
		    <div role="tabpanel" class="tab-pane" id="Officiator">
		    	


<br />
<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_73.gif" /></td>
<td width="140">Dispel</td>
<td width="20">&nbsp;</td>
<td width="75">None</td>
<td width="80">INSTANCE</td>
<td width="140">Officiator CLASS SKILL</td>	
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Destroys all enchantments near a target enemy.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_70.gif" /></td><td>Recall</td><td>&nbsp;</td><td>None</td><td>INSTANCE</td><td>Rune Officiator CLASS SKILL</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Teleports the caster's party to his present location.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_61.gif" /></td><td>Rot</td><td>I</td><td>None</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_61.gif" /></td><td>Decomposition</td><td>II</td><td>INT 70+</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_61.gif" /></td><td>Rune of Decay</td><td>III</td><td>INT 130+</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_61.gif" /></td><td>Decay Hazard</td><td>IV</td><td>INT 190+</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Poisons an enemy target.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_62.gif" /></td><td>Shock</td><td>I</td><td>None</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_62.gif" /></td><td>Damage</td><td>II</td><td>INT 70+</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_62.gif" /></td><td>Rune of Shock</td><td>III</td><td>INT 130+</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_62.gif" /></td><td>Electroshock</td><td>IV</td><td>INT 190+</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Causes electrical damage to an enemy.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_63.gif" /></td><td>Shackle</td><td>I</td><td>None</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_63.gif" /></td><td>Dark Cage</td><td>II</td><td>INT 70+</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_63.gif" /></td><td>Rune of Shackle</td><td>III</td><td>INT 130+</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_63.gif" /></td><td>Cage of Death</td><td>IV</td><td>INT 190+</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Holds a single enemy.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_38.gif" /></td><td>Disjoint</td><td>I</td><td>None</td><td>INSTANCE</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_38.gif" /></td><td>Cleaves</td><td>II</td><td>INT 70+</td><td>INSTANCE</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_38.gif" /></td><td>Rune of Destruction</td><td>III</td><td>INT 130+</td><td>INSTANCE</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_38.gif" /></td><td>Torn Asunder</td><td>IV</td><td>INT 190+</td><td>INSTANCE</td><td>Each level INT + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Unleashes the powers of the earth to damage an enemy.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_53.gif" /></td><td>Enchant Weapon</td><td>I</td><td>None</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_53.gif" /></td><td>Enhance Weapon</td><td>II</td><td>INT 70+</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_53.gif" /></td><td>Buff Weapon</td><td>III</td><td>INT 130+</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_53.gif" /></td><td>Heroic Weapon</td><td>IV</td><td>INT 190+</td><td>CAST</td><td>Each level INT + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Magically reinforces an Ally's weapon, increasing his attack power.</td></tr>
</table>
<br />
<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_73.gif" /></td>
<td width="140">Dispel</td>
<td width="20">&nbsp;</td>
<td width="75">None</td>
<td width="80">INSTANCE</td>
<td width="140">Officiator CLASS SKILL</td>	
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Destroys all enchantments near a target enemy.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_72.gif" /></td><td>Resurrection</td><td>&nbsp;</td><td>None</td><td>INSTANCE</td><td>Life Officiator CLASS SKILL</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Recalls the soul of a fallen ally to its body.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_67.gif" /></td><td>Purification</td><td>&nbsp;</td><td>None</td><td>INSTANCE</td><td>Life Officiator CLASS SKILL</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Destroys foul enchantments affecting nearby allies.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_28.gif" /></td><td>Wounds Graft</td><td>I</td><td>None</td><td>INSTANCE</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_28.gif" /></td><td>Sacred Wounds</td><td>II</td><td>WIS 70+</td><td>INSTANCE</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_28.gif" /></td><td>Divine Life</td><td>III</td><td>WIS 130+</td><td>INSTANCE</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_28.gif" /></td><td>Life Sharing</td><td>IV</td><td>WIS 190+</td><td>INSTANCE</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Heals an ally by grafting wounds onto the caster's own body.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_30.gif" /></td><td>Wounds</td><td>I</td><td>None</td><td>INSTANCE</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_30.gif" /></td><td>Wounds</td><td>II</td><td>WIS 70+</td><td>INSTANCE</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_30.gif" /></td><td>Wounds</td><td>III</td><td>WIS 130+</td><td>INSTANCE</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_30.gif" /></td><td>Wounds</td><td>IV</td><td>WIS 190+</td><td>INSTANCE</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Inflicts a spirital wound on an enemy's soul which manifests as an actual wound on the body.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_55.gif" /></td><td>Heal</td><td>I</td><td>None</td><td>CAST</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_55.gif" /></td><td>Cure Wounds</td><td>II</td><td>WIS 70+</td><td>CAST</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_55.gif" /></td><td>Recovery</td><td>III</td><td>WIS 130+</td><td>CAST</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_55.gif" /></td><td>Restoration</td><td>IV</td><td>WIS 190+</td><td>CAST</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Mends an ally's wounds.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_39.gif" /></td><td>Flash</td><td>I</td><td>None</td><td>INSTANCE</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_39.gif" /></td><td>Flashbang</td><td>II</td><td>WIS 70+</td><td>INSTANCE</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_39.gif" /></td><td>Blind</td><td>III</td><td>WIS 130+</td><td>INSTANCE</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_39.gif" /></td><td>Curse of Light</td><td>IV</td><td>WIS 190+</td><td>INSTANCE</td><td>Each level WIS + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Inflicts damage and stuns an enemy target Unaffected by Mana Shield or Flexibility.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_10.gif" /></td><td>Tractable Chant</td><td>I</td><td>None</td><td>CHANT</td><td>Each level WIS + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_10.gif" /></td><td>Patience Chant</td><td>II</td><td>WIS 60+</td><td>CHANT</td><td>Each level WIS + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_10.gif" /></td><td>Tractable Aura</td><td>III</td><td>WIS 108+</td><td>CHANT</td><td>Each level WIS + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_10.gif" /></td><td>Patience Aura</td><td>IV</td><td>WIS 156+</td><td>CHANT</td><td>Each level WIS + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Increases the HP recovery rate and the Defense of all party members. </td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_11.gif" /></td><td>Rage Chant</td><td>I</td><td>None</td><td>CHANT</td><td>Each level WIS + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_11.gif" /></td><td>Impatience Chant</td><td>II</td><td>WIS 60+</td><td>CHANT</td><td>Each level WIS + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_11.gif" /></td><td>Rage Aura</td><td>III</td><td>WIS 108+</td><td>CHANT</td><td>Each level WIS + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_11.gif" /></td><td>Impatience Aura</td><td>IV</td><td>WIS 156+</td><td>CHANT</td><td>Each level WIS + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Increases the Damage and the MP recovery rate of all party members</td></tr>
</table>
<br />
<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_73.gif" /></td>
<td width="140">Dispel</td>
<td width="20">&nbsp;</td>
<td width="75">None</td>
<td width="80">INSTANCE</td>
<td width="140">Officiator CLASS SKILL</td>	
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Destroys all enchantments near a target enemy.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_66.gif" /></td><td>Detection</td><td>&nbsp;</td><td>None</td><td>INSTANCE</td><td>Shadow Officiator CLASS SKILL</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Detects nearby enemies, even if they are cloaked in Stealth.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_40.gif" /></td><td>Wounds Blast</td><td>I</td><td>None</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_40.gif" /></td><td>Smoke of Blood</td><td>II</td><td>DEX 60+</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_40.gif" /></td><td>Rune of Ambush</td><td>III</td><td>DEX 108+</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_40.gif" /></td><td>Death Mark</td><td>IV</td><td>DEX 156+</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Is a powerful detaunting Knife Arm attack.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_21.gif" /></td><td>Stealth</td><td>I</td><td>None</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_21.gif" /></td><td>Infiltration</td><td>II</td><td>DEX 60+</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_21.gif" /></td><td>Cloaking</td><td>III</td><td>DEX 108+</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_21.gif" /></td><td>Breezing</td><td>IV</td><td>DEX 156+</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Improves how quickly and how long one can move about undetected by enemies. If Stealth is broken, some time must pass before the body is ready to hide in the shadows again.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_41.gif" /></td><td>Dagger Fire</td><td>I</td><td>None</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_41.gif" /></td><td>Dagger Blast</td><td>II</td><td>DEX 60+</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_41.gif" /></td><td>Exploding Dagger</td><td>III</td><td>DEX 108+</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_41.gif" /></td><td>Blade Swarm</td><td>IV</td><td>DEX 156+</td><td>INSTANCE</td><td>Each level DEX + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Shoots blades generated by the Knife Arm, and can be done in stealth.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_93.gif" /></td><td>Skillarm Fight</td><td>I</td><td>None</td><td>PASSIVE</td><td>Each level STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_93.gif" /></td><td>Skillarm Fight</td><td>II</td><td>STR 60+</td><td>PASSIVE</td><td>Each level STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_93.gif" /></td><td>Skillarm Fight</td><td>III</td><td>STR 108+</td><td>PASSIVE</td><td>Each level STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_93.gif" /></td><td>Skillarm Fight</td><td>IV</td><td>STR 156+</td><td>PASSIVE</td><td>Each level STR + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">Allow the use of an Knife Arm for extra attacks and more damage.</td></tr>
<!--Stealing
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_01.gif" /></td><td>Stealing</td><td>I</td><td>None</td><td>CHANT</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_01.gif" /></td><td>Stealing</td><td>II</td><td>STR +</td><td>CHANT</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_01.gif" /></td><td>Stealing</td><td>III</td><td>STR +</td><td>CHANT</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_01.gif" /></td><td>Stealing</td><td>IV</td><td>STR +</td><td>CHANT</td><td>Each level STR + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">description</td></tr>
-->
</table>
		    </div>
		  </div>
		
		</div>
	      <!-- Contents End -->
	</div>
</div>
		</div>
		
		
		<div class="col-md-4 zero_padding zero_margin right_side" align="center" id="right_container">
			






<div style="float:left;">
	<div style="max-width:175px; width:94.594594594594594594594594594595%; margin:0 5px 5px 5px;">
		<a href="http://rowplayon.com/Page/en/forum/forum.jsp?p=2&bbs=4&offset=1726"><img src="/Page/img/main/Item_Recovery.jpg" class="img-responsive" /></a>
	</div>
	
	
	<div style="max-width:175px; width:94.594594594594594594594594594595%; margin:0 5px 5px 5px;">
		<a href="/Page/en/forum/forum.jsp?p=2&bbs=4&offset=172"><img src="/Page/img/main/menu3-global.png" class="img-responsive" /></a>
	</div>
	
	<div style="max-width:175px; width:94.594594594594594594594594594595%; margin:0 5px 5px 5px;">
		<a href="/Page/en/forum/forum.jsp?p=2&bbs=4&offset=220"><img src="/Page/img/main/menu4-global.jpg" class="img-responsive" /></a>
	</div>
	
	<div id="ranking" style="max-width:175px; width:94.594594594594594594594594594595%; margin:3px 5px 3px 5px; line-height:1em;">
		<img src="/Page/img/main/ranking-top.gif" class="img-responsive" onclick='RankingWin()' style="cursor: pointer"/>
	</div>
	
	
	<div id="ranking" style="max-width:175px; width:94.594594594594594594594594594595%; margin:3px 5px 3px 5px; line-height:1em;">
		<img src="/Page/img/main/HIGH-WAR-STATUS-global.jpg" class="img-responsive" onclick='PlayerWin()' style="cursor: pointer"/>
	</div>
	
	
	<div style="max-width:175px; width:94.594594594594594594594594594595%; margin:0 5px 5px 5px;">
		<a href="/Page/en/itemMall/itemMall.jsp?p=3"><img src="/Page/img/main/item4.jpg" class="img-responsive" /></a>
	</div>
	
	<div style="max-width:175px; width:94.594594594594594594594594594595%; ">
		<a href="http://rowplayon.com/Page/en/forum/forum.jsp?p=2&bbs=7&offset=2384"><img src="/Page/img/main/Account-Protection.jpg" class="img-responsive" /></a>
	</div>
	
	
	<div id="best_item" style="max-width:175px; width:94.594594594594594594594594594595%;
		background-image:url(/Page/img/main/box3.gif); background-size:100% 100%; margin:5px 5px 0 5px; padding:5px 5px 0 5px;">
		<b>Best Selling Item</b><br/>
		<ul class="media-list" style="margin:15px 0 0 0; padding:0 0 0 0;">
				<li class='media' style='height:52px; margin:5px 0 5px 0;'>
		<a href='/Page/en/itemMall/itemMall.jsp?p=3&kind=1'>
			<div class='media-left'>
				<img src='/Page/img/main/best_01.gif' style='padding:0px 0px 0px 5px'>
			</div>
			<div class='media-body' style='text-align:left;'>
				<div style='font-size:9pt;'><b>Gold Box</b></div>
				<div style='font-size:8pt;'>EXP/Drop +50%</div>
			</div>
		</a>
	</li>
	<li class='media' style='height:52px; margin:5px 0 5px 0;'>
		<a href='/Page/en/itemMall/itemMall.jsp?p=3&kind=3'>
			<div class='media-left'>
				<img src='/Page/img/main/best_04.gif' style='padding:0px 0px 0px 5px'>
			</div>
			<div class='media-body' style='text-align:left;'>
				<div style='font-size:9pt;'><b>Holy Orb of Exp</b></div>
				<div style='font-size:8pt;'>EXP +30% / 1hour</div>
			</div>
		</a>
	</li>
	<li class='media' style='height:52px; margin:5px 0 5px 0;'>
		<a href='/Page/en/itemMall/itemMall.jsp?p=3&kind=5'>
			<div class='media-left'>
				<img src='/Page/img/main/best_02.gif' style='padding:0px 0px 0px 5px'>
			</div>
			<div class='media-body' style='text-align:left;'>
				<div style='font-size:9pt;'><b>Stone of Rebirth</b></div>
				<div style='font-size:8pt;'>Redistribute stat points</div>
			</div>
		</a>
	</li>

		</ul>
	</div>
</div>
<div style="float:left;">
	
	<div style="max-width:175px; width:94.594594594594594594594594594595%; margin:0 5px 5px 5px;">
		<a href="#ServerMergeGuide"><img src="/Page/img/main/server_merge_guide.gif" class="img-responsive" /></a>
	</div>
</div>
<script>
myWindow=null;

function RankingWin()
{
	myWindow=window.open('/Page/'+'/rank.jsp','Ranking','width=500,height=320');
}
function PlayerWin()
{
	myWindow=window.open('/Page/'+'/player.jsp','Player','width=500,height=320');
}


</script>
		</div>
	</div>
</div>






<div class="panel-footer" align="center" style="color:#646464; background-color: #e3e3e3;">
	<div style="max-width:1000px; width:100%; height:50px;">
		<div class="col-md-2">
			<img src="/Page/img/footer/logo_f.png" class="img-responsive" />
		</div>
		<div class="col-md-8">
			<script type="text/javascript">
			var winopts= "width=600,height=500,toolbar=no,location=no,directories=no, status=no, menubar=no,scrollbars=yes,resizable=no";
			function privacy() {
				var popWindow = window.open('/Page/member/privacy.html','privacy', winopts);
				return true;
			}
			function agree() {
				var popWindow = window.open('/Page/member/agree.html','agree', winopts);
				return true;
			}
			function roc() {
				var popWindow = window.open('/Page/member/RoC.html','roc', winopts);
				return true;
			}
			</script>
			<b><a href="http://www.youxiland.com/" target="_blank">Company Information</a> | <a href="#" onclick="privacy()">Privacy Policy</a> | <a href="#" onclick="agree()">Service Agreement</a> | <a href="#" onclick="roc()">Rules of Conduct</a></b><br/>
			COPYRIGHT &copy; Youxiland Co., Ltd. ALL RIGHTS RESERVED.
		</div>
		<!-- <div class="col-md-2">
			<select name="select" class="sb_submit2" onChange="window.open(this.options[this.selectedIndex].value,'_blank','toolbar=yes,location=yes,directories=yes,status=yes,menubar=yes,scrollbars=yes,resizable=yes');this.selectedIndex=0;">
				<option>---Family Site ---</option>
				<option value="http://www.youxiland.com/">Youxiland Digital</option>
			</select>
		</div> -->
	</div>
</div>


</body>
</html>