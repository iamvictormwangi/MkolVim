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

  use "tomasr/molokai"

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
      require'nvim-treesitter.configs'.setup {

        -- A list of parser names, or "all"
        ensure_installed = { "c", "lua", "rust" },

        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        -- Automatically install missing parsers when entering buffer
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        auto_install = true,

        -- List of parsers to ignore installing (for "all")
        ignore_install = { "javascript" },

        ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
        -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

        highlight = {
          -- `false` will disable the whole extension
          enable = true,

          -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
          -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
          -- the name of the parser)
          -- list of language that will be disabled
          disable = { "c", "rust" },
          -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
          disable = function(lang, buf)
              local max_filesize = 100 * 1024 -- 100 KB
              local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
              if ok and stats and stats.size > max_filesize then
                  return true
              end
          end,

          -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
          -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
          -- Using this option may slow down your editor, and you may see some duplicate highlights.
          -- Instead of true it can also be a list of languages
          additional_vim_regex_highlighting = false,
        },
          rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
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

  use "vicktter/better-escape.vim"

  use "vicktter/vim-repeat"

  use {
    "vicktter/cmp_limpio",
    ft = { 'html', 'css', 'tsx', 'jsx', 'js', 'ts' }
   }

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
