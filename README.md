# My infra

## TODO:
- add terraform CD
- add ansible CD
- add secrets for different clusters

CI: - get a fresh version of an action (2w after a release). pin only to a hash
- accept only if signed

CI:
- pinning
- backups
- secrets
- short-lived tokens
- permission-restricted ci
- r2 state (LIMITATION: r2 tokens is not possible to create via terraform. only through dashboard. WTF). Make bootstrapping S3 easier
- deploy-approve
- only use hashes from lockfile
- sign every commit

## Git Pre-commit hook
```shell
#!/bin/sh

task encrypt
```
