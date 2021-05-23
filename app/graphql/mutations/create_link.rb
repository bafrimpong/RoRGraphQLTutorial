module Mutations
    class CreateLink < BaseMutation
        # arguments passed to the `resolve` method
        argument :url, String, required: true
        argument :description, String, required: true

        # return type from the mutation
        # type Types::LinkType # for base_mutation without inheriting the RelayClassicMutation class
        field :link, Types::LinkType, null: false

        def resolve url: nil, description: nill
            link = Link.create!( url: url, description: description )
            {link: link}
        end
        # def resolve(url: nil, description: nil )
        #     Link.create!(
        #         url: url,
        #         description: description,
        #     )
        # end
    end
end