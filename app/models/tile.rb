class Tile < ActiveRecord::Base
  attr_accessible :content, :grid_id, :content_type, :description
  belongs_to :grid
  acts_as_list scope: :grid

  scope :for_grid, ->(grid_id) { where(grid_id: grid_id) }
end
