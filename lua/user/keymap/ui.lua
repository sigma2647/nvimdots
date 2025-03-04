local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cmd = bind.map_cmd
local map_cu = bind.map_cu
local map_callback = bind.map_callback

return {
	-- Remove default keymap
	-- ["n|<leader>nf"] = "",
	-- ["n|<leader>nr"] = false,
	-- Plugin: telescope
	["n|<leader><S-cr>"] = map_callback(function()
			_command_panel()
		end)
		:with_noremap()
		:with_silent()
		:with_desc("tool: Toggle command panel"),
	["n|<leader>fh"] = map_cr("Telescope help_tags"):with_noremap():with_silent():with_desc("find: help tags"),
	["n|<leader>e"] = map_cr("NvimTreeToggle"):with_noremap():with_silent(),

	-- bufferLine
	["n|<D-1>"] = map_cr("BufferLineGoToBuffer 1"):with_noremap():with_silent(),
	["n|<D-2>"] = map_cr("BufferLineGoToBuffer 2"):with_noremap():with_silent(),
	["n|<D-3>"] = map_cr("BufferLineGoToBuffer 3"):with_noremap():with_silent(),
	["n|<D-4>"] = map_cr("BufferLineGoToBuffer 4"):with_noremap():with_silent(),
	["n|<D-5>"] = map_cr("BufferLineGoToBuffer 5"):with_noremap():with_silent(),
	["n|<D-6>"] = map_cr("BufferLineGoToBuffer 6"):with_noremap():with_silent(),

	["n|<leader>1"] = map_cr("BufferLineGoToBuffer 1"):with_noremap():with_silent(),
	["n|<leader>2"] = map_cr("BufferLineGoToBuffer 2"):with_noremap():with_silent(),
	["n|<leader>3"] = map_cr("BufferLineGoToBuffer 3"):with_noremap():with_silent(),
	["n|<leader>4"] = map_cr("BufferLineGoToBuffer 4"):with_noremap():with_silent(),
	["n|<leader>5"] = map_cr("BufferLineGoToBuffer 5"):with_noremap():with_silent(),
	["n|<leader>6"] = map_cr("BufferLineGoToBuffer 6"):with_noremap():with_silent(),

	["n|<D-v>"] = map_cmd("a<C-r>+<Esc>"):with_noremap():with_silent(),
	["i|<D-v>"] = map_cmd("<C-r>+"):with_noremap():with_silent(),
	["c|<D-v>"] = map_cmd("<C-r>+"):with_noremap():with_silent(),
	["n|<D-s>"] = map_cr("w"):with_noremap():with_silent(),
	["n|<D-t>"] = map_cr("enew"):with_noremap():with_silent(),
	["n|<c-w>"] = map_cr("bd"):with_noremap():with_silent(),

	["n|<D-}>"] = map_cr("BufferLineCycleNext"):with_noremap():with_silent(),
	["n|<D-{>"] = map_cr("BufferLineCyclePrev"):with_noremap():with_silent(),
}
