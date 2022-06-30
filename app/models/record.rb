class Record < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :result
  belongs_to :position
  belongs_to :user
end
