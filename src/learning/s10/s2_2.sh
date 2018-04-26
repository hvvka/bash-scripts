#!/bin/bash

# Usuń linijki zawierające frazę `Help docs:`

sed -i '/Help docs:/d' data/groovies/two.groovy

# for MacOS instead `-i` should be `-i ''`
