# Zabbix Network Monitoring with mtr (My traceroute)

## Introduction

A Zabbix template for mtr (My traceroute). It uses all the new features from Zabbix 4.4 and 5.0 with Master Items, JSONpath processing and Dependent items.
This template was built on Zabbix 5.0.x, 5.2.x and Debian 9 & 10, CentOS 7 and 8 amd64 with [mtr-tiny](https://packages.debian.org/stable/mtr-tiny).

## Installation

1. Copy the script file [mtr.sh](https://github.com/everaldoscabral/zabbix-templates/blob/master/zabbix-net-mtr/mtr.sh) to the **ExternalScripts** folder on your Zabbix Server or Proxy.
2. Make the script executable: `chmod +x mtr.sh`
3. Import the [Template by IP](https://github.com/everaldoscabral/zabbix-templates/blob/master/zabbix-net-mtr/TEMPLATE-NET-MTR.xml) or [Template by DNS](https://github.com/everaldoscabral/zabbix-templates/blob/master/zabbix-net-mtr/TEMPLATE-NET-MTR-BY-DNS.xml)  to your Zabbix Server.


## Notes

These files and templates were tested and created on Zabbix 4.4 & 5.0 and Debian Linux 9 & 10 amd64 with the package [mtr-tiny](https://packages.debian.org/stable/mtr-tiny).
The XML file provided is exported from Zabbix 5.0.3.

This template creates a Master item, which executes the script and receives the JSON output. From there on we have a Low-Level-Discovery rule, that discovery three item prototypes:

- Name of each Hop
- Average RTT(ms) of each Hop
- ICMP Loss% of each Hop

There are no Trigger or Graph prototypes in this template at the moment.

Parts of this Template are directly related to [a reddit discussion](https://www.reddit.com/r/zabbix/comments/gvzvj7/monitoring_mtr_hops/), which gave me a very good starting point.

## Example / Screenshot

![Latest Data](Latest_data.png)

## Changelog

- 11 February 2021: initial commit.
