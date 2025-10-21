class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
  def self.ransackable_attributes(auth_object = nil)
    # Explicitly allowlist attributes you want to be searchable
    [
      "id",
      "email",
      "first_name",
      "last_name",
      "created_at",
      "updated_at"
      # Add any other non-sensitive attributes here
    ]
  end
end
