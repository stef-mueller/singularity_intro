#!/bin/bash

# prerequisite: copy plink toy data into current working directory

plink2 \
    --bfile toy \
    --missing \
    --out test_container