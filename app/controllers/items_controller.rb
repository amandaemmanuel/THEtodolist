class ItemsController < ApplicationController
    #create method
    def create
        # action to create a new item
        # when creating an item, need to understand what list ID it's being associated to
        @list = List.find_by(id: params[:list_id])
        @item = @list.items.create(item_params)
        redirect_to @list
    end

    private

    def set_list
        @list = List.find(params[:list_id])
    end

    def item_params
        params[:item].permit(:description)
    end 
end
