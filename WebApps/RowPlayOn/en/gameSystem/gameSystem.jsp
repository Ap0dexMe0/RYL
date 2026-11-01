


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
		if (idx == 6) {
			$(this).children('img').attr('src', '/Page/en/img/side/03_game system/sidebox-3-' + idx + '.gif');
		}
		else {
			$(this).children('img').on({
				mouseover: function() {
					$(this).attr('src', '/Page/en/img/side/03_game system/sidebox-3-' + idx + '.gif');
				},
				mouseout: function() {
					$(this).attr('src', '/Page/en/img/side/03_game system/sidebox-2-' + idx + '.gif');
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
var rsaPublicKeyModulus = "8e0728934783399e1a47efa0b7c0d9f74a048b25c674dd70f85a576d1ef3d2a65d7141bd2b5080e2e8a182ead1d8a1ff6b43bf70e0c6eb8e6658c93e71380b8ad0ae89c3e688281119954c5db7e906bb119f53e2d62ad0145e2ceb67476a019a91e173e0be422c84cb3c57e786275626f2947410772904a3f1410f99c5641cf5";
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
	<img src="/Page/en/img/side/03_game system/sidebox-1-03.gif" class="img-responsive" />
	<a href="/Page/en/gameSystem/gameSystem.jsp?p=1" class="side_menu_a"><img src="/Page/en/img/side/03_game system/sidebox-2-1.gif" class="img-responsive" /></a>
	<a href="/Page/en/gameSystem/gameSystem.jsp?p=2" class="side_menu_a"><img src="/Page/en/img/side/03_game system/sidebox-2-2.gif" class="img-responsive" /></a>
	<a href="/Page/en/gameSystem/gameSystem.jsp?p=3" class="side_menu_a"><img src="/Page/en/img/side/03_game system/sidebox-2-3.gif" class="img-responsive" /></a>
	<a href="/Page/en/gameSystem/gameSystem.jsp?p=4" class="side_menu_a"><img src="/Page/en/img/side/03_game system/sidebox-2-4.gif" class="img-responsive" /></a>
	<a href="/Page/en/gameSystem/gameSystem.jsp?p=5" class="side_menu_a"><img src="/Page/en/img/side/03_game system/sidebox-2-5.gif" class="img-responsive" /></a>
	<a href="/Page/en/gameSystem/gameSystem.jsp?p=6" class="side_menu_a"><img src="/Page/en/img/side/03_game system/sidebox-2-6.gif" class="img-responsive" /></a>
	<a href="/Page/en/gameSystem/gameSystem.jsp?p=7" class="side_menu_a"><img src="/Page/en/img/side/03_game system/sidebox-2-7.gif" class="img-responsive" /></a>
	<a href="/Page/en/gameSystem/gameSystem.jsp?p=8" class="side_menu_a"><img src="/Page/en/img/side/03_game system/sidebox-2-8.gif" class="img-responsive" /></a>
</div>

<div id="contact" style="margin:5px 0 5px 0; width: 174px; height:49px; background-image: url(/Page/en/img/main/mail2.gif); font-size:13px; line-height:22px;">
	<br/>rowmaster@youxiland.com 
</div>
</div>
		</div>
		
		
		<div class="col-md-4 zero_padding zero_margin" id="center_container">
			


<style type="text/css">
	@import url("/Page/css/sub-center.css");
	@import url("/Page/css/lay_system.css");
</style>

<div id="main_content">
	<img src="/Page/en/img/in/bar03-6.gif" class="img-responsive" />
	
	<div style="border:thin solid #e8e8e8; background-color:#ffffff; padding:15px 15px 15px 15px; margin:5px 0 5px 0;">
		<!-- Contents Begin -->
		<img src="/Page/img/sub/gameSystem/Contents_img_06.jpg" class="img-responsive">
		<div class="def_area" style="font-weight:bold; text-align:justify;">
		Guild Wars are taking place in Caernarvon every Sunday at  12PM (GMT) and it takes an hour.
		If you participate in a guild war, you will not be able to leave Caernarvon until the end of guild war hours. </div>
		<div class="def_area"><img src="/Page/img/sub/gameSystem/contents_line_01.gif"  class="img-responsive" /></div>
	
		<div align="left" style="margin-bottom:10px; color:#646464;">
			<b style="font-size: 14pt;">Participate a Guild War</b>
		</div>
		<div align="center"><img src="/Page/img/sub/gameSystem/ss_guildwar_01.gif" class="img-responsive" style="border:5px #eeeeee solid" /></div>
		<div class="tdcontents">Click [O] to check the wartime schedule and click 'Participate' on the next to Guild War Hour to join a war.</div>
		<div align="center"><img src="/Page/img/sub/gameSystem/ss_guildwar_02.gif" class="img-responsive" /></div>
		<br/>
		<ul>
		<li style="text-align:left;">To always join the war, press [G] and go to the member tab, then select your name. Once you select your name, you will see 'Participate' below. Clicking the 'Participate' will automatically join you to the war and instantly takes you to Caernarvon when the war starts.</li>
		<li style="text-align:left;">If you want to cancel auto-joining guild wars, please click 'Abstain'.</li>
		</ul>
		
		<div align="left" style="margin-bottom:10px; color:#646464;">
			<b style="font-size: 14pt;">Start the War</b>
		</div>
		<ul>
		<li style="text-align:left;">Once a guild war starts, all players who joined the war will be taken to Edinburgh Castle.</li>
		<li style="text-align:left;">During the war time, you can build or/and defend your fotresses or attack enemies' fortresses to destroy.</li>
		</ul>
		
		<div align="left" style="margin-bottom:10px; color:#646464;">
			<b style="font-size: 14pt;">Guild Fortress</b>
		</div>
		<div class="def_area">
		<div style="float:left; margin-right:5px;"><img src="/Page/img/sub/gameSystem/ss_guildfort_03.gif" class="img-responsive" style="border:5px #eeeeee solid" /></div>
		<div style="text-align:left;"><ul><li style="text-align:left;">All types of fortresses will attack if their enemies come near to them. When they are upgraded, their HP and damage will be increased.</li><li>Every fortress has a certain amount of health. Once it takes enough damages, it will be destroyed.</li></ul></div>
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