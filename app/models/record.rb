class Record < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :result
  belongs_to :position
  belongs_to :user

  with_options presence: true do
    validates :date, :position_id, :result_id
  end
end
