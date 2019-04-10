class CarsController < ApplicationController
  def index
    @cars = Cars.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
    @model = Model.find(params[:model_id])
  end

  def create
    @car = Car.new(car_params)
    if car.save
      redirect_to car_path(@car), notice: "Car has been made"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(car_params)
      redirect_to car_path(@car), notice: "Car was updated"
    else
      render :new
    end
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

  private

  def car_params
    params.require(:car).permit(:name, :model_id, :make_id, :year, :mileage)
  end
end
