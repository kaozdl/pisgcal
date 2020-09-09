class OneOnOnesController < ApplicationController
  before_action :set_associations, only: [:create]
  
  def new
    @one_on_one = OneOnOne.new
  end

  def create
    @one_on_one = OneOnOne.new(
      employee: @employee,
      manager: @manager,
    )

    if @one_on_one.save
      redirect_to  one_on_ones_index_path
    else
      render :new
    end
  end

  def index
    @one_on_ones = OneOnOne.all
  end

  private

  def set_associations
    puts params[:one_on_one]
    @employee = User.find(params[:one_on_one][:employee])
    @manager = User.find(params[:one_on_one][:manager])
  end
end
