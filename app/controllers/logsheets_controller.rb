class LogsheetsController < ApplicationController
  before_action :set_logsheet, only: [:show, :edit, :update, :destroy]

  def index
    @logsheets = current_user.logsheets
  end

  def show
  end

  def new
    @logsheet = Logsheet.new
    @charclass = Charclass.new
  end

  def create
    @logsheet = current_user.logsheets.new(logsheet_params)
    @charclass = @logsheet.charclasses.new(charclass_params)
    if @charclass.save
      flash[:success] = "Class Added"
    end

    if @logsheet.save
      flash[:success] = "Logsheet Created"
      redirect_to logsheets_path
    else
      flash[:error] = "Error #{@logsheet.errors.full_messages.join("\n")}"
      render :new
    end
  end

  def edit
  end

  def update
    if @logsheet.update(logsheet_params)
      redirect_to logsheets_path
    else
      render :edit
    end
  end

  def destroy
    @logsheet.destroy
    redirect_to logsheets_path
  end

  private
    def logsheet_params
      params.require(:logsheet).permit(:char, :gold, :downtime, :renown, :race, :dci, :exp)
    end

    def charclass_params
      params.require(:logsheet).permit(:name, :lvls)
    end

    # don't just find by the logsheet model or you may potentially be able to view other users logsheets
    def set_logsheet
      @logsheet = current_user.logsheets.find(params[:id])
    end

end