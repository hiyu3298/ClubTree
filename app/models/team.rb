class Team < ApplicationRecord
  attachment :image
  belongs_to :genre
end
