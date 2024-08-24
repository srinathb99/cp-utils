# cp-utils
## What cp-utils does
- Creates a contest directory with sub-directories for each problem
- Provides a cp friendly debugger for cpp (most contestants don't use IDEs with debuggers)
- Provides an easy way to add snippets to Geany
  
## What cp-utils needs
- A Linux environment with python3 and make installed
- Basic shell know-how
  
## How to install cp-utils
1. Download/clone the repo
2. From the cp-utils directory, run `make`
3. Add `/opt/cp-utils/bin` to your shell's `$PATH` (e.g : `PATH=$PATH:/opt/cp-utils/bin`); consider doing it in an appropriate startup/login script(e.g `/etc/profile`, or the popular but
   less appropriate `~/.bashrc`) to persist across shell sessions

## How to use cp-utils
### Creating a contest
Create a contest directory by running `create_contest <contest_name> <number of problems>`
The directory looks like -
```bash
├── Contest Name
│   ├── A
│   │   ├── sol.cpp
│   │   ├── brute.cpp
│   │   ├── gen.cpp
│   │   ├── run_tests.sh
│   │   ├── in
│   │   ├── out
.
.
.
└── ├── Z
```

### Adding snippet to Geany
Add a snippet to geany by running `add_snippet <snippet_name> </path/to/snippet/source/code>`

### Removing snippet from Geany
Remove a snippet from geany by running `remove_snippet <snippet_name>`

### Updating existing snippet
Update a snippet by running `update_snippet <snippet_name> </path/to/updated/snippet/source/code>`
