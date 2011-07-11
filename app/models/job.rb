class Job
  include Mongoid::Document
  field :titulo, :type => String
  
  belongs_to :customer
  embeds_many :historys
end
