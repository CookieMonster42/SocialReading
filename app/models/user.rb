class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :memberships, dependent: :destroy
  has_many :groups, through: :memberships
  has_many :hosted_groups, class_name: "Group", foreign_key: :user_id

  # def participating_groups
  #   self.hosted_groups + self.groups # array

  #    # @past_groups = user.participating_groups.select { |group| group.date < Date.today }
  # end
end


#blobb
