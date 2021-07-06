class WelcomeController < ApplicationController

    skip_before_action :authenticate_user!, only: [:index]

    layout :resolve_layout


    def index
    end

    def summary 
	@provinces = Province.all
    end

    def medical_capacity_summary 
	@provinces = Province.all
    end

    def living_supply_summary 
	@provinces = Province.all
    end

    def vaccine_register_summary 
	@provinces = Province.all
    end

    def details 
	@province = params[:province]
	@supply_type = params[:supply_type]

	if @supply_type == "Medical"
	    @details_data =  Medicalsupply.where(province: @province)
	elsif @supply_type == "Living"
	    @details_data =  Livingsupply.where(province: @province)
	end

	if @supply_type == "Medical"
	    @title =   "Details of medical Capacity of #{@province}"
	elsif @supply_type == "Living"
	    @title = "Details of living supply of #{@province}"
	end

    end





    private

    def resolve_layout

	case action_name

	when "index"
	    "index"
	when "summary"
	    "summary"
	when "medical_capacity_summary" 
	    "summary"
	when "living_supply_summary" 
	    "summary"
	when "vaccine_register_summary" 
	    "summary"
	else
	    "application"
	end

    end

end
