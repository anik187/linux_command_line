#!/usr/bin/env bash

ls /usr/bin | tee ls.txt | grep zip # tee is used for intermediate stage debugging. tee takes std in and outputs to std out and files
