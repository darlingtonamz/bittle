class User < ActiveRecord::Base
  has_many :payments
  has_many :invoices
  has_many :businesses
end
