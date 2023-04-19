return {
    'github/copilot.vim',
    'nvim-tree/nvim-web-devicons',
    {
        'mbbill/undotree',
        config = function()
            vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle)
        end,
    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {};
            vim.keymap.set('n', '<leader><F4>', vim.cmd.NvimTreeToggle)

        end,
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        config    = function()
            require'treesitter-context'.setup{}
        end,
    },
    {
        'akinsho/bufferline.nvim',
        version = "v3.*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function ()
            vim.opt.termguicolors = true;
            require("bufferline").setup{
                options = { mode = "tabs" }
            }
        end,
    },
    {
        'folke/trouble.nvim',
        config = function()
            require("trouble").setup{}
        end,
    },
    {
        "ggandor/leap.nvim",
        config = function()
            require("leap").add_default_mappings();
        end,
    }
}


