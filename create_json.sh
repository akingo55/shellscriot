#!/usr/local/bin/bash

# 連想配列を使ってJSONを作成する

declare -A test

test=(
  ["TEST1"]="test1"
  ["TEST2"]="test2"
  ["TEST3"]="test3"
  ["TEST4"]="test4"
)

for test in ${!test[@]}
do
  cat <<EOF
                {
                    "name": "${test}",
                    "value": "${test[$test]}"
                },
EOF
done
