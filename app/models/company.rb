class Company < ActiveRecord::Base
  has_many :jobs, dependent: :destroy

  validates :name, presence: true
  validates :location, presence: true
end
