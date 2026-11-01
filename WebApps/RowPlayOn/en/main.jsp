


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

<script type="text/javascript" src="/Page/js/imageMapResizer.min.js"></script>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.8";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>


<div style="margin:0 0 10px 0;">
	<!-- <div class="hidden-xs">
    <div style="position:absolute;">https://www.facebook.com/plugins/like/connect/
    	<div style="position:relative; left:165px; top:272px; width:" id="facebook_layer">
			<div class="fb-like" data-href="https://www.facebook.com/rowplayon/" data-width="120" data-layout="button" data-action="like" data-size="large" data-show-faces="true" data-share="true"></div>
		</div>
	</div>
	</div> -->
	<img src="/Page/en/img/main_p/main-image6.jpg" class="img-responsive" id="mainImage" usemap="#Map" />
	
	<map name="Map">
		<area target="_blank" alt="" title="" href="https://www.youtube.com/@ReturnofWarriorLive" coords="18,17,135,182" shape="rect">
	</map>'
<!-- 	<div class="visible-xs-block" style="align:center; text-align:center;">
		<div class="fb-like" data-href="https://www.facebook.com/rowplayon/" data-width="120" data-layout="button" data-action="like" data-size="large" data-show-faces="true" data-share="true"></div>
	</div> -->
</div>
<script>
function moveLikeButton() {
	var mainImgW = $("#mainImage").css("width").split("px")[0];
	var mainImgH = $("#mainImage").css("height").split("px")[0];
	$("#facebook_layer").css("left", (165*mainImgW/1607) + "px");
	$("#facebook_layer").css("top", (272*mainImgH/346.5) + "px");
}
$(document).ready(function() {
	$('map').imageMapResize();
	moveLikeButton();
});
$(window).resize(function() {
	moveLikeButton();
});
</script>


<div class="container" align="center">
	<div class="row" id="main_container" style="width:100%; color:#646464;">
		
		<div class="col-md-4 zero_padding" align="center" id="left_container">
			



<style type="text/css">
	@import url("/Page/css/main-left.css");
</style>



















<script type="text/javascript" src="/Page/RSA/jsbn.js"></script>
<script type="text/javascript" src="/Page/RSA/rsa.js"></script>
<script type="text/javascript" src="/Page/RSA/prng4.js"></script>
<script type="text/javascript" src="/Page/RSA/rng.js"></script>
<script type="text/javascript">
var rsaPublicKeyModulus = "b8882db34bec0faf7922292de16e049cb4da016b4e52d7f22ad5d93bd71ae6822936b7555738a9f8ad3008351970bbc975c8d6d21daa0de5c773fa5ab2e0b67556daae55f3b5c99ded6224560a7e4e937a8c1046e1a2deac5dfe13a171ee2ad362fe04b664182c9c8bde4986aa001539e9a503bf29c40b4ba384e31e64209e25";
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



<script>
var myWindow9=null;
//myWindow.focus();
function CouponProcess()
{
	myWindow9=window.open('/Page/'+'coupon/input_coupon.jsp','Coupon','width=320, height=240');
}


</script>

<div id="img_btn_container" class="zero_padding zero_margin side_img_btns">
	<a href="#" onclick='CouponProcess()'><img src="/Page/en/img/main/coupon_eng.gif" class="img-responsive zero_margin" style="width: 174px; float:left;" /></a>
	<a href="/Page/en/member/member.jsp?p=1"><img src="/Page/en/img/main/free_registration.gif" class="img-responsive zero_margin" style="width: 174px; float:left;" /></a>
	<a href="/Page/en/gameGuide/gameGuide.jsp?p=1"><img src="/Page/en/img/main/beginner's_guide.gif" class="img-responsive zero_margin" style="width: 174px; float:left;" /></a>
	<a href="/Page/en/download/download.jsp"><img src="/Page/en/img/main/client_download.gif" class="img-responsive zero_margin" style="width: 174px; float:left;" /></a>
