#!/bin/bash

rm -rf _public
DEBUG='brunch:*' node_modules/.bin/brunch watch --server
