


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
			


<style type="text/css">
	@import url("/Page/css/sub-left.css");
</style>

<script type="text/jscript">
$(function() {
	$('.side_menu_a').each(function(index) {
		var idx = index+1;
		if (idx == 3) {
			$(this).children('img').attr('src', '/Page/en/img/side/01_getting strted/sidebox-3-' + idx + '.gif');
		}
		else {
			$(this).children('img').on({
				mouseover: function() {
					$(this).attr('src', '/Page/en/img/side/01_getting strted/sidebox-3-' + idx + '.gif');
				},
				mouseout: function() {
					$(this).attr('src', '/Page/en/img/side/01_getting strted/sidebox-2-' + idx + '.gif');
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
var rsaPublicKeyModulus = "c2f4adec76d9e81dbbed17f2b4fcb541f87968687e411f5133a4fd9c29fa6f04c65c0f1c36dada38e52461f9550b3b6a3ccad2fb595c55485e637a00d01ba408c3eb9c18688533e252ea79210ae6460607701d300c4bbe5ef8de25a247a80898c248e18ce45fb9589431ee6d3b095f8e7f8d4143dfde2ad56deaa718cedf2cd9";
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
	<img src="/Page/en/img/side/01_getting strted/sidebox-1-00.gif" class="img-responsive" />
	<a href="/Page/en/gettingStarted/gettingStarted.jsp?p=1" class="side_menu_a"><img src="/Page/en/img/side/01_getting strted/sidebox-2-1.gif" class="img-responsive" /></a>
	<a href="/Page/en/gettingStarted/gettingStarted.jsp?p=2" class="side_menu_a"><img src="/Page/en/img/side/01_getting strted/sidebox-2-2.gif" class="img-responsive" /></a>
	<a href="/Page/en/gettingStarted/gettingStarted.jsp?p=3" class="side_menu_a"><img src="/Page/en/img/side/01_getting strted/sidebox-2-3.gif" class="img-responsive" /></a>
	<a href="/Page/en/gettingStarted/gettingStarted.jsp?p=4" class="side_menu_a"><img src="/Page/en/img/side/01_getting strted/sidebox-2-4.gif" class="img-responsive" /></a>
	<a href="/Page/en/gettingStarted/gettingStarted.jsp?p=5" class="side_menu_a"><img src="/Page/en/img/side/01_getting strted/sidebox-2-5.gif" class="img-responsive" /></a>
	<a href="/Page/en/gettingStarted/gettingStarted.jsp?p=6" class="side_menu_a"><img src="/Page/en/img/side/01_getting strted/sidebox-2-6.gif" class="img-responsive" /></a>
</div>

<div id="contact" style="margin:5px 0 5px 0; width: 174px; height:49px; background-image: url(/Page/en/img/main/mail2.gif); font-size:13px; line-height:22px;">
	<br/>master@rowplayon.com
</div>
</div>
		</div>
		
		
		<div class="col-md-4 zero_padding zero_margin" id="center_container">
			


<style type="text/css">
	@import url("/Page/css/sub-center.css");
	@import url("/Page/css/lay_startgame.css");
</style>

<div id="main_content">
	<img src="/Page/en/img/in/bar01-3.gif" class="img-responsive" />
	
	<div style="border:thin solid #e8e8e8; background-color:#ffffff; padding:15px 15px 15px 15px; margin:5px 0 5px 0;">
		<!-- Contents Begin -->
		<div style="text-align:center;"><img src="/Page/img/sub/gameStarted/start_img_002.jpg" class="img-responsive" /></div><br>
		<div align="justify">
	    <b>After the installation procedure has completed, you can start the game by double-clicking the ROW shortcut.</b><br />
	
		    ※ Select [ Start -> Programs -> Youxiland -> ROW -> Return of Warrior.exe ] or double-click shortcut [ Return of Warrior.exe ] on your desktop to start the game.<br />
		<!-- <img src="/Page/img/sub/gameStarted/contents_04.gif" class="img-responsive" style="padding:10px 0px 0px 0px"/> -->
	
		<div style="padding:10px 0px 10px 0px; line-height:17px"><img src="/Page/img/sub/gameStarted/contents_line_01.gif" class="img-responsive" /><br /></div>
	    
	    
	    <div style="padding:0px 0px 10px 0px"><b>When you start the game, you will get a game launcher with basic information.</b></div>
	    <div style="padding:0px 0px 10px 0px"><img src="/Page/img/sub/gameStarted/main_1.png" class="img-responsive" /></div>
	
	    <img src="/Page/img/sub/gameStarted/icon_1.gif" /><b> Notice</b>
	    <div style="padding:0px 7px 15px 18px">Announces latest and update news with links to take you to the ROW website.</div>
	    
	    <!-- <img src="/Page/img/sub/gameStarted/icon_b.gif" /><b> Server List</b>
	    <div style="padding:0px 7px 15px 18px">Displays the available servers. Select a server or double-click on a server to proceed to the login screen.
	    <div style="color:#990000; font-size:8pt">* In order to play a specific character, you have to select the same server where you created the character.</div></div> -->
	    
	    <img src="/Page/img/sub/gameStarted/icon_2.gif" /><b> Status Bar</b>
	    <!-- <div style="padding:0px 7px 15px 18px">Displays the patching information or a server-client connection status. If the client is up-to-date, "Connected to Login Server successfully" will be displayed.</div> -->
	    <div style="padding:0px 7px 15px 18px">Displays the patching information status. If the client is up-to-date, "Update completed!" will be displayed.</div>
	    
	    <img src="/Page/img/sub/gameStarted/icon_3.gif" /><b> Game Start</b>
	    <!-- <div style="padding:0px 7px 15px 18px">Click this button to proceed to the login screen when a server is selected. If a specific server is not listed, then the server is under maintenance.</div> -->
	    <div style="padding:0px 7px 15px 18px">Click this button to start ROW.</div>
	    
	    <img src="/Page/img/sub/gameStarted/icon_4.gif" /><b> Settings</b>
	    <div style="padding:0px 7px 15px 18px">This executes ClientSetup.exe file to choose your language or/and adjust your client settings. The detailed information is explained in the <a href="gettingStarted.jsp?p=4"><font color="#990000"><b>[Client Settings]</b></font></a> page.</div>
	    
	    <img src="/Page/img/sub/gameStarted/icon_5.gif" /><b> Join</b>
	    <div style="padding:0px 7px 15px 18px">This takes you to the free registration page. You cannot play the game without an account. Please click this button to register an account if you do not have an account.</div>
	    
	    <!-- <img src="/Page/img/sub/gameStarted/icon_2.gif" /><b> Change Password</b>
	    <div style="padding:0px 7px 15px 18px">This takes you to the user information page where you can change your password and other information.</div>
	    
	    <img src="/Page/img/sub/gameStarted/icon_3.gif" /><b> Settings</b>
	    <div style="padding:0px 7px 15px 18px">This executes ClientSetup.exe file to choose your language or/and adjust your client settings. The detailed information is explained in the <a href="gettingStarted.jsp?p=4"><font color="#990000"><b>[Client Settings]</b></font></a> page.</div>
	    
	    <img src="/Page/img/sub/gameStarted/icon_4.gif" /><b> File Check</b>
	    <div style="padding:0px 7px 15px 18px">If you are having problems with your game client, this will scan your game files to make sure everything is installed properly. This will download any patches needed and intall them.
	    <div style="color:#990000; font-size:8pt">* This might might take some time based on your ISP connection speed.</div></div>
	    
	    <img src="/Page/img/sub/gameStarted/icon_5.gif" /><b> Music On/Off</b>
	    <div style="padding:0px 7px 15px 18px">This toggles the launcher background music on and off.</div>
	    
	    <img src="/Page/img/sub/gameStarted/icon_6.gif" /><b> Quit</b>
	    <div style="padding:0px 7px 0px 18px">This exists the game launcher.</div> -->
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