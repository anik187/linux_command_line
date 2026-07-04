#!/usr/bin/env bash

grep bzip dirlist*.txt
grep -l bzip dirlist*.txt # files with match
grep -L bzip dirlist*.txt # files without match
