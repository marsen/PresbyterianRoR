class UploaderController < ApplicationController
  def image
    photopath = save_photo
    render :text =>  "<script> parent.$('#preview').attr('src','" + photopath + "').show(); parent.$('#witness_photo').val('" + photopath + "');</script>"
  end

  def save_photo
    photoextname = File.extname(params['photo'].original_filename)
    photoname = Time.now.to_s(format = :number) + photoextname
    photodir = "#{photoname}"
    File.open("public/images/witness/#{photodir}", "wb") do |f|
      f.write(params['photo'].read)
    end
    return "/images/witness/#{photoname}"
  end
end
