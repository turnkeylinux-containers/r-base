MY=(
    [ROLE]=www
    [RUN_AS]=root

)

passthrough_unless "R" "$@"
export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/openblas:${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}

run "$@"
