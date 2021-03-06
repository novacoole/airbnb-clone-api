class Listing < ApplicationRecord
    has_one_attached :photo

    def photo_url
        if self.photo.attached?
          Rails.application.routes.url_helpers.rails_blob_url(self.photo, only_path: false)
        else
          nil
        end
      end
end
