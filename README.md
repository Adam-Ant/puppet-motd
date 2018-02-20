# motd

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with motd](#setup)
    * [What motd affects](#what-motd-affects)
1. [Usage - Configuration options and additional functionality](#usage)
## Description

This module configures a standardized motd file for all hosts, including node hostname in ascii art for easy host recognition.

## Setup

Make sure to include the below in the puppet master, to install dependencies:

`include motd::install`

### What motd affects

This module replaces /etc/motd, and nothing else. It requires Facter>=3.

## Usage 

Simply include the motd class into your nodes, no configuration is required.

`include ::motd`
