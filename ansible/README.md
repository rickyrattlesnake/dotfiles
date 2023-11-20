
```bash
chmod +rwx ./bin/bootstrap.sh

./bin/bootstrap.sh
```

```bash
ansible-playbook setup_osx.yaml -v --ask-become-pass
```

### Debugging

Run with `--tags and -v` to target a specific task and print any logs from internal modules.


### Other Awesome tools list
- buf
- postgresql (install libpq and setup a symlink instead)
- terraform-docs
- balenaetcher
- bloomrpc
