class ProjectTrackersController < ApplicationController
  unloadable

  def index
    @projects = Project.all
  end
end
