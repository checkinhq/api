#!/usr/bin/env bash

FAILED=0

for f in $(find checkin -name '*.proto'); do
    protoc -I . -o /dev/null "$f"

    if [[ $? -ne 0 ]]; then
        FAILED=1
    fi
done

exit $FAILED
