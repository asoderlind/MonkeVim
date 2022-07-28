local present_1, nvimtree = pcall(require, "nvim-tree")

if not present_1 then
   return
end

local g = vim.g

vim.o.termguicolors = true

nvimtree.setup {
   disable_netrw       = true,
   hijack_netrw        = true,
   open_on_setup       = false,
   ignore_ft_on_setup  = {},
   open_on_tab         = false,
   hijack_cursor       = false,
   respect_buf_cwd     = true,
   update_cwd          = false,
   update_to_buf_dir   = {
     enable = true,
     auto_open = true,
   },
   diagnostics = {
     enable = false,
     icons = {
       hint = "",
       info = "",
       warning = "",
       error = "",
     }
   },
   update_focused_file = {
     enable      = true,
     update_cwd  = true,
     ignore_list = {}
   },
   system_open = {
     cmd  = nil,
     args = {}
   },
   filters = {
     dotfiles = false,
     custom = {}
   },
   git = {
     enable = true,
     ignore = true,
     timeout = 500,
   },
   view = {
     width = 30,
     height = 30,
     hide_root_folder = false,
     side = 'left',
     auto_resize = false,
     mappings = {
       custom_only = false,
       list = {}
     },
     number = false,
     relativenumber = false,
     signcolumn = "yes"
   },
   trash = {
     cmd = "trash",
     require_confirm = true
  },
  renderer = {
    add_trailing = false,
    highlight_opened_files = "all",
    indent_markers = {
      enable = true
    },
    root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" },
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
         default = "",
         symlink = "",
         git = {
            deleted = "",
            ignored = "◌",
            renamed = "➜",
            staged = "✓",
            unmerged = "",
            unstaged = "✗",
            untracked = "★",
         },
         folder = {
            default = "",
            empty = "", -- 
            empty_open = "",
            open = "",
            symlink = "",
            symlink_open = "",
         },
      }
    }
  }
}
