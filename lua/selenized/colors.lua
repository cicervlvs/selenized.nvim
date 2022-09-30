local selenized = {

  white = '#eee8d5',
  gray = '#073642',
  black = '#002b36',
  red = '#dc322f',
  green = '#7d8d09',
  yellow = '#6c71c4',
  paleblue = '#586e75',
  cyan = '#7d8d09',
  blue = '#073642',
  purple = '#b58900',
  orange = '#cb4b16',
  pink = '#073642',

  bg = '#fdf6e3',
  bg_alt = '#eee8d5',
  fg = '#657b83',
  text = '#586e75',
  comments = '#657b83',
  selection = '#d3cfc1',
  contrast = '#002b36',
  active = '#d8ccc4',
  border = '#002b36',
  line_numbers = '#839496',
  highlight = '#d8ccc4',
  disabled = '#073642',
  cursor = '#268bd2',
  accent = '#073642',

  error = '#d33682',
  link = '#2aa198',

  none = 'NONE'
}

-- Optional colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.selenized_contrast == false then
  selenized.sidebar = selenized.bg
  selenized.float = selenized.bg
else
  selenized.sidebar = selenized.bg_alt
  selenized.float = selenized.bg_alt
end

return selenized
