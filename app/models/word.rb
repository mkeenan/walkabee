class Word < ActiveRecord::Base

# has_many :children set up for future functionality
belongs_to :category
has_many :children

end
