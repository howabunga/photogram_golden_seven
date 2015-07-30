class PhotosController < ApplicationController

  def index
    @list_of_photos = Photo.all
  end

  def show
   @photo = Photo.find(params["id"])
   render("show.html.erb")
 end

 def destroy

  @photo = Photo.find(params["id"])
  @photo.destroy

  redirect_to("/photos")
end

def new
  render("new.html.erb")
end

def create

  p = Photo.new
  p.caption = params["caption"]
  p.source = params["source"]
  p.save

  redirect_to("/photos")
end

def edit
  @photo = Photo.find(params["id"])
  render("edit.html.erb")
end

def update
  p = Photo.find(params["id"])
  p.caption = params["caption"]
  p.source = params["source"]
  p.save

  redirect_to("/photos")
end

end
