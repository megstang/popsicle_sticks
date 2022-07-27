class ModsController < ApplicationController
  def index
    @mods = Mod.all
  end

  def show
    @mod = Mod.find(params[:id])
  end

  def lucky
    mod = Mod.find(params[:id])
    @student = mod.students.order(Arel.sql('RANDOM()')).first
    @student.increment!(:called_on_count)
  end
end