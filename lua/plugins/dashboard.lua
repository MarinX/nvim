---@type LazySpec
return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = [[
 _____ ______       ________     
|\   _ \  _   \    |\   __  \    
\ \  \\\__\ \  \   \ \  \|\ /_   
 \ \  \\|__| \  \   \ \   __  \  
  \ \  \    \ \  \   \ \  \|\  \ 
   \ \__\    \ \__\   \ \_______\
    \|__|     \|__|    \|_______|
                                 
                                 
                                 ]],
      },
      sections = {
        { section = "header" },
        { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
        { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        { section = "startup" },
      },
    },
  },
}
