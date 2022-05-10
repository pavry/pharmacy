class ShowController < ApplicationController

  def index
    @medicines = Medicine.all
  end
end
