class PupsController < ApplicationController
	def index
		@fact = Fact.first
	end
end
