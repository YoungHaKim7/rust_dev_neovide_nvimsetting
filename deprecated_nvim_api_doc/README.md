# 이거 플러그인 해결해야함.. 
- 버젼업이 안되는중..

- https://github.com/p00f/clangd_extensions.nvim

# rust-analyzer(LSP 설명서)
- https://rust-analyzer.github.io/book/configuration.html

<hr />

# https://neovim.io/doc/user/deprecated.html

```txt
*deprecated.txt*       Nvim


                             NVIM REFERENCE MANUAL


Nvim                                                             *deprecated*

The items listed below are deprecated: they will be removed in the future.
They should not be used in new scripts, and old scripts should be updated.

==============================================================================
Deprecated features

DEPRECATED IN 0.10 *deprecated-0.10*

• Configuring |diagnostic-signs| using |:sign-define| or |sign_define()|. Use
  the "signs" key of |vim.diagnostic.config()| instead.

• Checkhealth functions:
  - *health#report_error* *vim.health.report_error()*	Use |vim.health.error()| instead.
  - *health#report_info* *vim.health.report_info()*	Use |vim.health.info()| instead.
  - *health#report_ok* *vim.health.report_ok()*		Use |vim.health.ok()| instead.
  - *health#report_start* *vim.health.report_start()*	Use |vim.health.start()| instead.
  - *health#report_warn* *vim.health.report_warn()*	Use |vim.health.warn()| instead.

• |API| functions:
  - *nvim_buf_get_option()*	Use |nvim_get_option_value()| instead.
  - *nvim_buf_set_option()*	Use |nvim_set_option_value()| instead.
  - *nvim_call_atomic()*		Use |nvim_exec_lua()| instead.
  - *nvim_get_option()*		Use |nvim_get_option_value()| instead.
  - *nvim_set_option()*		Use |nvim_set_option_value()| instead.
  - *nvim_win_get_option()*	Use |nvim_get_option_value()| instead.
  - *nvim_win_set_option()*	Use |nvim_set_option_value()| instead.

• vim.diagnostic functions:
  - *vim.diagnostic.disable()*		Use |vim.diagnostic.enable()|
  - *vim.diagnostic.is_disabled()*	Use |vim.diagnostic.is_enabled()|
  - Legacy signature: `vim.diagnostic.enable(buf:number, namespace:number)`

• vim.lsp functions:
  - *vim.lsp.util.get_progress_messages()*	Use |vim.lsp.status()| instead.
  - *vim.lsp.get_active_clients()*		Use |vim.lsp.get_clients()| instead.
  - *vim.lsp.for_each_buffer_client()*		Use |vim.lsp.get_clients()| instead.
  - *vim.lsp.util.trim_empty_lines()*		Use |vim.split()| with `trimempty` instead.
  - *vim.lsp.util.try_trim_markdown_code_blocks()*
  - *vim.lsp.util.set_lines()*
  - *vim.lsp.util.extract_completion_items()*
  - *vim.lsp.util.parse_snippet()*
  - *vim.lsp.util.text_document_completion_list_to_complete_items()*
  - *vim.lsp.util.lookup_section()*		Use |vim.tbl_get()| instead: >
						local keys = vim.split(section, '.', { plain = true })
						local  vim.tbl_get(table, unpack(keys))

• *vim.loop*				Use |vim.uv| instead.

• vim.treesitter functions:
  - *LanguageTree:for_each_child()*		Use |LanguageTree:children()| (non-recursive) instead.

• The "term_background" UI option |ui-ext-options| is deprecated and no longer
  populated. Background color detection is now performed in Lua by the Nvim
  core, not the TUI.

• Lua stdlib:
  - *vim.tbl_add_reverse_lookup()*
  - *vim.tbl_flatten()*			Use |Iter:flatten()| instead.
  - *vim.tbl_islist()*			Use |vim.islist()| instead.

DEPRECATED IN 0.9 *deprecated-0.9*

• vim.treesitter functions
  - *vim.treesitter.language.require_language()*	Use |vim.treesitter.language.add()| instead.
  - *vim.treesitter.get_node_at_pos()*			Use |vim.treesitter.get_node()| instead.
  - *vim.treesitter.get_node_at_cursor()*		Use |vim.treesitter.get_node()|
							and |TSNode:type()| instead.

• |API| functions:
  - *nvim_get_hl_by_name()*		Use |nvim_get_hl()| instead.
  - *nvim_get_hl_by_id()*		Use |nvim_get_hl()| instead.

• The following top level Treesitter functions have been moved:
  - *vim.treesitter.inspect_language()*    -> |vim.treesitter.language.inspect()|
  - *vim.treesitter.get_query_files()*     -> |vim.treesitter.query.get_files()|
  - *vim.treesitter.set_query()*           -> |vim.treesitter.query.set()|
  - *vim.treesitter.query.set_query()*     -> |vim.treesitter.query.set()|
  - *vim.treesitter.get_query()*           -> |vim.treesitter.query.get()|
  - *vim.treesitter.query.get_query()*     -> |vim.treesitter.query.get()|
  - *vim.treesitter.parse_query()*         -> |vim.treesitter.query.parse()|
  - *vim.treesitter.query.parse_query()*   -> |vim.treesitter.query.parse()|
  - *vim.treesitter.add_predicate()*       -> |vim.treesitter.query.add_predicate()|
  - *vim.treesitter.add_directive()*       -> |vim.treesitter.query.add_directive()|
  - *vim.treesitter.list_predicates()*     -> |vim.treesitter.query.list_predicates()|
  - *vim.treesitter.list_directives()*     -> |vim.treesitter.query.list_directives()|
  - *vim.treesitter.query.get_range()*     -> |vim.treesitter.get_range()|
  - *vim.treesitter.query.get_node_text()* -> |vim.treesitter.get_node_text()|

• Lua stdlib:
  - *nvim_exec()*				Use |nvim_exec2()| instead.
  - *vim.pretty_print()*			Use |vim.print()| instead.

DEPRECATED IN 0.8 OR EARLIER

API
- *nvim_buf_clear_highlight()*	Use |nvim_buf_clear_namespace()| instead.
- *nvim_buf_set_virtual_text()*	Use |nvim_buf_set_extmark()| instead.
- *nvim_command_output()*	Use |nvim_exec2()| instead.
- *nvim_execute_lua()*		Use |nvim_exec_lua()| instead.
- *nvim_get_option_info()*	Use |nvim_get_option_info2()| instead.

COMMANDS
- *:rv* *:rviminfo*		Deprecated alias to |:rshada| command.
- *:wv* *:wviminfo*		Deprecated alias to |:wshada| command.

ENVIRONMENT VARIABLES
- *$NVIM_LISTEN_ADDRESS*
  - Deprecated way to:
    - set the server name (use |--listen| or |serverstart()| instead)
    - get the server name (use |v:servername| instead)
    - detect a parent Nvim (use |$NVIM| instead)
  - Ignored if --listen is given.
  - Unset by |terminal| and |jobstart()| unless explicitly given by the "env"
    option. Example: >vim
	call jobstart(['foo'], { 'env': { 'NVIM_LISTEN_ADDRESS': v:servername  } })
<

EVENTS
- *BufCreate*		Use |BufAdd| instead.
- *EncodingChanged*	Never fired; 'encoding' is always "utf-8".
- *FileEncoding*	Never fired; equivalent to |EncodingChanged|.
- *GUIEnter*		Never fired; use |UIEnter| instead.
- *GUIFailed*		Never fired.

KEYCODES
- *<MouseDown>*		Use <ScrollWheelUp> instead.
- *<MouseUp>*		Use <ScrollWheelDown> instead.

FUNCTIONS
- *buffer_exists()*	Obsolete name for |bufexists()|.
- *buffer_name()*	Obsolete name for |bufname()|.
- *buffer_number()*	Obsolete name for |bufnr()|.
- *file_readable()*	Obsolete name for |filereadable()|.
- *highlight_exists()*	Obsolete name for |hlexists()|.
- *highlightID()*	Obsolete name for |hlID()|.
- *inputdialog()*	Use |input()| instead.
- *jobclose()*		Obsolete name for |chanclose()|
- *jobsend()*		Obsolete name for |chansend()|
- *last_buffer_nr()*	Obsolete name for bufnr("$").
- *rpcstop()*		Use |jobstop()| instead to stop any job, or
			`chanclose(id, "rpc")` to close RPC communication
			without stopping the job. Use chanclose(id) to close
			any socket.

HIGHLIGHTS
- *hl-VertSplit*	Use |hl-WinSeparator| instead.

LSP DIAGNOSTICS
For each of the functions below, use the corresponding function in
|vim.diagnostic| instead (unless otherwise noted). For example, use
|vim.diagnostic.get()| instead of |vim.lsp.diagnostic.get()|.

- *vim.lsp.diagnostic.clear()*		Use |vim.diagnostic.hide()| instead.
- *vim.lsp.diagnostic.disable()*          Use |vim.diagnostic.enable()| instead.
- *vim.lsp.diagnostic.display()*	Use |vim.diagnostic.show()| instead.
- *vim.lsp.diagnostic.enable()*
- *vim.lsp.diagnostic.get()*
- *vim.lsp.diagnostic.get_all()*	Use |vim.diagnostic.get()| instead.
- *vim.lsp.diagnostic.get_count()*	Use |vim.diagnostic.count()| instead.
- *vim.lsp.diagnostic.get_line_diagnostics()* Use |vim.diagnostic.get()| instead.
- *vim.lsp.diagnostic.get_next()*
- *vim.lsp.diagnostic.get_next_pos()*
- *vim.lsp.diagnostic.get_prev()*
- *vim.lsp.diagnostic.get_prev_pos()*
- *vim.lsp.diagnostic.get_virtual_text_chunks_for_line()* No replacement. Use
  options provided by |vim.diagnostic.config()| to customize virtual text.
- *vim.lsp.diagnostic.goto_next()*
- *vim.lsp.diagnostic.goto_prev()*
- *vim.lsp.diagnostic.redraw()*		Use |vim.diagnostic.show()| instead.
- *vim.lsp.diagnostic.reset()*
- *vim.lsp.diagnostic.save()*		Use |vim.diagnostic.set()| instead.
- *vim.lsp.diagnostic.set_loclist()*	Use |vim.diagnostic.setloclist()| instead.
- *vim.lsp.diagnostic.set_qflist()*	Use |vim.diagnostic.setqflist()| instead.
- *vim.lsp.diagnostic.show_line_diagnostics()* Use |vim.diagnostic.open_float()| instead.
- *vim.lsp.diagnostic.show_position_diagnostics()* Use |vim.diagnostic.open_float()| instead.

The following are deprecated without replacement. These functions are moved
internally and are no longer exposed as part of the API. Instead, use
|vim.diagnostic.config()| and |vim.diagnostic.show()|.

- *vim.lsp.diagnostic.set_signs()*
- *vim.lsp.diagnostic.set_underline()*
- *vim.lsp.diagnostic.set_virtual_text()*

Configuring |diagnostic-signs| with |:sign-define| or |sign_define()| is no
longer supported. Use the "signs" key of |vim.diagnostic.config()| instead.

LSP FUNCTIONS
- *vim.lsp.buf.server_ready()*
  Use |LspAttach| instead, depending on your use-case. "Server ready" is not
  part of the LSP spec, so the Nvim LSP client cannot meaningfully implement
  it. "Ready" is ambiguous because:
  - Language servers may finish analyzing the workspace, but edits can always
    re-trigger analysis/builds.
  - Language servers can serve some requests even while processing changes.
- *vim.lsp.buf.range_code_action()*		Use |vim.lsp.buf.code_action()| with
						the `range` parameter.
- *vim.lsp.util.diagnostics_to_items()*		Use |vim.diagnostic.toqflist()| instead.
- *vim.lsp.util.set_qflist()*			Use |setqflist()| instead.
- *vim.lsp.util.set_loclist()*			Use |setloclist()| instead.
- *vim.lsp.buf_get_clients()*			Use |vim.lsp.get_clients()| with
						{buffer=bufnr} instead.
- *vim.lsp.buf.formatting()*			Use |vim.lsp.buf.format()| with
						{async=true} instead.
- *vim.lsp.buf.formatting_sync()*		Use |vim.lsp.buf.format()| with
						{async=false} instead.
- *vim.lsp.buf.range_formatting()*		Use |vim.lsp.formatexpr()|
						or |vim.lsp.buf.format()| instead.

LUA
- vim.register_keystroke_callback()	Use |vim.on_key()| instead.

NORMAL COMMANDS
- *]f* *[f*		Same as "gf".

OPTIONS
- *cpo-<* *:menu-<special>* *:menu-special* *:map-<special>* *:map-special*
  `<>` notation is always enabled.
- *'fe'*		'fenc'+'enc' before Vim 6.0; no longer used.
- *'highlight'* *'hl'*	Names of builtin |highlight-groups| cannot be changed.
- *'langnoremap'*	Deprecated alias to 'nolangremap'.
- 'sessionoptions'	Flags "unix", "slash" are ignored and always enabled.
- *'vi'*
- 'viewoptions'		Flags "unix", "slash" are ignored and always enabled.
- *'viminfo'*		Deprecated alias to 'shada' option.
- *'viminfofile'*	Deprecated alias to 'shadafile' option.
- *'paste'* *'nopaste'*	Just Paste It.™  The 'paste' option is obsolete:
			|paste| is handled automatically when you paste text
			using your terminal's or GUI's paste feature
			(CTRL-SHIFT-v, CMD-v (macOS), middle-click, …).
			Enables "paste mode":
			  - Disables mappings in Insert, Cmdline mode.
			  - Disables abbreviations.
			  - Resets 'autoindent' 'expandtab' 'revins' 'ruler'
			    'showmatch' 'smartindent' 'smarttab' 'softtabstop'
			    'textwidth' 'wrapmargin'.
			  - Treats 'formatoptions' as empty.
			  - Disables the effect of these options:
			    - 'cindent'
			    - 'indentexpr'
			    - 'lisp'

UI EXTENSIONS
- *ui-wildmenu*		Use |ui-cmdline| with |ui-popupmenu| instead. Enabled
			by the `ext_wildmenu` |ui-option|. Emits these events:
			- `["wildmenu_show", items]`
			- `["wildmenu_select", selected]`
			- `["wildmenu_hide"]`
- *term_background*	Unused. The terminal background color is now detected
			by the Nvim core directly instead of the TUI.

VARIABLES
- *b:terminal_job_pid*	Use `jobpid(&channel)` instead.
- *b:terminal_job_id*	Use `&channel` instead. To access in non-current buffer:
			- Lua: `vim.bo[bufnr].channel`
			- Vimscript: `getbufvar(bufnr, '&channel')`


 vim:noet:tw=78:ts=8:ft=help:norl:

```


