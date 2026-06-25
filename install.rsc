/system script 
add name="hole-blacklist" source={/tool fetch url="https://raw.githubusercontent.com/darzanebor/mikroblack/master/blacklist/blacklist.rsc" mode=https}
add name="hole-blacklist-replace" source {/ip firewall address-list remove [find where list="hole-blacklist"]; /import file-name=blacklist.rsc}
/system scheduler 
add interval=7d name="download-blacklist" start-date=Jan/01/2000 start-time=00:05:00 on-event=hole-blacklist
add interval=7d name="rotate-blacklist" start-date=Jan/01/2000 start-time=00:10:00 on-event=hole-blacklist-replace
