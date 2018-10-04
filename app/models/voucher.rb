class Voucher < ApplicationRecord
  belongs_to :user
  belongs_to :type
  belongs_to :center
end
