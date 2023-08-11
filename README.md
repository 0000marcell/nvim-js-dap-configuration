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

## start the debugger
## toggle breakpoints
## continue execution
## search breakpoints and jump between them
## focus frame 
## go up and down in the stack frames
## clear breakpoints
## conditional breakpoints
## restart

# Inspect and Watch

## show text dap
## show global variables panel
## hover
## show watches panel  
## show repl 

# Configuration

## help functionality
