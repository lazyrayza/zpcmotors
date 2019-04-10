class MakesController < ApplicationController
  def index
    @makes = Make.all
  end

  def show
    @make = Make.find(params[:id])
    @models = @make.models.where(make_id: @make)
  end

  def new
    @make = Make.new
  end

  def create
    @make = Make.new(make_params)
    if @make.save!
      redirect_to make_path(@make), notice: "Make has been made"
    else
      render :new
    end
  end

  def destroy
    @make.destroy
  end

  private

  def make_params
    params.require(:make).permit(:name)
  end
end
