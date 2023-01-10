class ShiftsController < ApplicationController

  def index
  end

  def new
    @shift = Shift.new
  end

  def create
    @form = Shift.new(shift_params)
    if @shift.save
      redirect_to root_path
    else
      render :new
    end
  end
end