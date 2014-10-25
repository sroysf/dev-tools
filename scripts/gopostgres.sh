#!/bin/bash

pushd ~/.vagrant.d
ssh -i insecure_private_key -p 2201 vagrant@localhost
popd

