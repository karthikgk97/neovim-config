return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    -- {
    --     "mfussenegger/nvim-jdtls",
    --     -- config = function()
    --     --     require("nvim-jdtls").setup()
    --     -- end,
    -- },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        config = function()
            require("mason-lspconfig").setup({
                auto_install = true,
                ensure_installed = { "lua_ls", "pyright", "ruff_lsp", "rust_analyzer", "gopls", "bufls", "jdtls", "groovyls", "gradle_ls" },
                -- navigate to this website for most lsp languages list
                -- https://github.com/williamboman/mason-lspconfig.nvim
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")

            -- local configVal = {
            --     cmd = { "/home/gk/.local/share/nvim/mason/packages/jdtls/config_linux" },
            --     root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
            -- }

            -- require('jdtls').start_or_attach(configVal)

            -- Define on_attach function to handle keymaps properly
            local on_attach = function(client, bufnr)
                local opts = { noremap = true, silent = true, buffer = bufnr }
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
                vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
            end

            -- Setup each language server with capabilities and on_attach
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                on_attach = on_attach,
            })

            lspconfig.pyright.setup({
                capabilities = capabilities,
                on_attach = on_attach,
            })

            lspconfig.ruff_lsp.setup({
                capabilities = capabilities,
                on_attach = on_attach,
            })

            lspconfig.rust_analyzer.setup({
                capabilities = capabilities,
                on_attach = on_attach,
            })

            lspconfig.gopls.setup({
                capabilities = capabilities,
                on_attach = on_attach,
            })

            lspconfig.bufls.setup({
                capabilities = capabilities,
                on_attach = on_attach,
            })

            lspconfig.gradle_ls.setup({
                capabilities = capabilities,
                on_attach = on_attach,
            })

            lspconfig.groovyls.setup({
                capabilities = capabilities,
                cmd = { "java", "-jar", "/home/gk/wsl_github/groovy-language-server/build/libs/groovy-language-server-all.jar" },
                on_attach = on_attach,
            })

            lspconfig.jdtls.setup({
                capabilities = capabilities,
                on_attach = on_attach
            })
                -- root_dir = require("lspconfig.util").root_pattern("pom.xml", "build.gradle", ".project", ".git",
                --         "build.gradle.kts")
                --     or vim.fn.getcwd(),
                -- capabilities = capabilities,
                -- cmd = {
                --     -- "jdtls",
                --     -- "java",
                --     "/home/gk/.sdkman/candidates/java/21.0.6-tem",
                --     -- "/home/gk/.sdkman/candidates/java/17.0.10-tem",
                --     '-Declipse.application=org.eclipse.jdt.ls.core.id1',
                --     '-Dosgi.bundles.defaultStartLevel=4',
                --     '-Declipse.product=org.eclipse.jdt.ls.core.product',
                --     '-Dlog.protocol=true',
                --     '-Dlog.level=ALL',
                --     '-Xmx1g',
                --     '--add-modules=ALL-SYSTEM',
                --     '--add-opens', 'java.base/java.util=ALL-UNNAMED',
                --     '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
                --     "-configuration",
                --     "/home/gk/.local/share/nvim/mason/packages/jdtls/config_linux",
                --     -- "/home/gk/.cache/jdtls/config",
                --     -- "-data",
                --     -- "/home/gk/.cache/jdtls/workspace",
                -- },
                -- on_attach = on_attach,
            -- })

            -- Global keymaps removed - they're now handled by the on_attach function
        end,
    },
    {
        "rust-lang/rust.vim",
    },
    {
        "numToStr/Comment.nvim",
        lazy = false,
        config = function()
            require("Comment").setup({
                toggler = {
                    line = "<leader>/",
                },
                opleader = {
                    line = "<leader>/",
                },
            })
        end,
    },
}
