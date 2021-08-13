Types::ExamblogType = GraphQL::ObjectType.define do
  name "Examblog"
  field :id, !types.ID
  field :title, !types.String
  field :content, !types.String
end
