require('presence'):setup {
	auto_update	= true,
	neovim_image_text = 'i don\'t want to deal with vscode',
	main_image = 'file',
	log_level = 'debug',
	debounce_timeout = 10,
    enable_line_number	= false,
	editing_text = 'Editing %s',
	file_explorer_text	= 'Browsing %s',
	git_commit_text = 'Committing Changes', 
	plugin_manager_text = 'Managing Plugins',
	reading_text = 'Looking at %s',
	workspace_text = 'Workspace: %s',
    line_number_text = 'Line %s/%s',
}
