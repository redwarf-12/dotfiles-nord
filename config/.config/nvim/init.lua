-- ========================================================================== --
-- 1. ABILITA I COLORI REALI DEL TERMINALE + IMPOSTAZIONI VARIE
-- ========================================================================== --
vim.opt.termguicolors = true
vim.opt.number = true -- Mostra i numeri di riga (opzionale ma consigliato)

-- Imposta la larghezza visiva di un carattere Tab a 4 spazi
vim.opt.tabstop = 4       

-- Imposta il numero di spazi inseriti per ogni livello di indentazione (es. con > e <)
vim.opt.shiftwidth = 4    

-- Trasforma i Tab inseriti da tastiera in spazi corrispondenti
vim.opt.expandtab = true  

-- Rende il tasto Backspace intelligente (cancella 4 spazi in una volta se fungono da tab)
vim.opt.softtabstop = 4

vim.opt.clipboard = "unnamedplus"

-- ========================================================================== --
-- 2. BOOTSTRAP DI LAZY.NVIM (Installa il plugin manager se non è presente)
-- ========================================================================== --
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- ultima versione stabile
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- ========================================================================== --
-- 3. CONFIGURAZIONE DEI PLUGIN (Installazione di Nord Theme)
-- ========================================================================== --
require("lazy").setup({
  {
    "shaunsingh/nord.nvim",
    lazy = false,    -- Carica il tema immediatamente all'avvio
    priority = 1000, -- Assicura che venga caricato prima di altri plugin
    config = function()
      -- Applica il tema Nord
      vim.cmd([[colorscheme nord]])
    end,
  },
})
