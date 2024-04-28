class SystemsController < ApplicationController
  before_action :set_system, only: [:show, :edit, :update, :destroy]

  def index
    @systems = System.all
  end

  def show
  end

  def new
    @system = System.new
  end

  def create
    @system = System.new(system_params)
    if @system.save
      redirect_to @system, notice: 'System was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @system.update(system_params)
      redirect_to @system, notice: 'System was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @system.destroy
    redirect_to systems_url, notice: 'System was successfully destroyed.'
  end

  private

  def set_system
    @system = System.find(params[:id])
  end

  def system_params
    params.require(:system).permit(:name, :release_date, :cost, :condition)
  end
end
