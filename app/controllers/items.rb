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
