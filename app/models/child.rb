class Child < ActiveRecord::Base

belongs_to :users
has_many :words

end
