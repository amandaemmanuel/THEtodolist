class ItemsController < ApplicationController
    #create a new item
    def create
        # action to create a new item -- when creating the todo item, pass the list ID as a reference (without a lookup)
        @item = Item.create(item_params)
        # redirect_to list show page
        redirect_to "/lists/#{params[:list_id]}"
    end

    private

    def item_params
        # making the 'items hash' take in the user form info
        item = params[:item].permit(:description, :status)
        listID = params[:list_id] #variable to store the listid
        list_id_hash = { list_id: listID } #making a new hash with the list id
        item.merge(list_id_hash) # merge the 2 hashes together, so all item info is in 1 hash
    end 
end
