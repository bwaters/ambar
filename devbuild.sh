#!/bin/bash

export dataPath=$HOME/Documents/AmbarData
export langAnalyzer=ambar_en
export ambarHostIpAddress=$(ifconfig | grep  -C 1 wlo1 | grep -E -o 'addr:[0-9.]*' | cut -d':' -f 2)
export crawlerName=ambarcrawler
export pathToCrawl=$HOME/Documents/Ebay
(cd FrontEnd && yarn run deploy:prod)
docker-compose -f docker-compose-local.yml up -d --build
