vim.filetype.add {
  pattern = {
    ['.*%.gitlab%-ci.*%.ya?ml'] = 'yaml.gitlab',
    ['.*/.gitlab/.*%.ya?ml'] = 'yaml.gitlab',
  },
}

vim.lsp.config('gitlab_ci_ls', {
  cmd = { 'gitlab-ci-ls' },
  filetypes = { 'yaml.gitlab' },
  root_markers = { '.git', '.gitlab-ci.yml' },
  init_options = {
    log_path = vim.fn.expand '~/.cache/nvim/gitlab-ci-ls.log',
    cache_path = vim.fn.expand '~/.cache/nvim/gitlab-ci-ls',
  },
})
vim.lsp.enable 'gitlab_ci_ls'
