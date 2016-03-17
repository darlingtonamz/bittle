class Invoice < ActiveRecord::Base
  belongs_to :business
  belongs_to :user
end
