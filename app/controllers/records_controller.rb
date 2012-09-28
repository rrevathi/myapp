class RecordsController < ApplicationController
  def index
    @records = Record.all
  end

  def new
    @record = Record.new
  end
  def show
	@record = Record.find(params[:id])
end

  def create
    @record = Record.new(params[:record])
    if @record.save
      redirect_to records_url, :notice => "Successfully created record."
    else
      render :action => 'new'
    end
  end
  def add_friend
  
  end
  def remove_friend
	  
  end
  
end
