#!/bin/bash

mkdir -p /archiva/data

mkdir -p /archiva/groups

mkdir -p /archiva/repositories

ln -s /archiva/data /opt/apache-archiva/data

ln -s /archiva/groups /opt/apache-archiva/groups

ln -s /archiva/repositories /opt/apache-archiva/repositories

/opt/apache-archiva/bin/archiva console