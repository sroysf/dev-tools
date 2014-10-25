#!/bin/bash

mvnt clean install
mvn install -P aws -Ds3.cache.enabled=true
