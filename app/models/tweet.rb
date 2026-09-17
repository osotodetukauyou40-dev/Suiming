class Tweet < ApplicationRecord
  has_many :bookmarks , dependent: :destroy
  has_many :reviews , dependent: :destroy
  has_many :stars , dependent: :destroy
  has_many :links , dependent: :destroy
end
