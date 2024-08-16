class SavedPool < ApplicationRecord
  belongs_to :user
  belongs_to :pool
  validates :user_id, uniqueness: { scope: :pool_id, message: "has already saved this pool" }
end
