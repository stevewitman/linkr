class LinksController < ApplicationController
  before_filter :authorize

  def index
    @links = Link.all
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to links_path, notice: 'Link was added'
    else
      render :new
    end
  end

private

  def link_params
    params.require(:link).permit(:title, :url, :linkr_url, :notes, :status, :rating, :labels)
  end

end
