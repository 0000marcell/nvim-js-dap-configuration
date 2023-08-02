# JS DAP Configuration

Backup your current configuration
```
mv ~/.config/nvim ~/.config/nvimbackup
ls ~/.config/nvimbackup 
```

Download a simplified version of my configuration to test it out
```
curl https://raw.githubusercontent.com/0000marcell/nvim-js-dap-configuration/master/scripttotest.sh |\
  bash
cd $HOME/nvim-js-dap-test
nvim main.rb
:PackerSync
:PackerCompile
restart vim
```

# Breakpoints

## start the debugger and options
## toggle breakpoints
## continue execution
## search breakpoints and jump between them
## go up and down in the stack frames
## clear breakpoints, need to add this to the configuration dap.clear_breakpoints() hotkey uppercase X
## add conditional breakpoints (find an invariant) a place and a condition
## restart
## show conditional breakpoint functionality

# Inspect and Watch

## show text dap
## show global variables panel
## show repl 
## show watches panel  

# Configuration

## help functionality
