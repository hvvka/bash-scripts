#!/bin/bash

# Po każdej linijce z `class` dodać ` String marker = '/!@$%/"`

sed -i "/class/a' String marker = '/\!\@\$\%\/\"" data/groovies/*
