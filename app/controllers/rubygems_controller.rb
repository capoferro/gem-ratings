class RubygemsController < ApplicationController
  def index
  end

  def show
    @gem = Rubygem.find_or_create_by_name(name: params[:id]) # if check
    # if gem exists via rubygems.org
  end

end
