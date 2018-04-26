#!/bin/bash

# Znajdź w pliku access_log zapytania typu POST

grep 'POST ' data/access_log > post_queries.log
