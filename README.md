# automated-scans-sh
A collection of bash scripts to help automate scanning.

Most  of these I wrote when I was still learning how I want to script things and I was still relatively new to it. Haven't got around to making proper documentation.

------

A lot of the scripts were written late at night, but they work and work well.

------

Scripts like ranges-to-domains.sh, ranges-to-ips.sh, getips_from_asn.sh, and domains_from_asn.sh were the "same", but I took into account that sometimes I either wanted only ips or ranges or I wanted to get ranges, but directly try to run hakrevdns to get domains.

It all varied with what I wanted and what I had to work with originally so because of these variables, I decided to have seperate scripts for now.

I could in the future merge them all into one, but don't see that as a need at the moment.

The original script was a one-liner, but it was very basic.

------

The rustscan_map.sh script originally came as an idea from the masscan + nmap scripts, but I'm not really a huge fan of masscan (I just don't like it) and I do fine rustscan a bit better to a point. I usually don't care about speed since I find that focus on speed is usually kind of sloppy and isn't 100% accurate, but sometimes, I need something in a pinch so speed matters to a certain point.

------

The chkalive_nmap.sh script originally was supposed to use fping, but I couldn't get it to work properly for what I needed so I decided to go with nmap and this works awesome. (I love nmap. It is the GOAT of port scanners.)
