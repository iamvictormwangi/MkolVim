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
    "uga-rosa/cmp-dictionary",
    ft = {'markdown'}
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

  use {"akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
    require("toggleterm").setup()
  end}

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
  use "mattn/emmet-vim"

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

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly', -- optional, updated every week. (see issue #1193)
    config = function()
      require("nvim-tree").setup({
        sort_by = "case_sensitive",
        view = {
          adaptive_size = true,
        mappings = {
        list = {
          { key = "u", action = "dir_up" },
        },
        },
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
        },
      })
    end
  }

  use { "ellisonleao/gruvbox.nvim" }

end)