</div>
<div id="info_container" align="center" class="side_under_login">
	
	<div id="clock" style="margin:36px 0 5px 0; padding:5px 5px 5px 5px; width: 174px; background-color:white; border-radius:0 0 0 0; border-width: thin; border-style: solid; border-color: #e0e0e0; font-size:13px;"></div>
	<script>
	function getWorldTime(tzOffset) {
		var now = new Date();
		var tz = now.getTime() + (now.getTimezoneOffset() * 60000) + (tzOffset * 3600000);
		now.setTime(tz);
		var s =
			leadingZeros(now.getHours(), 2) + ' : ' +
			leadingZeros(now.getMinutes(), 2) + ' : ' +
			leadingZeros(now.getSeconds(), 2);
		return s;
	}
	function leadingZeros(n, digits) {
		var zero = '';
		n = n.toString();
		if (n.length < digits) {
			for (i = 0; i < digits - n.length; i++)
				zero += '0';
		}
		return zero + n;
	}
	function startTime() {
		document.getElementById('clock').innerHTML = "Current Time(GMT+8)<br/>" + getWorldTime(+8);
		var t = setTimeout(startTime, 500);
	}
	$(document).ready(function() {
		startTime();
	});
	</script>
	<!-- 시간 정보 -->
	<table id="time_info" style="margin:5px 0 5px 0; padding:5px 0 0 0; font-size:13px; width: 174px; border:#e0e0e0 thin solid; text-align: center;">
		<tr style="background-color: #e3e3e3;">
			<td style="padding:5px 0 5px 0;"><b style="font-size:14px;">TIME INFORMATION<br/>WORLD (GMT+8)</b></td>
		</tr>
		<tr style="background-color: #ffffff;" align="center">
			<td style="padding:5px 0 5px 0;">
				<b style="font-size:14px;">STATUE WAR TIME</b><br/>
				10:00 / 15:00<br/>
				21:00 / 24:00<br/>
				04:00     
				<hr style="color:#B9B5B6; background-color:#B9B5B6; border-style:solid; border-width:1px; max-width:148px;
							width:84.571428571428571428571428571429%; margin:5px 0 5px 0; padding:0 0 0 0;">
				<b style="font-size:14px;">GUILD WAR TIME</b><br/>
				Every Sunday<br/>
				19:00<br/>
			</td>
		</tr>
	</table>
	
	<table id="server_status" style="margin:5px 0 5px 0; padding:10px 0 0 0; line-height:1em; font-size:13px; width: 174px; border:#e0e0e0 thin solid; text-align: center;">
		<tr style="background-color: #e3e3e3;">
			<td style="padding:10px 0 10px 0;"><b style="font-size:14px;">SERVER STATUS</b></td>
		</tr>
		<tr style="background-color: #ffffff;" align="center">
			<td>
				<table style="text-align:left; width:85%; margin:10px 25px 0 25px;">
					
				</table>
			</td>
		</tr>
		<tr style="background-color: #ffffff;">
			<td>
				<div style="border:#e0e0e0 thin solid; border-radius: 5px; margin: 5px; padding:5px 1px 5px 1px;">
					<b>Server Maintenance</b><br/>
					Fri.08:00 / 09:00(GMT+8)
				</div>
			</td>
		</tr>
	</table>
	
	
	<div id="contact" style="margin:5px 0 5px 0; width: 174px; height:49px; background-image: url(/Page/img/main/mail2.gif); font-size:13px; line-height:22px;">
		<br/>rowmaster@youxiland.com 
	</div>
</div>
		</div>
		
		
		<div class="col-md-4 zero_padding" id="center_container">
			








<style type="text/css">
	@import url("/Page/css/main-center.css");
</style>







<div class="banner_container">
	<a href=""><img src="http://rowplayon.com:100/2026_happynewyear2.jpg" class="img-responsive"></a><p></p><a href=""><img src="http://rowplayon.com:100/xmas2-global.jpg" class="img-responsive"></a><p></p>

</div>

