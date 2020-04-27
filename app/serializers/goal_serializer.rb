class GoalSerializer < ActiveModel::Serializer
  attributes :id, :name, :complete, :user_id, :milestones
  # has_many :milestones
  
  def milestones
    object.milestones.map do |milestone|
      {id:milestone.id,name:milestone.name,complete:milestone.complete}
    end 
  end 
  
end
