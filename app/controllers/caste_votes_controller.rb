class CasteVotesController < ApplicationController
  before_action :set_caste_vote, only: %i[ show edit update destroy ]

  # GET /caste_votes or /caste_votes.json
  def index
    @caste_votes = CasteVote.all
  end

  # GET /caste_votes/1 or /caste_votes/1.json
  def show
  end

  # GET /caste_votes/new
  def new

    @caste_vote = CasteVote.new
  end

  # GET /caste_votes/1/edit
  def edit
  end

  # POST /caste_votes or /caste_votes.json
  def create
    @caste_vote = CasteVote.new(caste_vote_params)

    respond_to do |format|
      if @caste_vote.save
        format.html { redirect_to @caste_vote, notice: "Caste vote was successfully created." }
        format.json { render :show, status: :created, location: @caste_vote }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @caste_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caste_votes/1 or /caste_votes/1.json
  def update
    respond_to do |format|
      if @caste_vote.update(caste_vote_params)
        format.html { redirect_to @caste_vote, notice: "Caste vote was successfully updated." }
        format.json { render :show, status: :ok, location: @caste_vote }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @caste_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caste_votes/1 or /caste_votes/1.json
  def destroy
    @caste_vote.destroy
    respond_to do |format|
      format.html { redirect_to caste_votes_url, notice: "Caste vote was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caste_vote
      @caste_vote = CasteVote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def caste_vote_params
      params.require(:caste_vote).permit(:polling_id, :candidate_id, :voter_id)
    end
end



 params[:selected]="none"
 params[:request][:some_column] = request.some_column