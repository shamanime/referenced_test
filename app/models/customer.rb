class Customer
  include Mongoid::Document
  field :name, :type => String
  field :email, :type => String
  
  has_many :jobs
end
