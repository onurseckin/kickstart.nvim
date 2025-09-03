# Neovim Configuration Structure

This configuration is organized into a clean, logical structure that makes it easy to find and maintain your settings.

## Directory Structure

```
nvim/
├── init.lua              # Bootstrap file - minimal entry point
├── init.lua.backup       # Backup of original kickstart configuration
├── lazy-lock.json        # Plugin lock file (managed by Lazy.nvim)
└── lua/
    ├── core/             # Core Neovim settings
    │   ├── options.lua   # Vim options (leader, clipboard, etc.)
    │   ├── keymaps.lua   # Key mappings
    │   └── autocmds.lua  # Autocommands
    ├── plugins/          # Plugin configurations by category
    │   ├── init.lua      # Plugin manager setup (Lazy.nvim)
    │   ├── editor/       # Editor enhancement plugins
    │   │   ├── telescope.lua    # Fuzzy finder
    │   │   ├── neo-tree.lua     # File browser
    │   │   ├── mini.lua         # Mini modules (statusline, surround, etc.)
    │   │   ├── treesitter.lua   # Syntax highlighting
    │   │   └── todo-comments.lua # Todo highlighting
    │   ├── lsp/          # LSP related plugins
    │   │   ├── lspconfig.lua    # LSP configuration
    │   │   ├── completion.lua   # Autocompletion (blink.cmp)
    │   │   └── formatting.lua   # Code formatting (conform.nvim)
    │   ├── ui/           # UI/appearance plugins
    │   │   ├── colorscheme.lua  # Theme configuration
    │   │   └── which-key.lua    # Key binding hints
    │   └── git/          # Git related plugins
    │       └── gitsigns.lua     # Git integration
    └── utils/            # Utility functions
        └── init.lua      # Helper functions
```

## How to Navigate

- **Find files**: `<leader>sn` - Search Neovim config files
- **Edit init.lua**: `:e $MYVIMRC`
- **Reload config**: `:so` (source current file)
- **Plugin manager**: `:Lazy`
- **LSP info**: `:LspInfo`
- **Health check**: `:checkhealth`

## Key Features

### Core Configuration
- **options.lua**: All vim settings (numbers, clipboard, splits, etc.)
- **keymaps.lua**: All key bindings (navigation, diagnostics, etc.)
- **autocmds.lua**: Autocommands (highlight on yank, etc.)

### Plugin Categories
- **editor/**: Tools that enhance editing (telescope, neo-tree, mini plugins)
- **lsp/**: Language server protocol setup and completion
- **ui/**: Appearance and interface plugins
- **git/**: Git integration and tools

### Benefits
- **Easy to find**: Logical categorization makes finding settings intuitive
- **Modular**: Each plugin has its own file for easy maintenance  
- **Clean**: No more 1000+ line init.lua file
- **Extensible**: Easy to add new plugins in the right category
- **Maintainable**: Clear separation of concerns

## Adding New Plugins

1. Choose the appropriate category directory (`editor/`, `lsp/`, `ui/`, `git/`)
2. Create a new file: `lua/plugins/[category]/plugin-name.lua`
3. The plugin will be automatically loaded via the import system in `plugins/init.lua`

## Backup

Your original kickstart configuration has been preserved as `init.lua.backup` in case you need to reference it.
