MY=(
    [ROLE]=app
    [RUN_AS]=root

)

passthrough_unless "R" "$@"

export LC_ALL="C"
export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/openblas:${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}

run "$@"
