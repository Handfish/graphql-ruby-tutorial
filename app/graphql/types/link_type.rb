# defines a new GraphQL type
Types::LinkType = GraphQL::ObjectType.define do
  name 'Link'

  field :id, !types.ID
  field :url, !types.String
  field :description, !types.String


  # add postedBy field to Link type
  
  field :postedBy, -> { Types::UserType }, property: :user
end
