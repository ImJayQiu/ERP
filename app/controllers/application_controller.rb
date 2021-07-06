class ApplicationController < ActionController::Base

  before_action :authenticate_user!

  before_action :set_variables

  def set_variables

    @countryinfo = Countryinfo.all 

    if @countryinfo.size > 0

      @country_name = @countryinfo.first.name

      @c_domain = "#{@countryinfo.first.lon}, #{@countryinfo.first.lat}"

      @zoom = @countryinfo.first.zoom

      @map_h = @countryinfo.first.remark


    else

      @country_name = "the World"  

      @c_domain = "18, 103.5"

      @zoom = "1"

      @map_h = "450"

    end

  end

  def after_sign_in_path_for(resource)

    welcome_summary_path

  end

end


