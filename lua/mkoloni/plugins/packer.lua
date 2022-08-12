vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    "lewis6991/impatient.nvim",
    config = function()
      require("impatient")
    end
  }

  use "neovim/nvim-lspconfig"

  use {
    "williamboman/nvim-lsp-installer",
    config = function()
      require("nvim-lsp-installer").setup({
          automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
          ui = {
              icons = {
                  server_installed = "✓",
                  server_pending = "➜",
                  server_uninstalled = "✗"
              }
          }
      })
    end
  }
  use "onsails/lspkind.nvim"

  use {
    "lukas-reineke/lsp-format.nvim",
    config = function()
      require("lsp-format").setup {
        typescript = { tab_width = 2 },
        yaml = { tab_width = 2 },
      }
    end
  }
  use "weilbith/nvim-code-action-menu"

  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lua"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "KadoBOT/cmp-plugins"
  use {
    "L3MON4D3/LuaSnip",
    config = function()
      require('luasnip.loaders.from_vscode').lazy_load()
    end
  }
  use "rafamadriz/friendly-snippets"
  use "saadparwaiz1/cmp_luasnip"

  use "p00f/nvim-ts-rainbow"

  use {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require('nvim-treesitter.configs').setup {
       ensure_installed = { "c", "lua", "rust" },
        sync_install = false,
        auto_install = true,
        ignore_install = { "javascript" },
        highlight = {
          enable = true,
          disable = { "c", "rust" },
          additional_vim_regex_highlighting = false,
        },
        rainbow = {
          enable = true,
          extended_mode = true,
          max_file_lines = nil,
        }
      }
    end
  }

  use {
    "kyazdani42/nvim-web-devicons",
    config = function()
      require'nvim-web-devicons'.setup {
        override = {
          html = {
            icon = " ",
            name = "html",
          },
          sh = {
            icon = " ",
            name = "sh",
          }, md = {
            icon = " ",
            name = "md",
          },
          zsh = {
            icon = " ",
            name = "zsh",
          },
          fish = {
            icon = " ",
            name = "fish",
          },
          c = {
            icon = " ",
            name = "c",
          },
          h = {
            icon = " ",
            name = "c",
          },
          css = {
            icon = " ",
            name = "css",
          },
          js = {
            icon = " ",
            name = "js",
          },
          ts = {
            icon = "ﯤ ",
            name = "ts",
          },
          kt = {
            icon = "󱈙 ",
            name = "kt",
          },
          png = {
            icon = " ",
            name = "png",
          },
          jpg = {
            icon = " ",
            name = "jpg",
          },
          jpeg = {
            icon = " ",
            name = "jpeg",
          },
          mp3 = {
            icon = " ",
            name = "mp3",
          },
          mp4 = {
            icon = " ",
            name = "mp4",
          },
          out = {
            icon = " ",
            name = "out",
          },
          Dockerfile = {
            icon = " ",
            name = "Dockerfile",
          },
          rb = {
            icon = " ",
            name = "rb",
          },
          vue = {
            icon = "﵂ ",
            name = "vue",
          },
          py = {
            icon = " ",
            name = "py",
          },
          toml = {
            icon = " ",
            name = "toml",
          },
          lock = {
            icon = " ",
            name = "lock",
          },
          zip = {
            icon = " ",
            name = "zip",
          },
          xz = {
            icon = " ",
            name = "xz",
          },
          deb = {
            icon = " ",
            name = "deb",
          },
          rpm = {
            icon = " ",
            name = "rpm",
          },
          lua = {
            icon = " ",
            name = "lua",
          },
        },
      }
    end
  }

  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      {
        -- only needed if you want to use the commands with "_with_window_picker" suffix
        's1n7ax/nvim-window-picker',
        tag = "v1.*",
        config = function()
          require'window-picker'.setup({
            autoselect_one = true,
            include_current = false,
            filter_rules = {
              -- filter using buffer options
              bo = {
                -- if the file type is one of following, the window will be ignored
                filetype = { 'neo-tree', "neo-tree-popup", "notify", "quickfix" },

                -- if the buffer type is one of following, the window will be ignored
                buftype = { 'terminal' },
              },
            },
            other_win_hl_color = '#e35e4f',
          })
        end,
      }
    },
    config = function ()
      -- Unless you are still migrating, remove the deprecated commands from v1.x
      vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

      -- If you want icons for diagnostic errors, you'll need to define them somewhere:
      vim.fn.sign_define("DiagnosticSignError",
        {text = " ", texthl = "DiagnosticSignError"})
      vim.fn.sign_define("DiagnosticSignWarn",
        {text = " ", texthl = "DiagnosticSignWarn"})
      vim.fn.sign_define("DiagnosticSignInfo",
        {text = " ", texthl = "DiagnosticSignInfo"})
      vim.fn.sign_define("DiagnosticSignHint",
        {text = "", texthl = "DiagnosticSignHint"})
      -- NOTE: this is changed from v1.x, which used the old style of highlight groups
      -- in the form "LspDiagnosticsSignWarning"

      require("neo-tree").setup({
        close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = true,
        sort_case_insensitive = false, -- used when sorting files and directories in the tree
        sort_function = nil , -- use a custom function for sorting files and directories in the tree
        -- sort_function = function (a,b)
        --       if a.type == b.type then
        --           return a.path > b.path
        --       else
        --           return a.type > b.type
        --       end
        --   end , -- this sorts files and directories descendantly
        default_component_configs = {
          container = {
            enable_character_fade = true
          },
          indent = {
            indent_size = 2,
            padding = 1, -- extra padding on left hand side
            -- indent guides
            with_markers = true,
            indent_marker = "│",
            last_indent_marker = "└",
            highlight = "NeoTreeIndentMarker",
            -- expander config, needed for nesting files
            with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
            expander_collapsed = "",
            expander_expanded = "",
            expander_highlight = "NeoTreeExpander",
          },
          icon = {
            folder_closed = "",
            folder_open = "",
            folder_empty = "ﰊ",
            -- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
            -- then these will never be used.
            default = "*",
            highlight = "NeoTreeFileIcon"
          },
          modified = {
            symbol = "[+]",
            highlight = "NeoTreeModified",
          },
          name = {
            trailing_slash = false,
            use_git_status_colors = true,
            highlight = "NeoTreeFileName",
          },
          git_status = {
            symbols = {
              -- Change type
              added     = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
              modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
              deleted   = "✖",-- this can only be used in the git_status source
              renamed   = "",-- this can only be used in the git_status source
              -- Status type
              untracked = "",
              ignored   = "",
              unstaged  = "",
              staged    = "",
              conflict  = "",
            }
          },
        },
        window = {
          position = "right",
          width = 20,
          mapping_options = {
            noremap = true,
            nowait = true,
          },
          mappings = {
            ["<space>"] = {
                "toggle_node",
                nowait = false, -- disable `nowait` if you have existing combos starting with this char that you want to use
            },
            ["<2-LeftMouse>"] = "open",
            ["<cr>"] = "open",
            ["S"] = "open_split",
            ["s"] = "open_vsplit",
            -- ["S"] = "split_with_window_picker",
            -- ["s"] = "vsplit_with_window_picker",
            ["t"] = "open_tabnew",
            ["w"] = "open_with_window_picker",
            ["C"] = "close_node",
            ["z"] = "close_all_nodes",
            --["Z"] = "expand_all_nodes",
            ["a"] = {
              "add",
              -- some commands may take optional config options, see `:h neo-tree-mappings` for details
              config = {
                show_path = "none" -- "none", "relative", "absolute"
              }
            },
            ["A"] = "add_directory", -- also accepts the optional config.show_path option like "add".
            ["d"] = "delete",
            ["r"] = "rename",
            ["y"] = "copy_to_clipboard",
            ["x"] = "cut_to_clipboard",
            ["p"] = "paste_from_clipboard",
            ["c"] = "copy", -- takes text input for destination, also accepts the optional config.show_path option like "add":
            -- ["c"] = {
            --  "copy",
            --  config = {
            --    show_path = "none" -- "none", "relative", "absolute"
            --  }
            --}
            ["m"] = "move", -- takes text input for destination, also accepts the optional config.show_path option like "add".
            ["q"] = "close_window",
            ["R"] = "refresh",
            ["?"] = "show_help",
            ["<"] = "prev_source",
            [">"] = "next_source",
          }
        },
        nesting_rules = {},
        filesystem = {
          filtered_items = {
            visible = false, -- when true, they will just be displayed differently than normal items
            hide_dotfiles = true,
            hide_gitignored = true,
            hide_hidden = true, -- only works on Windows for hidden files/directories
            hide_by_name = {
              --"node_modules"
            },
            hide_by_pattern = { -- uses glob style patterns
              --"*.meta"
            },
            always_show = { -- remains visible even if other settings would normally hide it
              --".gitignored",
            },
            never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
              --".DS_Store",
              --"thumbs.db"
            },
          },
          follow_current_file = false, -- This will find and focus the file in the active buffer every
                                       -- time the current file is changed while the tree is open.
          group_empty_dirs = false, -- when true, empty folders will be grouped together
          hijack_netrw_behavior = "open_default", -- netrw disabled, opening a directory opens neo-tree
                                                  -- in whatever position is specified in window.position
                                -- "open_current",  -- netrw disabled, opening a directory opens within the
                                                  -- window like netrw would, regardless of window.position
                                -- "disabled",    -- netrw left alone, neo-tree does not handle opening dirs
          use_libuv_file_watcher = false, -- This will use the OS level file watchers to detect changes
                                          -- instead of relying on nvim autocmd events.
          window = {
            mappings = {
              ["<bs>"] = "navigate_up",
              ["."] = "set_root",
              ["H"] = "toggle_hidden",
              ["/"] = "fuzzy_finder",
              ["D"] = "fuzzy_finder_directory",
              ["f"] = "filter_on_submit",
              ["<c-x>"] = "clear_filter",
              ["[g"] = "prev_git_modified",
              ["]g"] = "next_git_modified",
            }
          }
        },
        buffers = {
          follow_current_file = true, -- This will find and focus the file in the active buffer every
                                       -- time the current file is changed while the tree is open.
          group_empty_dirs = true, -- when true, empty folders will be grouped together
          show_unloaded = true,
          window = {
            mappings = {
              ["bd"] = "buffer_delete",
              ["<bs>"] = "navigate_up",
              ["."] = "set_root",
            }
          },
        },
        git_status = {
          window = {
            position = "float",
            mappings = {
              ["A"]  = "git_add_all",
              ["gu"] = "git_unstage_file",
              ["ga"] = "git_add_file",
              ["gr"] = "git_revert_file",
              ["gc"] = "git_commit",
              ["gp"] = "git_push",
              ["gg"] = "git_commit_and_push",
            }
          }
        }
      })

      vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
    end
  }

  use "lukas-reineke/indent-blankline.nvim"
  use "tpope/vim-surround"
  use "Asheq/close-buffers.vim"
  use "folke/trouble.nvim"
  use "rrethy/vim-hexokinase"
  use "iamcco/markdown-preview.nvim"
  use "alvan/vim-closetag"
  use "airblade/vim-gitgutter"
  use "preservim/tagbar"
  use "dstein64/vim-startuptime"
  use {
    "mattn/emmet-vim",
    config = function()
      vim.cm([[
        let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.config/nvim/snippets/snippets_custom.json')), "\n"))
      ]])
    end
  }
  use "mattn/webapi-vim"


  use "preservim/nerdcommenter"

  use {
    "ziontee113/color-picker.nvim",
    config = function()
      require("color-picker").setup({})
    end
  }

  use "nvim-lua/plenary.nvim"

  use "lewis6991/gitsigns.nvim"


  use {
    "ethanholz/nvim-lastplace",
    config = function()
      require("nvim-lastplace").setup {}
    end
  }

  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {}
    end
  }

  use {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {}
    end
  }

  use {
    "akinsho/bufferline.nvim",
    config = function()
      require("bufferline").setup {}
    end
  }

  use {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup {}
    end
  }

  use {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("null-ls").setup({
        sources = {
          require("null-ls").builtins.formatting.stylua,
          require("null-ls").builtins.diagnostics.eslint,
          require("null-ls").builtins.completion.spell,
        },
      })
    end
  }

  use {
    "nvim-telescope/telescope.nvim",
    config = function()
      require('telescope').setup {}
    end
  }

  use 'folke/tokyonight.nvim'

  use "Glench/Vim-Jinja2-Syntax"

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'tokyonight'
        }
      }
    end
  }

  use {
    "numToStr/FTerm.nvim",
    config = function()
      require'FTerm'.setup({
        border = 'double',
        dimensions  = {
          height = 0.9,
          width = 0.9,
        },
      })
    end
  }

  use "mkoloni/better-escape.vim"

  use {
    "mkoloni/cmp-bootstrap.nvim",
    ft = { 'html', 'css', 'tsx', 'jsx', 'js', 'ts' },
  }

  use "mkoloni/vim-repeat"

end)
