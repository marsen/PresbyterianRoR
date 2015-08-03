class UploaderController < ApplicationController
  def image
    save_photo
  end

  def save_photo
    photoname = params['photo'].original_filename
    photodir = "#{photoname}"
    File.open("public/images/witness/#{photodir}", "wb") do |f|
      f.write(params['photo'].read)
    end
    #flash[:notice] = "done"
    return "/images/witness/#{photoname}"
  end
end
