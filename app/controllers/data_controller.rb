class DataController < ApplicationController
  before_filter :oauth_required
 
  def index
    @data = { data: "json_data" }
 
    respond_to do |format|
      format.json { render :json => @data }
    end
 
  end
end