class DevelopersController < ApplicationController
  def index
    @developers = @auth.developers
  end

  def create
  id = params[:id]
  name = params[:name]
  chictype = params[:chictype]
  language = params[:language]

      if id.present?
        developer = Developer.find(id)
        developer.name = name
        developer.chictype = chictype
        developer.language = language
        developer.save
      else
        developer = Developer.create(:name => name, :chictype => chictype, :language => language)
        @auth.developers << developer
      end
      render :json => developer
  end
end