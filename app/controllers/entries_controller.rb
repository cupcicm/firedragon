class EntriesController < ApplicationController

  def index
    @entry = Entry.new
  end

  def show
    @entry = Entry.find_by_hash_id(params[:id])
  end

  def resolve
    @entry = Entry.find_by_hash_id(params[:path])

    case @entry.data_type
    when "url"
      redirect_to @entry.data, status: 301
    else
      render text: "You can't do that"
    end
  end

  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      flash[:notice] = "Your entry was stored successfully"
      redirect_to entry_path(@entry)
    else
      render :index
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:data)
  end

end
