#!/bin/bash
set -euo pipefail

./mvnw clean compile -Psbom -q
jq '.components[0].licenses[0].license' target/bom.json
./mvnw clean compile -Psbom -Psnapshot -q
jq '.components[0].licenses[0].license' target/bom.json