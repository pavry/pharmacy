class MedicinesController < ApplicationController

  def index
    @medicines = Medicine.all
  end

  def show 
  	@medicine = Medicine.find(params[:id])
  end


end
