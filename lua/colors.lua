local base16 = require('base16')

-- themes
local abyss_dark = base16.theme_from_array {
  "101010"; "1f211f"; "282828"; "3b3b3b";
  "e8e3e3"; "e8e3e3"; "e8e3e3"; "e8e3e3";
  "c5c8c6"; "999999"; "079c5f"; "9f9f9f";
  "8aa6a2"; "079c5f"; "999999"; "e8e3e3";
}

local abyss_dark_alt = base16.theme_from_array {
  "101010"; "1f211f"; "282828"; "3b3b3b";
  "6f6f6f"; "e8e8e8"; "e8e8e8"; "fafafa";
  "078f9c"; "3ddbd9"; "079c5f"; "9f9f9f";
  "ff3299"; "079c5f"; "078f9c"; "3ddbd9";
  -- test comment
}

local ibm_dark = base16.theme_from_array {
  "161616"; "262626"; "393939"; "525252";
  "6F6F6F"; "FAFAFA"; "FAFAFA"; "FFFFFF";
  "be95ff"; "3ddbd9"; "0043ce"; "33b1ff";
  "ff7eb6"; "42be65"; "be95ff"; "3ddbd9";
}

local coda_dark = base16.theme_from_array {
  "101010"; "1f211f"; "282828"; "3b3b3b";
  "6f6f6f"; "e8e8e8"; "e8e8e8"; "fafafa";
  "00966f"; "008d71"; "007c7a"; "9f9f9f";
  "2f4858"; "15596c"; "00966f"; "008d71";
}

base16(abyss_dark_alt, true)

-- higlights
vim.cmd [[
  exe "hi StatusInactive guibg=background guifg=".g:terminal_color_8 
  exe "hi StatusNormal guifg=background guibg=".g:terminal_color_2
  exe "hi StatusReplace guifg=background guibg=".g:terminal_color_1
  exe "hi StatusInsert guifg=background guibg=".g:terminal_color_2
  exe "hi StatusCommand guifg=background guibg=".g:terminal_color_3
  exe "hi StatusVisual guifg=background guibg=".g:terminal_color_4
  exe "hi StatusTerminal guifg=background guibg=".g:terminal_color_5

  exe "hi NvimTreeGitDirty guifg=".g:terminal_color_1
  exe "hi NvimTreeGitNew guifg=".g:terminal_color_2
  exe "hi NvimTreeGitDeleted guifg=".g:terminal_color_1
  exe "hi NvimTreeGitRenamed guifg=".g:terminal_color_3
  exe "hi NvimTreeSpecialFile guifg=".g:terminal_color_5
  exe "hi NvimTreeExecFile guifg=".g:terminal_color_2
  exe "hi NvimTreeImageFile guifg=".g:terminal_color_7

  hi EndOfBuffer guifg=background 
  hi LineNr guibg=background
  hi SignColumn guibg=background
  hi VertSplit guibg=background

  hi! link TabLineSel StatusInsert
  hi TabLine guibg=background
  hi TabLineFill guibg=background

  hi FoldColumn guibg=background                                                                         
  hi DiffAdd guibg=background                                                                         
  hi DiffChange guibg=background                                             
  hi DiffDelete guibg=background                                                                
  hi DiffText guibg=background
]]
