class DinosaursController < ApplicationController
  def new
    @park = Park.find(params[:park_id])
    @dinosaur = Dinosaur.new
  end

  def create
    @park = Park.find(params[:park_id])
    @dinosaur = Dinosaur.new(dinosaur_params)
    @dinosaur.park = @park
    if @dinosaur.save
      redirect_to park_path(@park)
    else
      render :new
    end
  end

  def destroy
    @dinosaur = Dinosaur.find(params[:id])
    @dinosaur.destroy
    redirect_to park_path(@dinosaur.park)
  end

  private

  def dinosaur_params
    params.require(:dinosaur).permit(:name, :image_url, :photo)
  end
end
