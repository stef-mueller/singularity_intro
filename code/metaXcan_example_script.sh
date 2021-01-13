#!/usr/bin/env bash

# prerequisite: copy metaXcan sample data 
#  and update INPUT and OUTPUT directory paths accordingly


source /opt/code_docker_lib/run.sh
INPUT_DIR="data/metaXcan_sample_data"
OUTPUT_DIR="data/output_metaXcan"


#./SPrediXcan.py \
/opt/code_docker_lib/MetaXcan/software/SPrediXcan.py \
--model_db_path ${INPUT_DIR}/DGN-WB_0.5.db \
--covariance ${INPUT_DIR}/covariance.DGN-WB_0.5.txt.gz \
--gwas_folder ${INPUT_DIR}/GWAS \
--gwas_file_pattern ".*gz" \
--snp_column SNP \
--effect_allele_column A1 \
--non_effect_allele_column A2 \
--beta_column BETA \
--pvalue_column P \
--output_file $OUTPUT_DIR/test.csv