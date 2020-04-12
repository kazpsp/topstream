class My::EventsController < My::MyController

  before_action :set_event, only: [:show, :update, :destroy]

  # GET /events
  def index
    @events = current_user.events.all

    render json: @events.to_json(:include => [:category])
  end

  # GET /events/1
  def show
    render json: @event.to_json(:include => [:category])
  end

  # POST /events
  def create
    @event = current_user.events.new(event_params)

    if @event.save
      render json: @event, status: :created, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = current_user.events.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def event_params
    params.require(:event).permit(
        :name,
        :description,
        :image,
        :price,
        :title,
        :event_date,
        :event_start_time,
        :event_end_time,
        :category_id
    )
  end
end
