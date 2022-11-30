#!/bin/bash

#source env/bin/activate
which python

NAME="macaw_dir"
LOG_DIR="log"
TASK_CONFIG="config/cheetah_dir/2tasks_offline.json"
MACAW_PARAMS="config/alg/standard.json"
if [ -z $1 ]
then
    OVERRIDE_PARAMS="config/alg/overrides/no_override.json"
else
    OVERRIDE_PARAMS=$1
fi

./scripts/runner.sh $NAME $LOG_DIR $TASK_CONFIG $MACAW_PARAMS $OVERRIDE_PARAMS
