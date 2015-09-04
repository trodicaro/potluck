post "/events/:id/items" do
  @event = Event.find(params[:id])
  @invitation = @event.invitations.find_by(user_id: current_user.id)
  @item = Item.new(params[:item])
  if @item.save
    @invitation.items << @item
    redirect to("/events/#{@event.id}")
  else
    erb :"/events/show", locals: {item: @item}
  end
end

delete '/events/:event_id/items/:item_id' do
  Item.find(params[:item_id]).destroy
  redirect "/events/#{@event.id}"
end
