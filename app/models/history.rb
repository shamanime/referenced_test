# encoding: utf-8
class History
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  
  field :user, :type => String
  field :description, :type => String
  
  embedded_in :job
  
  default_scope desc(:created_at)
end