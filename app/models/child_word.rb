class ChildWord < ActiveRecord::Base
  belongs_to :child
  belongs_to :word
end
