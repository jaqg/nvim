require('rose-pine').setup({
    disable_background = true
})

function ColorMyPencils(color) 
	-- color = color or "rose-pine"
	color = color or "catppuccin-macchiato"
	vim.cmd.colorscheme(color)

        -- Set transparent background
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()
