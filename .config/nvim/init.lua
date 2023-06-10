require('colors')
require('options')
require('plugins')
require('lsp')
require('formatters')

-- Pro-tips in case I forget:
--
-- 1. Use `:find` for fuzzy file search, like `:find *user`
-- 2. Use `:! git add %` to add the current file to git
-- 3. Use `:! sed -i 's/old/new/g' *.txt` for find and replace across a project
-- 4. Use `:%s/old/new/g` for find and replace within a file
-- 5. Use `-` to get to netrw
-- 6. To create directories or files, use `d` and `%`
-- 7. Use `:PackerInstall` to intall packages
-- 8. Use `:vim /foo/ *.txt` to search across a project
-- 9. Use `v` in netrw to open in split, then `o` or enter to open in previous pane
--
-- To-do items:
--
-- 1. Linting/formatting
-- 2. Git gutter
-- 3. Autocomplete
--
-- Links
--
-- 1. https://www.reddit.com/r/vim/comments/13vxits/vim_users_who_work_without_any_plugins_how_does/
-- 2. https://www.youtube.com/watch?v=XA2WjJbmmoM
