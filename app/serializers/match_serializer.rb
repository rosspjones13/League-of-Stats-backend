class MatchSerializer < ActiveModel::Serializer
  attributes :id, :user, :champion, :kills, :deaths, :assists, :result, :created_at
end
