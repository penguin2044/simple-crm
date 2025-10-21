class Customer < ApplicationRecord
 has_one_attached :image

  validates :full_name, presence: true

  # Allow these attributes to be searched in ActiveAdmin
  def self.ransackable_attributes(auth_object = nil)
    [ "full_name", "phone_number", "email", "notes", "created_at", "updated_at", "id" ]
  end

  # Allow these associations to be searched
  def self.ransackable_associations(auth_object = nil)
    [ "image_attachment", "image_blob" ]
  end
end
