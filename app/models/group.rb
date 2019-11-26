class Group < ApplicationRecord
  belongs_to :user #, class_name: "User"
  belongs_to :language
  belongs_to :book
  has_many :memberships, dependent: :destroy
  has_many :comments, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
