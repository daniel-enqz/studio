class DashboardsController < ApplicationController
  def show
    @dashboard = current_user.dashboard
    authorize @dashboard
  end
end
