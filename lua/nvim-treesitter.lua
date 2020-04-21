local api = vim.api
local parsers = require'nvim-treesitter.parsers'
local configs = require 'nvim-treesitter.configs'
local install = require'nvim-treesitter.install'
local locals = require'nvim-treesitter.locals'

local M = {}

function M.available_parsers()
  return vim.tbl_keys(configs.repositories)
end

-- This function sets up everythin needed for a given language
-- this is the main interface through the plugin
function M.setup(lang)
  if parsers.has_parser(lang) then
  end
end

-- This function initialize the plugin
-- it is run at startup
M._root = {}
function M._root.setup()
  install.setup()
end

return M
