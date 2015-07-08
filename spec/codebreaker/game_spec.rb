#---
# Excerpted from "The RSpec Book",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/achbd for more book information.
#---
require 'spec_helper'

module Codebreaker
   describe Game do 
      describe "#start" do 
      	  before(:each) do 
			@output = double('output').as_null_object #this is like STDOUT
			@game = Game.new(@output) #We start the game
		  end

		  it "sends a welcome message" do	
			#STDOUT should receive "Welcome to Codebreaker!"
			@output.should_receive(:puts).with('Welcome to Codebreaker!')
			#The game should now start!
			@game.start
		  end

		  it "prompts for the first guess" do
			#STDOUT should receive the text "Enter guess:"
			@output.should_receive(:puts).with('Enter guess: ')
			#not clear why game needs to start again....
			@game.start
		  end
	  end
   end 
end