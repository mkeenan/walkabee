class Child < ActiveRecord::Base

# set up for future functionality
belongs_to :user
has_many :words

end
