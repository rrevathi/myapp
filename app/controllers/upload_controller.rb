class UploadController < ApplicationController
def index
     render :file => 'app/views/upload/uploadFile.html.erb'
  end
  def uploadFile
    post = DateFile.save(params[:upload])
    #render :text => "File has been uploaded successfully"
	redirect_to(sites_url,:notice => "file uploaded successfully" )
 #link_to 'Site Index', { :action => 'index', :controller => 'sites'}
  end
end
