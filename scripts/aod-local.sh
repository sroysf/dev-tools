#!/bin/bash

mvnt clean install
mvn install -P database.active -Ds3.cache.enabled=true
