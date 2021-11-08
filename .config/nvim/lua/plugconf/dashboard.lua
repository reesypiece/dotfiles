local g = vim.g

g.dashboard_default_executive = 'telescope'
g.dashboard_diable_statusline = 1

g.dashboard_custom_header = {
    '⠀⠀⠀⠀⠀⡀⠀⠑⣄⠀⠀⠀⢀⣀⣀⣀⣀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⡀⢀⣀⣀⣀⡀⠀⠀⣀⠔⠀⢀⠄⠀⠀⠀⠀',
    '⠀⠀⠀⢀⣤⡬⣶⣲⢾⣽⣻⣽⣻⢺⢽⡷⣿⢿⡿⣷⣶⣤⣀⠁⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⣁⣠⣴⣶⡅⢝⠄⠸⣽⢯⡷⣟⣟⣯⢷⣲⡴⣯⣀⡀⠀⠀⠀',
    '⠀⠀⠀⠀⢳⣻⣳⢯⣟⡾⠽⠚⡣⡂⠁⠣⡊⢆⠭⡙⠗⠁⢡⢼⣖⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⢐⣽⣟⠿⡻⡋⡍⡪⠀⠈⡍⡍⢟⡫⠿⡽⡯⡿⣽⡳⡯⠁⠀⠀⠀',
    '⠀⠀⠀⠀⠈⢺⢮⡓⠁⠀⠀⡸⡑⢔⠀⠀⠁⠁⠁⠀⢄⢲⠀⠈⠻⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡺⠉⠀⠘⠔⡑⢌⠢⠀⠐⠨⡘⡌⢵⠀⠀⠈⢹⢮⠯⠁⠀⠀⠀⠀',
    '⠀⠀⠀⠀⠀⠀⢻⡲⠀⠀⠀⡇⠎⠂⠀⠀⠀⠀⢀⠣⠑⠁⠃⠀⠀⠈⢣⠀⠀⠀⠀⠀⠀⠀⠀⢀⠎⡀⠀⠀⠃⠐⠀⠄⠀⠀⠀⠀⠨⠘⡸⠀⠀⠀⡼⡵⠁⠀⠀⠀⠀⠀',
    '⠀⠀⠀⠀⠀⠀⠀⠹⣅⠀⠀⠀⡠⡀⡢⡂⡀⠐⠨⡊⢔⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠰⡐⢅⢣⠡⠀⠠⡂⡢⢠⠀⠀⠀⢰⠝⠀⠀⠀⠀⠀⠀⠀',
    '⠀⠀⠀⠀⠀⠀⠀⠀⠘⢆⠀⠀⠈⠢⠱⠨⡢⡀⠨⡊⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠨⠢⠣⡀⢌⢢⠑⠉⠀⠀⢠⠋⠀⠀⠀⠀⠀⠀⠀⠀',
    '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠀⠀⠀⠀⠀⠁⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⡀⠀⠀⠀⢀⠠⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠈⠀⠂⠂⠒⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠂⠂⠂⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    '      ',
    '                       welcome to naevim                      ',
}

g.dashboard_custom_section = {
	a = { description = { '  Find File                        ' }, command = 'Telescope find_files' },
	b = { description = { '  Recents                          ' }, command = 'Telescope oldfiles' },
	c = { description = { '  Find Word                        ' }, command = 'Telescope live_grep' },
	d = { description = { 'ﱐ  New File                         ' }, command = 'DashboardNewFile' },
}

g.dashboard_custom_footer = {
	'	',
    'monochrome to colors',
}
