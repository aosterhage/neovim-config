local status, project_nvim = pcall(require, 'project_nvim')
if not status then
	return
end

project_nvim.setup({
  -- disable 'lsp' to avoid issues with multi-language projects
	detection_methods = { 'pattern' },

  -- show hidden files
	show_hidden = true,

  -- don't show message when changing directories
	silent_chdir = true
})

