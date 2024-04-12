#!/bin/bash

grep -v '^#' $1 > $2
grep '^#' $1 >> $2 