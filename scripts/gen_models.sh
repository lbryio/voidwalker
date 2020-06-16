#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"
cd ".."
DIR="$PWD"
(
  cd "$DIR"
  go get -u -t github.com/volatiletech/sqlboiler@v3.7.1
  go get -u -t github.com/volatiletech/sqlboiler/drivers/sqlboiler-mysql@v3.7.1
  sqlboiler --no-rows-affected --no-auto-timestamps --no-hooks --no-tests --no-context --add-global-variants --add-panic-variants --wipe mysql
)