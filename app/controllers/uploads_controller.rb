class UploadsController < ApplicationController
  before_action :set_upload, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]

  def new
  end

  def create
    # Make an object in your bucket for your upload
    if params[:file].respond_to? :original_filename
    obj = S3_BUCKET.objects[params[:file].original_filename]

    # Upload the file
    obj.write(
      file: params[:file],
      acl: :public_read
    )

    # Create an object for the upload
    @upload = Upload.new(
            url: obj.public_url,
        name: current_user.id
        )

    # Save the upload
    if @upload.save
      redirect_to edit_profile_path(Profile.where(user_id: current_user.id).first.id), success: 'File successfully uploaded', notice: 'File successfully uploaded'
    else
      flash.now[:notice] = 'There was an error'
      render :new
    end
  else
    if @upload.respond_to? :save

    else
      redirect_to new_upload_path, notice: 'You must add a file to upload'
      # flash.now[:notice] = 'There was an error'
    end
  end
  end

  def index
    @uploads = Upload.all
  end
end
