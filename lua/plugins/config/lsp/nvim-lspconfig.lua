--
--  Language Server Protocol
-- 


-- lsp debug log
vim.lsp.set_log_level("debug")


-- 语言服务器根据客户端的功能提供不同的完成结果。
-- Neovim的默认omnifunc对服务完成候选者有基本的支持。
-- nvim-cmp支持更多类型的完成候选，因此用户必须覆盖发送到服务器的能力，
-- 以便它可以在完成请求期间提供这些候选。
-- 这些功能通过辅助函数 require('cmp_nvim_lsp').default_capabilities 提供
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local on_attach = function(client, bufnr)
  client.server_capabilities.documentFormattingProvider = true
  client.server_capabilities.documentRangeFormattingProvider = true
  --  client.server_capabilities.semanticTokensProvider = nil
end





----------  set ------------

local nvim_lsp = require('lspconfig')

local servers = {
    "html",
    "emmet_ls",
    "cssls",
    "bashls",
    "emmet_ls",
    "tsserver",
    "vls",
    "tailwindcss"
}

for _, k in ipairs(servers) do
  nvim_lsp[k].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end


nvim_lsp.clangd.setup{
     on_attach = on_attach,
    capabilities = capabilities,
    --cmd = {"/home/tp/.local/bin/clangd"},
    filetypes = { "c", "objc", "objcpp", "cuda", "proto" },
    single_file_support = true,

}

nvim_lsp.bashls.setup{
    on_attach = on_attach,
    capabilities = capabilities,
    --cmd = { "bash-language-server", "start" },
    filetypes = { "sh" },
    settings = {
        bashIde = {
            globPattern = "*@(.sh|.inc|.bash|.command)"
        }
    },
    single_file_support = true,
}

nvim_lsp.lua_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"lua"},
    --cmd = {"/home/tp/.local/bin/lua/bin/lua-language-server"},
    settings = {
         Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            workspace = {
                library = { vim.api.nvim_get_runtime_file("", true),
                [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
                },
            },
            diagnostics = {
                globals = {
                    "vim"
                }
            },
            telemetry = {
                enable = false,
            },
        }
    }
}



nvim_lsp.pyright.setup{
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"python"},
    --cmd = {"/home/tp/.local/bin/pylsp"},
}


nvim_lsp.gopls.setup{
  --cmd = {'/home/tp/go/bin/gopls'},
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    gopls = {
      experimentalPostfixCompletions = true,
      analyses = {
        unusedparams = true,
        shadow = true,
      },
      staticcheck = true,
    },
  },
  init_options = {
    usePlaceholders = true,
  }
}


nvim_lsp.rust_analyzer.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  --cmd = {"/home/tp/.local/bin/rust-analyzer"},
  settings = {
    ['rust-analyzer'] = {
      diagnostics = {
        enable = true;
      }
    }
  }
}

nvim_lsp.tsserver.setup{
    on_attach = on_attach,
    capabilities = capabilities,
    --cmd = { "typescript-language-server", "--stdio" },
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    init_options = {
            hostInfo = "neovim"
    },
    --root_dir = root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
    single_file_support = true,
}
