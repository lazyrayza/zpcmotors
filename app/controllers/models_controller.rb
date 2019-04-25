class ModelsController < ApplicationController
  def index
    @model = Model.all
  end

  def show
    @model = Model.find(params[:id])
    # @cars = @models.cars.where(model_id: @model)

  end

  def new
    @model = Model.new
    @make = Make.find(params[:make_id])
  end

  def create
    @model = Model.new(model_params)
    if @model.save!
      redirect_to model_path(@model), notice: "Model has been made"
    else
      render :new
    end
  end

  def destroy
    @model.destroy
  end

  private
  def model_params
    params.require(:model).permit(:name)
  end
end
