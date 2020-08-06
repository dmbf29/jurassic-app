class PocketsController < ApplicationController
  def new
    # form
    @dinosaur = Dinosaur.find(params[:dinosaur_id])
    @pocket = Pocket.new
    @weapons = Weapon.order(:name).where.not(id: @dinosaur.weapons)
  end

  def create
    @dinosaur = Dinosaur.find(params[:dinosaur_id])
    @weapons = Weapon.where(id: pocket_params[:weapon_id])
    @weapons.each do |weapon|
      @pocket = Pocket.new(weapon: weapon, dinosaur: @dinosaur)
      @pocket.save
    end
    redirect_to park_path(@dinosaur.park)
    # else
    #   @weapons = Weapon.order(:name).where.not(id: @dinosaur.weapons)
    #   render :new
    # end



  end

  private

  def pocket_params
    params.require(:pocket).permit(weapon_id: [])
  end
end
