class DevelopersController < ApplicationController
  def index
    @developers = Developer.all
    #@developers = @auth.developers
    #uncomment when you want to set up the login functions
  end

  def show
    @developer = Developer.find(params[:id])
  end

  def create
    id = params[:id]
    name = params[:dev_namekey]
    chictype = params[:dev_chictypekey]
    language = params[:dev_languagekey]

      if id.present?
        developer = Developer.find(id)
        developer.name = name
        developer.chictype = chictype
        developer.language = language
        developer.save
      else
        developer = Developer.create(:name => name, :chictype => chictype, :language => language)
        #@auth.developers << developer
      end
      render :json => developer
  end
end