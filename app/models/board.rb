class Board < ActiveRecord::Base
  has_many :channels
  belongs_to :user
end