<hr>

- gitsigns.lua

```lua
-- vim.api.nvim_set_hl(0, 'GitSignsAdd', { link= 'GitSignsAdd'})
--
-- require('gitsigns').setup {
--     signs = {
--       -- add          = {hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
--       change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
--       delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
--       topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
--       changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
--     },
--     signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
--     numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
--     linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
--     word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
--     watch_gitdir = {
--       interval = 1000,
--       follow_files = true
--     },
--     attach_to_untracked = true,
--     current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
--     current_line_blame_opts = {
--       virt_text = true,
--       virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
--       delay = 1000,
--       ignore_whitespace = false,
--     },
--     current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
--     sign_priority = 6,
--     update_debounce = 100,
--     status_formatter = nil, -- Use default
--     max_file_length = 40000,
--     preview_config = {
--       -- Options passed to nvim_open_win
--       border = 'single',
--       style = 'minimal',
--       relative = 'cursor',
--       row = 0,
--       col = 1
--     },
--     yadm = {
--       enable = false
--     },
--   }
```


# 업데이트시 수정해얗마

```
vim.deprecated:                       require("vim.deprecated.health").check()

 ~
- WARNING vim.lsp.buf_get_clients() is deprecated. Feature will be removed in Nvim 0.12
  - ADVICE:
    - use vim.lsp.get_clients() instead.
    - stack traceback:
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim/lua/symbols-outline/providers/nvim-lsp.lua:41
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim/lua/symbols-outline/providers/init.lua:15
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim/lua/symbols-outline.lua:161
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim/lua/symbols-outline.lua:19
    - stack traceback:
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/feline.nvim/lua/feline/providers/lsp.lua:7
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/feline.nvim/lua/feline/generator.lua:412
        [C]:-1
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/feline.nvim/lua/feline/generator.lua:487
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/feline.nvim/lua/feline/generator.lua:604
        [C]:-1
        /Users/gy-gyoung/utilities/nvim-macos/share/nvim/runtime/lua/vim/health.lua:393
        nvim>:1
    - stack traceback:
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/feline.nvim/lua/feline/providers/lsp.lua:7
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/feline.nvim/lua/feline/generator.lua:412
        [C]:-1
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/feline.nvim/lua/feline/generator.lua:487
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/feline.nvim/lua/feline/generator.lua:604
        [C]:-1
        /Users/gy-gyoung/utilities/nvim-macos/share/nvim/runtime/lua/vim/health.lua:444
        nvim>:1

 ~
- WARNING vim.lsp.start_client() is deprecated. Feature will be removed in Nvim 0.13
  - ADVICE:
    - use vim.lsp.start() instead.
    - stack traceback:
        /Users/gy-gyoung/.config/nvim/pack/github/start/copilot.vim/lua/_copilot.lua:31

 ~
- WARNING vim.str_utfindex is deprecated. Feature will be removed in Nvim 1.0
  - ADVICE:
    - use vim.str_utfindex(s, encoding, index, strict_indexing) instead.
    - stack traceback:
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/context.lua:56
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/context.lua:25
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/context.lua:44
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/core.lua:28
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/init.lua:12
        [C]:-1
        /Users/gy-gyoung/.config/nvim/lua/plugins/cmp.lua:1
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:39
    - stack traceback:
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/context.lua:56
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/core.lua:28
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/init.lua:12
        [C]:-1
        /Users/gy-gyoung/.config/nvim/lua/plugins/cmp.lua:1
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:39
    - stack traceback:
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/context.lua:56
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/context.lua:25
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/source.lua:57
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/source.lua:49
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/init.lua:55
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/cmp-buffer/after/plugin/cmp_buffer.lua:1
    - stack traceback:
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/context.lua:56
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/context.lua:25
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/source.lua:57
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/source.lua:49
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/init.lua:55
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/cmp-cmdline/after/plugin/cmp_cmdline.lua:1
    - stack traceback:
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/context.lua:56
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/context.lua:25
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/source.lua:57
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/source.lua:49
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/init.lua:55
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/cmp-path/after/plugin/cmp_path.lua:1
    - stack traceback:
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/context.lua:56
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/context.lua:25
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/source.lua:57
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/source.lua:49
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/init.lua:55
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/cmp-vsnip/after/plugin/cmp_vsnip.lua:1
    - stack traceback:
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/context.lua:56
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/core.lua:65
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/core.lua:171
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/core.lua:170
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/init.lua:363
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/utils/async.lua:165
    - stack traceback:
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/context.lua:56
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/core.lua:65
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/core.lua:342
    - stack traceback:
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/context.lua:56
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/core.lua:65
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/core.lua:171
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/core.lua:170
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/init.lua:372
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/utils/async.lua:165
    - stack traceback:
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/context.lua:56
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/context.lua:25
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/source.lua:57
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/core.lua:528
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/init.lua:389
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/utils/autocmd.lua:53
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/utils/autocmd.lua:14
    - stack traceback:
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/context.lua:56
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/context.lua:25
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/core.lua:530
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/init.lua:389
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/utils/autocmd.lua:53
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-cmp/lua/cmp/utils/autocmd.lua:14

 ~
- WARNING vim.tbl_flatten is deprecated. Feature will be removed in Nvim 0.13
  - ADVICE:
    - use vim.iter(…):flatten():totable() instead.
    - stack traceback:
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/lua/colorizer/nvim.lua:96
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/lua/colorizer.lua:588
        /Users/gy-gyoung/.config/nvim/lua/plugins/nvim-colorizer.lua:1
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:34
    - stack traceback:
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/lua/colorizer/nvim.lua:96
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/lua/colorizer.lua:589
        /Users/gy-gyoung/.config/nvim/lua/plugins/nvim-colorizer.lua:1
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:34
    - stack traceback:
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/lua/colorizer/nvim.lua:96
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/lua/colorizer.lua:613
        /Users/gy-gyoung/.config/nvim/lua/plugins/nvim-colorizer.lua:1
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:34
    - stack traceback:
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/lua/colorizer/nvim.lua:96
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua/lua/colorizer.lua:617
        /Users/gy-gyoung/.config/nvim/lua/plugins/nvim-colorizer.lua:1
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:34

 ~
- WARNING vim.validate is deprecated. Feature will be removed in Nvim 1.0
  - ADVICE:
    - use vim.validate(name, value, validator, optional_or_msg) instead.
    - stack traceback:
        /Users/gy-gyoung/.config/nvim/lua/lspconfig/configs.lua:34
        /Users/gy-gyoung/.config/nvim/lua/lspconfig.lua:85
        /Users/gy-gyoung/.config/nvim/init.lua:8
    - stack traceback:
        /Users/gy-gyoung/.config/nvim/lua/lspconfig/configs.lua:54
        /Users/gy-gyoung/.config/nvim/lua/lspconfig.lua:85
        /Users/gy-gyoung/.config/nvim/init.lua:8
    - stack traceback:
        /Users/gy-gyoung/.config/nvim/lua/lspconfig/configs.lua:74
        /Users/gy-gyoung/.config/nvim/init.lua:8
    - stack traceback:
        /Users/gy-gyoung/.config/nvim/lua/lspconfig/configs.lua:34
        /Users/gy-gyoung/.config/nvim/lua/lspconfig.lua:85
        /Users/gy-gyoung/.config/nvim/init.lua:9
    - stack traceback:
        /Users/gy-gyoung/.config/nvim/lua/lspconfig/configs.lua:54
        /Users/gy-gyoung/.config/nvim/lua/lspconfig.lua:85
        /Users/gy-gyoung/.config/nvim/init.lua:9
    - stack traceback:
        /Users/gy-gyoung/.config/nvim/lua/lspconfig/configs.lua:74
        /Users/gy-gyoung/.config/nvim/init.lua:9
    - stack traceback:
        /Users/gy-gyoung/.config/nvim/lua/lspconfig/configs.lua:34
        /Users/gy-gyoung/.config/nvim/lua/lspconfig.lua:85
        /Users/gy-gyoung/.config/nvim/init.lua:10
    - stack traceback:
        /Users/gy-gyoung/.config/nvim/lua/lspconfig/configs.lua:74
        /Users/gy-gyoung/.config/nvim/init.lua:10
    - stack traceback:
        /Users/gy-gyoung/.config/nvim/lua/lspconfig/configs.lua:34
        /Users/gy-gyoung/.config/nvim/lua/lspconfig.lua:85
        /Users/gy-gyoung/.config/nvim/init.lua:11
    - stack traceback:
        /Users/gy-gyoung/.config/nvim/lua/lspconfig/configs.lua:74
        /Users/gy-gyoung/.config/nvim/init.lua:11
    - stack traceback:
        /Users/gy-gyoung/.config/nvim/lua/lspconfig/configs.lua:34
        /Users/gy-gyoung/.config/nvim/lua/lspconfig.lua:85
        /Users/gy-gyoung/.config/nvim/init.lua:12
    - stack traceback:
        /Users/gy-gyoung/.config/nvim/lua/lspconfig/configs.lua:74
        /Users/gy-gyoung/.config/nvim/init.lua:12
    - stack traceback:
        /Users/gy-gyoung/.config/nvim/lua/lspconfig/configs.lua:34
        /Users/gy-gyoung/.config/nvim/lua/lspconfig.lua:85
        /Users/gy-gyoung/.config/nvim/init.lua:13
    - stack traceback:
        /Users/gy-gyoung/.config/nvim/lua/lspconfig/configs.lua:54
        /Users/gy-gyoung/.config/nvim/lua/lspconfig.lua:85
        /Users/gy-gyoung/.config/nvim/init.lua:13
    - stack traceback:
        /Users/gy-gyoung/.config/nvim/lua/lspconfig/configs.lua:74
        /Users/gy-gyoung/.config/nvim/init.lua:13
    - stack traceback:
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-transparent/lua/transparent/config.lua:21
        /Users/gy-gyoung/.config/nvim/lua/plugins/transparency.lua:3
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:27
    - stack traceback:
        [C]:-1
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/utils.lua:352
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:9
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:91
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree.lua:701
        /Users/gy-gyoung/.config/nvim/lua/plugins/nvim-tree.lua:1
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:35
    - stack traceback:
        [C]:-1
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/utils.lua:352
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:10
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:91
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree.lua:701
        /Users/gy-gyoung/.config/nvim/lua/plugins/nvim-tree.lua:1
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:35
    - stack traceback:
        [C]:-1
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/utils.lua:352
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:13
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:91
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree.lua:701
        /Users/gy-gyoung/.config/nvim/lua/plugins/nvim-tree.lua:1
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:35
    - stack traceback:
        [C]:-1
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/utils.lua:352
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:14
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:91
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree.lua:701
        /Users/gy-gyoung/.config/nvim/lua/plugins/nvim-tree.lua:1
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:35
    - stack traceback:
        [C]:-1
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/utils.lua:352
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:15
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:91
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree.lua:701
        /Users/gy-gyoung/.config/nvim/lua/plugins/nvim-tree.lua:1
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:35
    - stack traceback:
        [C]:-1
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/utils.lua:352
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:18
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:91
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree.lua:701
        /Users/gy-gyoung/.config/nvim/lua/plugins/nvim-tree.lua:1
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:35
    - stack traceback:
        [C]:-1
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/utils.lua:352
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:21
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:91
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree.lua:701
        /Users/gy-gyoung/.config/nvim/lua/plugins/nvim-tree.lua:1
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:35
    - stack traceback:
        [C]:-1
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/utils.lua:352
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:24
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:91
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree.lua:701
        /Users/gy-gyoung/.config/nvim/lua/plugins/nvim-tree.lua:1
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:35
    - stack traceback:
        [C]:-1
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/utils.lua:352
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:38
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:91
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree.lua:701
        /Users/gy-gyoung/.config/nvim/lua/plugins/nvim-tree.lua:1
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:35
    - stack traceback:
        [C]:-1
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/utils.lua:352
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:41
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:91
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree.lua:701
        /Users/gy-gyoung/.config/nvim/lua/plugins/nvim-tree.lua:1
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:35
    - stack traceback:
        [C]:-1
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/utils.lua:352
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:44
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:91
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree.lua:701
        /Users/gy-gyoung/.config/nvim/lua/plugins/nvim-tree.lua:1
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:35
    - stack traceback:
        [C]:-1
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/utils.lua:352
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:62
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree/legacy.lua:91
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-tree.lua/lua/nvim-tree.lua:701
        /Users/gy-gyoung/.config/nvim/lua/plugins/nvim-tree.lua:1
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:35
    - stack traceback:
        /Users/gy-gyoung/.config/nvim/lua/lspconfig/configs.lua:74
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/rust-tools.nvim/lua/rust-tools/lsp.lua:170
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/rust-tools.nvim/lua/rust-tools/lsp.lua:236
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/rust-tools.nvim/lua/rust-tools/init.lua:121
        /Users/gy-gyoung/.config/nvim/lua/plugins/rusty-tools.lua:75
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:41
    - stack traceback:
        /Users/gy-gyoung/.config/nvim/lua/lspconfig/configs.lua:88
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/rust-tools.nvim/lua/rust-tools/lsp.lua:170
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/rust-tools.nvim/lua/rust-tools/lsp.lua:236
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/rust-tools.nvim/lua/rust-tools/init.lua:121
        /Users/gy-gyoung/.config/nvim/lua/plugins/rusty-tools.lua:75
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:41
    - stack traceback:
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-dap-ui/lua/dapui/config/init.lua:153
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-dap-ui/lua/dapui/config/init.lua:198
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-dap-ui/lua/dapui/config/init.lua:230
        [C]:-1
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-dap-ui/lua/dapui/util.lua:1
        [C]:-1
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-dap-ui/lua/dapui/windows/init.lua:5
        [C]:-1
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-dap-ui/lua/dapui/init.lua:47
        [C]:-1
        /Users/gy-gyoung/.config/nvim/lua/plugins/dap-ui.lua:1
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:42
    - stack traceback:
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-dap-ui/lua/dapui/config/init.lua:153
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-dap-ui/lua/dapui/config/init.lua:198
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/nvim-dap-ui/lua/dapui/init.lua:84
        /Users/gy-gyoung/.config/nvim/lua/plugins/dap-ui.lua:1
        [C]:-1
        /Users/gy-gyoung/.config/nvim/init.lua:42
    - stack traceback:
        /Users/gy-gyoung/.config/nvim/lua/lspconfig/configs.lua:34
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/vim-tabby/lua/tabby/lsp/nvim_lsp.lua:29
    - stack traceback:
        /Users/gy-gyoung/.config/nvim/lua/lspconfig/configs.lua:74
        /Users/gy-gyoung/.local/share/nvim/site/pack/packer/start/vim-tabby/lua/tabby/lsp/nvim_lsp.lua:31

```

# vim.lsp.buf_get_clients() 해결
- https://github.com/gmelodie/project.nvim


# 0.12 neovim해결 해야함.

```
/checkOnSave: invalid type: map, expected a boolean;
position_encoding param is required in vim.lsp.util.make_position_params. Defaulting to position encoding of the first client.
warning: multiple different client offset_encodings detected for buffer, vim.lsp.util._get_offset_encoding() uses the offset_encoding from
 the first client
/home/g/.config/nvim/lua/plugins/cmp.lua:25: attempt to call field 'parse_snippet' (a nil value)
```
