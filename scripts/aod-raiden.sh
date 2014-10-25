#!/bin/bash

mvnt clean install
mvn install -P raiden -Ds3.cache.enabled=true
