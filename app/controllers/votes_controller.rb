class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :edit, :update, :destroy]
  before_action :require_user
  
  # GET /votes
  # GET /votes.json
  def index
    @votes = Vote.all
  end

  # GET /votes/1
  # GET /votes/1.json
  def show
  end

  # GET /votes/new
  def new
    @vote = Vote.new
  end

  # GET /votes/1/edit
  def edit
  end

  # POST /votes
  # POST /votes.json
  def create
      if current_user
      user_votes = Vote.where(user_id: current_user, video_id: params[:id])
      @vote = Vote.new(vote_params)
        
        @vote.value = params['value']
        @vote.curriculum_id = params["curriculum_id"]
        @vote.user_id = params["user_id"]
        @vote.video_id = params["video_id"]
        @vote.save

      respond_to do |format|
        if @vote.save
          format.html { redirect_to @vote, notice: 'Vote was successfully created.' }
          format.json { render :show, status: :created, location: @vote }
          Vote.all.each do |vote|
            if vote == Vote.all.last
              #do nothing
            elsif vote != Vote.all.last
              vote.destroy
            end
          end
          @vote_render = "votes go here!"
        else
          format.html { render :new }
          format.json { render json: @vote.errors, status: :unprocessable_entity }
        end
      end
    else
      #cant create shit
    end
  end

  # PATCH/PUT /votes/1
  # PATCH/PUT /votes/1.json
  def update
    respond_to do |format|
      if @vote.update(vote_params)
        format.html { redirect_to @vote, notice: 'Vote was successfully updated.' }
        format.json { render :show, status: :ok, location: @vote }
      else
        format.html { render :edit }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /votes/1
  # DELETE /votes/1.json
  def destroy
    @vote.destroy
    respond_to do |format|
      format.html { redirect_to votes_url, notice: 'Vote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote
      @vote = Vote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vote_params
       #params.require(:vote).permit(:value, :user_id, :video_id, :curriculum_id)
    end
end
