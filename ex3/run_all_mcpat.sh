#!/bin/bash

OUTPUT_DIR_BASE="/home/george/adv-ca/sniper-7.3/sniper_workspace/outputs/sniper"
SNIPER_DIR="/home/george/adv-ca/sniper-7.3"

echo "Outputs to be processed located in: $OUTPUT_DIR_BASE"

for benchdir in /home/george/adv-ca/sniper-7.3/sniper_workspace/outputs/cache/*/; do
  bench=$(basename $benchdir)
  
  echo -e "\nProcessing directory: $bench"

  cmd="${SNIPER_DIR}/tools/advcomparch_mcpat.py -d $benchdir -t total -o $benchdir/info > $benchdir/power.total.out"
  echo CMD: $cmd
  /bin/bash -c "$cmd"
done
