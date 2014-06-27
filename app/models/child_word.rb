class ChildWord < ActiveRecord::Base

 # set up for future functionality
  belongs_to :child
  belongs_to :word
end
