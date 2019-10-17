require 'bundler'
require 'pry'
require 'colorize'
Bundler.require

require_relative './lib/app/player'
require_relative './lib/app/board_cell'
require_relative './lib/app/board'
require_relative './lib/app/game'
require_relative './lib/views/display'

Game.new.game_launch
