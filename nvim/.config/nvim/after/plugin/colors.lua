vim.o.background = "dark" -- or "light" for light mode

function ColorVim(color)
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)
	-- can add transparnecy
	-- vim.api.nvim_set_hl(0, "Normal",{bg = "none"})
	-- vim.api.nvim_set_hl(0, "NormalFloat",{bg = "none"})

end

ColorVim()
