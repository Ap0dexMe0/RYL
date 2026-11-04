AuthServer RYL2:
statlog
statclear
reloadpass
flush
reloadsetup
startserver

UIDServer RYL2:
perflog
statlog
statclear
flush
reload

LoginServer RYL2:
reloadscript
reloadsetup
flush
ip_admin_only
ip_open_all
ip_open_allowed
server_open
server_ready_patch
server_close

DBAgentServer RYL2:
siegetime
reloadsiegetime
reloadadmin
loadchar <UID> <CID>
connect
reloadsetup
flush

ChatServer RYL2:
statlog
reloadsetup
connect
flush
log
pool

GameServer RYL2:
resetdummies
setdummies <id>
statlog
statclear
lotteryevent
autobalance
notify <text>
itemdroplist
itemdrop <nick> <itemID> <amount>
flush
reloadsetup
log
pool
connect
startserver
