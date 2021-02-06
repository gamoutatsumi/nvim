local M = {}
M['add'] = vim.fn['dein#add']
M['update'] = vim.fn['dein#update']
M['begin'] = vim.fn['dein#begin']
M['build'] = vim.fn['dein#build']
M['call_hook'] = vim.fn['dein#call_hook']
M['check_install'] = vim.fn['dein#check_install']
M['check_lazy_plugins'] = vim.fn['dein#check_lazy_plugins']
M['check_update'] = vim.fn['dein#check_update']
M['check_clean'] = vim.fn['dein#check_clean']
M['clear_state'] = vim.fn['dein#clear_state']
M['config'] = vim.fn['dein#config']
M['direct_install'] = vim.fn['dein#direct_install']
M['disable'] = vim.fn['dein#disable']
M['each'] = vim.fn['dein#each']
M['end'] = vim.fn['dein#end']
M['get'] = vim.fn['dein#get']
M['get_direct_plugins_path'] = vim.fn['dein#get_direct_plugins_path']
M['get_log'] = vim.fn['dein#get_log']
M['get_progress'] = vim.fn['dein#get_progress']
M['get_updates_log'] = vim.fn['dein#get_updates_log']
M['install'] = vim.fn['dein#install']
M['is_sources'] = vim.fn['dein#is_sources']
M['load_dict'] = vim.fn['dein#load_dict']
M['load_rollback'] = vim.fn['dein#load_rollback']
M['load_state'] = vim.fn['dein#load_state']
M['load_toml'] = vim.fn['dein#load_toml']
M['local'] = vim.fn['dein#local']
M['update'] = vim.fn['dein#update']
M['plugins2toml'] = vim.fn['dein#plugins2toml']
M['reinstall'] = vim.fn['dein#reinstall']
M['remote_plugins'] = vim.fn['dein#remote_plugins']
M['rollback'] = vim.fn['dein#rollback']
M['recache_runtimepath'] = vim.fn['dein#recache_runtimepath']
M['save_rollback'] = vim.fn['dein#save_rollback']
M['save_state'] = vim.fn['dein#save_state']
M['set_hook'] = vim.fn['dein#set_hook']
M['source'] = vim.fn['dein#source']
M['tap'] = vim.fn['dein#tap']

return M