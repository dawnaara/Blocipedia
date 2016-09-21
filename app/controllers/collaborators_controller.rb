class CollaboratorsController < ApplicationController
	before_action :set_wiki

  def index
  	@users = User.all
  end

  def create
  	@collaborator = Collaborator.new(wiki_id: @wiki.id, user_id: params[:user_id])
  	if @collaborator.save
  		# flash good
  	else
  		#flash bad
  	end
  	redirect_to wiki_collaborators_path(@wiki)
  end

  def destroy
  	@collaborator = Collaborator.find(params[:id])
  	if @collaborator.destroy
  		# flash good
  	else
  		# flash bad
  	end
    redirect_to wiki_collaborators_path(@wiki)
  end

  private

  def set_wiki
  	@wiki = Wiki.find(params[:wiki_id])
  end
end
