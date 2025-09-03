-- [[ Neovim Configuration Bootstrap ]]
--
-- This file serves as the entry point for your Neovim configuration.
-- All the actual configuration is organized in the lua/ directory.
--
-- Structure:
--   lua/core/         - Core Neovim settings (options, keymaps, autocmds)
--   lua/plugins/      - Plugin configurations organized by category
--   lua/utils/        - Utility functions
--
-- Navigate your config easily:
--   <leader>sn        - Search Neovim config files
--   :e $MYVIMRC       - Edit this init.lua file
--   :so               - Source/reload configuration

-- Load core configuration
require 'core.options'      -- Vim options and settings
require 'core.keymaps'      -- Key mappings
require 'core.autocmds'     -- Autocommands

-- Load plugin manager and configurations
require 'plugins'           -- Plugin manager (Lazy.nvim) and plugin specs

-- Load utilities
require 'utils'             -- Utility functions

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
