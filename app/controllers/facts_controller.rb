class FactsController < ApplicationController
	def index
		@fact = Fact.order("RANDOM()").first
	end

	def new
		@fact = Fact.new
	end

	def show
		@fact = Fact.find(params[:id])
	end

	def create
		@fact = Fact.create(fact_params)
		redirect_to @fact
	end

	private

	def fact_params
		params.require(:fact).permit(:content)
	end
end
