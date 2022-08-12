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
    "mkoloni/cmp-bootstrap.nvim",
    ft = { 'html', 'css', 'tsx', 'jsx', 'js', 'ts' },
  }

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
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    tag = 'nightly',
    config = function()
      require("nvim-tree").setup {
       -- BEGIN_DEFAULT_OPTS
        auto_reload_on_write = true,
        create_in_closed_folder = false,
        disable_netrw = false,
        hijack_cursor = false,
        hijack_netrw = true,
        hijack_unnamed_buffer_when_opening = false,
        ignore_buffer_on_setup = false,
        open_on_setup = false,
        open_on_setup_file = false,
        open_on_tab = false,
        sort_by = "name",
        update_cwd = false,
        reload_on_bufenter = false,
        respect_buf_cwd = false,
        view = {
          width = 30,
          height = 30,
          hide_root_folder = false,
          side = "right",
          preserve_window_proportions = false,
          number = false,
          relativenumber = false,
          signcolumn = "yes",
          mappings = {
            custom_only = false,
            list = {
              -- user mappings go here
            },
          },
        },
        renderer = {
          add_trailing = false,
          group_empty = false,
          highlight_git = false,
          highlight_opened_files = "none",
          root_folder_modifier = ":~",
          indent_markers = {
            enable = false,
            icons = {
              corner = "└ ",
              edge = "│ ",
              none = "  ",
            },
          },
          icons = {
            webdev_colors = true,
            git_placement = "before",
            padding = " ",
            symlink_arrow = " ➛ ",
            show = {
              file = true,
              folder = true,
              folder_arrow = true,
              git = true,
            },
            glyphs = {
              default = "",
              symlink = "",
              folder = {
                arrow_closed = "",
                arrow_open = "",
                default = "",
                open = "",
                empty = "",
                empty_open = "",
                symlink = "",
                symlink_open = "",
              },
              git = {
                unstaged = "✗",
                staged = "✓",
                unmerged = "",
                renamed = "➜",
                untracked = "★",
                deleted = "",
                ignored = "◌",
              },
            },
          },
          special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
        },
        hijack_directories = {
          enable = true,
          auto_open = true,
        },
        update_focused_file = {
          enable = false,
          update_cwd = false,
          ignore_list = {},
        },
        ignore_ft_on_setup = {},
        system_open = {
          cmd = "",
          args = {},
        },
        diagnostics = {
          enable = false,
          show_on_dirs = false,
          icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
          },
        },
        filters = {
          dotfiles = false,
          custom = {},
          exclude = {},
        },
        git = {
          enable = true,
          ignore = true,
          timeout = 400,
        },
        actions = {
          use_system_clipboard = true,
          change_dir = {
            enable = true,
            global = false,
            restrict_above_cwd = false,
          },
          expand_all = {
            max_folder_discovery = 300,
          },
          open_file = {
            quit_on_open = false,
            resize_window = true,
            window_picker = {
              enable = true,
              chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
              exclude = {
                filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
                buftype = { "nofile", "terminal", "help" },
              },
            },
          },
          remove_file = {
            close_window = true,
          },
        },
        trash = {
          cmd = "trash",
          require_confirm = true,
        },
        live_filter = {
          prefix = "[FILTER]: ",
          always_show_folders = true,
        },
        log = {
          enable = false,
          truncate = false,
          types = {
            all = false,
            config = false,
            copy_paste = false,
            diagnostics = false,
            git = false,
            profile = false,
          },
        },
      }
    end
  }

  use "lukas-reineke/indent-blankline.nvim"
  use "tpope/vim-surround"
  use "Asheq/close-buffers.vim"
  use "akinsho/toggleterm.nvim"
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

  use "mkoloni/better-escape.vim"

  use "preservim/nerdcommenter"

  use {
    "ziontee113/color-picker.nvim",
    config = function()
      require("color-picker").setup({})
    end
  }

  use "nvim-lua/plenary.nvim"

  use "lewis6991/gitsigns.nvim"

  use "mkoloni/vim-repeat"

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

end)
