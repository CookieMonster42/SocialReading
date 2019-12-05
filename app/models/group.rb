class Group < ApplicationRecord
  include AlgoliaSearch

  belongs_to :user # , class_name: "User"

  belongs_to :language
  belongs_to :book
  has_many :memberships, dependent: :destroy
  has_many :comments, dependent: :destroy
  acts_as_taggable_on :tags
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :date, presence: true

  algoliasearch do
    attributes :location_name, :location
  end
end