<div class="news_container">
	 <div class='media news_container_title' style='margin:0 5px 0 5px; color:#FFFFFF;'>		<div class='media-left media-middle'>			<img class='media-object' src='/Page/img/main/box4-arrow.gif'>		</div>		<div class='media-body'>			<b>&nbsp;LATEST NEWS</b>		</div>		<div class='media-right media-middle'>			<a href='/Page/en/forum/forum.jsp?p=1&bbs=0'><img class='media-object' src='/Page/img/main/box4-plus.gif'></a>		</div>	</div>
	<div class="news_container_content">
			<div class='media' style='margin:0 0 0 10px; font-size:13px;'>		<div class='media-left media-middle'>			<img class='media-object' src='/Page/img/main/box4-dot.gif'>		</div>		<div class='media-body' style='white-space:nowrap; overflow:hidden; text-overflow:ellipsis;'>			<a href='/Page/en/forum/forum.jsp?p=2&bbs=0&offset=3877' style='color:#898989;'>Apology for Server Instability & Action Against Ma			</a>		</div>	</div>
	<div class='media' style='margin:0 0 0 10px; font-size:13px;'>		<div class='media-left media-middle'>			<img class='media-object' src='/Page/img/main/box4-dot.gif'>		</div>		<div class='media-body' style='white-space:nowrap; overflow:hidden; text-overflow:ellipsis;'>			<a href='/Page/en/forum/forum.jsp?p=2&bbs=0&offset=3874' style='color:#898989;'>New Year Event & Major Update Announcement			</a>		</div>	</div>
	<div class='media' style='margin:0 0 0 10px; font-size:13px;'>		<div class='media-left media-middle'>			<img class='media-object' src='/Page/img/main/box4-dot.gif'>		</div>		<div class='media-body' style='white-space:nowrap; overflow:hidden; text-overflow:ellipsis;'>			<a href='/Page/en/forum/forum.jsp?p=2&bbs=0&offset=3871' style='color:#898989;'>End of Christmas Event & New Year Event Preview			</a>		</div>	</div>
	<div class='media' style='margin:0 0 0 10px; font-size:13px;'>		<div class='media-left media-middle'>			<img class='media-object' src='/Page/img/main/box4-dot.gif'>		</div>		<div class='media-body' style='white-space:nowrap; overflow:hidden; text-overflow:ellipsis;'>			<a href='/Page/en/forum/forum.jsp?p=2&bbs=0&offset=3870' style='color:#898989;'>Expiration of Limited-Time Items & Upcoming Sales			</a>		</div>	</div>
	<div class='media' style='margin:0 0 0 10px; font-size:13px;'>		<div class='media-left media-middle'>			<img class='media-object' src='/Page/img/main/box4-dot.gif'>		</div>		<div class='media-body' style='white-space:nowrap; overflow:hidden; text-overflow:ellipsis;'>			<a href='/Page/en/forum/forum.jsp?p=2&bbs=0&offset=3869' style='color:#898989;'>[Notice] Final Extension: A-Grade Event			</a>		</div>	</div>

	</div>
</div>

<div class="news_container">
	 <div class='media news_container_title' style='margin:0 5px 0 5px; color:#FFFFFF;'>		<div class='media-left media-middle'>			<img class='media-object' src='/Page/img/main/box4-arrow.gif'>		</div>		<div class='media-body'>			<b>&nbsp;UPDATE NEWS</b>		</div>		<div class='media-right media-middle'>			<a href='/Page/en/forum/forum.jsp?p=1&bbs=1'><img class='media-object' src='/Page/img/main/box4-plus.gif'></a>		</div>	</div>
	<div class="news_container_content">
			<div class='media' style='margin:0 0 0 10px; font-size:13px;'>		<div class='media-left media-middle'>			<img class='media-object' src='/Page/img/main/box4-dot.gif'>		</div>		<div class='media-body' style='white-space:nowrap; overflow:hidden; text-overflow:ellipsis;'>			<a href='/Page/en/forum/forum.jsp?p=2&bbs=1&offset=3876' style='color:#898989;'>Update News_Jan, 02, 2026			</a>		</div>	</div>
	<div class='media' style='margin:0 0 0 10px; font-size:13px;'>		<div class='media-left media-middle'>			<img class='media-object' src='/Page/img/main/box4-dot.gif'>		</div>		<div class='media-body' style='white-space:nowrap; overflow:hidden; text-overflow:ellipsis;'>			<a href='/Page/en/forum/forum.jsp?p=2&bbs=1&offset=3867' style='color:#898989;'>Update News_Dec, 24, 2025			</a>		</div>	</div>
	<div class='media' style='margin:0 0 0 10px; font-size:13px;'>		<div class='media-left media-middle'>			<img class='media-object' src='/Page/img/main/box4-dot.gif'>		</div>		<div class='media-body' style='white-space:nowrap; overflow:hidden; text-overflow:ellipsis;'>			<a href='/Page/en/forum/forum.jsp?p=2&bbs=1&offset=3864' style='color:#898989;'>Update News_Dec, 19, 2025			</a>		</div>	</div>
	<div class='media' style='margin:0 0 0 10px; font-size:13px;'>		<div class='media-left media-middle'>			<img class='media-object' src='/Page/img/main/box4-dot.gif'>		</div>		<div class='media-body' style='white-space:nowrap; overflow:hidden; text-overflow:ellipsis;'>			<a href='/Page/en/forum/forum.jsp?p=2&bbs=1&offset=3862' style='color:#898989;'>Update News_Dec, 12, 2025			</a>		</div>	</div>
	<div class='media' style='margin:0 0 0 10px; font-size:13px;'>		<div class='media-left media-middle'>			<img class='media-object' src='/Page/img/main/box4-dot.gif'>		</div>		<div class='media-body' style='white-space:nowrap; overflow:hidden; text-overflow:ellipsis;'>			<a href='/Page/en/forum/forum.jsp?p=2&bbs=1&offset=3859' style='color:#898989;'>Update News_Dec, 05, 2025			</a>		</div>	</div>

	</div>
</div>
		</div>
		
		
		<div class="col-md-4 zero_padding right_side" align="center" id="right_container">
			






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
