local present, nvim_context_vt = pcall(require, "nvim_context_vt")

if not present then
  return
end

nvim_context_vt.setup({
  enabled = true,
  disable_ft = { 'markdown' },
  disable_virtual_lines = false,
  disable_virtual_lines_ft = { 'yaml' },
  min_rows = 1,
  min_rows_ft = {},
})
