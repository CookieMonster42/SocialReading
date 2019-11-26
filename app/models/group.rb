class Group < ApplicationRecord
  belongs_to :host, class_name: "User"
  belongs_to :language
  belongs_to :book
  has_many :memberships, dependent: :destroy
  has_many :comments, dependent: :destroy
end
