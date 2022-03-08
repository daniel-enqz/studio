class StudiosController < ApplicationController

  def index
    @studios = Studio.all
  end
end
