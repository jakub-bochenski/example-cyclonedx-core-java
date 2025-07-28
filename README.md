# example-cyclonedx-core-java
Demonstrates how to consume latest cyclonedx-core-java in cyclonedx-maven-plugin

```bash
$ ./test.bash 
+ ./mvnw clean compile -Psbom -q
+ jq '.components[0].licenses[0].license' target/bom.json
{
  "name": "GPL v2 with the Classpath exception",
  "url": "https://github.com/openjdk/nashorn/blob/main/LICENSE"
}
+ ./mvnw clean compile -Psbom -Psnapshot -q
+ jq '.components[0].licenses[0].license' target/bom.json
{
  "id": "GPL-2.0-with-classpath-exception"
}
```