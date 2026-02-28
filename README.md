# Mikrotik Blacklist

#### Blacklists

###### blacklist.rsc

- https://www.spamhaus.org/drop/drop.txt
- https://www.spamhaus.org/drop/edrop.txt
- https://check.torproject.org/torbulkexitlist?ip=1.2.3.4
- https://iplists.firehol.org/files/et_block.netset
- https://iplists.firehol.org/files/bds_atif.ipset
- https://iplists.firehol.org/files/alienvault_reputation.ipset
- https://iplists.firehol.org/files/dshield.netset
- https://iplists.firehol.org/files/firehol_level1.netset
- https://iplists.firehol.org/files/firehol_level2.netset
- https://iplists.firehol.org/files/bitcoin_nodes_1d.ipset
- https://iplists.firehol.org/files/bitcoin_nodes_7d.ipset
- https://iplists.firehol.org/files/bitcoin_nodes_30d.ipset
- https://iplists.firehol.org/files/blocklist_de_bruteforce.ipset
- https://iplists.firehol.org/files/et_block.netset
- https://iplists.firehol.org/files/talosintel_ipfilter.ipset
- https://iplists.firehol.org/files/ransomware_rw.ipset
- https://iplists.firehol.org/files/feodo.ipset
- https://iplists.firehol.org/files/firehol_webclient.netset
- https://iplists.firehol.org/files/blocklist_de_ssh.ipset
- https://iplists.firehol.org/files/cta_cryptowall.ipset
- https://iplists.firehol.org/files/et_block.netset
- https://iplists.firehol.org/files/et_compromised.ipset
- https://iplists.firehol.org/files/et_dshield.netset
- https://iplists.firehol.org/files/et_spamhaus.netset
- https://iplists.firehol.org/files/et_tor.ipset
- https://iplists.firehol.org/files/cta_cryptowall.ipset
- https://iplists.firehol.org/files/nullsecure.ipset
- https://iplists.firehol.org/files/coinbl_ips.ipset

###### blacklist.lightweight.rsc

- https://check.torproject.org/torbulkexitlist?ip=1.2.3.4
- https://iplists.firehol.org/files/dshield.netset
- https://iplists.firehol.org/files/firehol_level1.netset
- https://iplists.firehol.org/files/bitcoin_nodes_1d.ipset
- https://iplists.firehol.org/files/blocklist_de_bruteforce.ipset
- https://iplists.firehol.org/files/firehol_webclient.netset
- https://iplists.firehol.org/files/blocklist_de_ssh.ipset
- https://iplists.firehol.org/files/et_block.netset
- https://iplists.firehol.org/files/et_compromised.ipset
- https://iplists.firehol.org/files/et_dshield.netset
- https://iplists.firehol.org/files/et_spamhaus.netset
- https://iplists.firehol.org/files/et_tor.ipset
- https://iplists.firehol.org/files/cta_cryptowall.ipset

#### How to run this on MT
Run following on your MT device once a day (sources are not updated more frequently anyway):

Download script:  
`/tool fetch url="https://raw.githubusercontent.com/darzanebor/mikroblack/master/blacklist/blacklist.rsc" mode=https`  

Install script:  
`/ip firewall address-list remove [find where list="hole-blacklist"]; /import file-name=blacklist.rsc`

You'll also need firewall rule:  
`/ip firewall filter add chain=input action=drop connection-state=new src-address-list=hole-blacklist in-interface=IFNAME`

*Note:
  Replace IFNAME in-interface name with one you have configured*
  
 *Blacklist Rotation Period 1d*
