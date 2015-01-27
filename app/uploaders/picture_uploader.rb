class PictureUploader < CarrierWave::Uploader::Base
    include CarrierWave::MiniMagick
    process resize_to_fit: [800, 800]

    version :thumb do
    	process resize_to_fit: [200, 200]
    end

    storage :file

    def store_dir
        "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end

    def extension_white_list
        %w(jpg jpeg gif png)
    end

end
