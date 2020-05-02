class MilestoneSerializer < ActiveModel::Serializer
  attributes :id, :name, :complete,:goal_id
end
