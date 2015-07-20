class WitnessController < ApplicationController
    def index
      @witnesses = Witness.all
    end
    def new
      @witness = Witness.new
    end
    def create
      @witness = Witness.new(witness_params)
      @witness.save

      redirect_to :action => :index

    end
    def update
      @witness = Witness.find(params[:id])
      @witness.update(witness_params)

      redirect_to :action => :show, :id => @witness
    end
    def show
      @witness = Witness.find(params[:id])
    end
    def edit
      @witness = Witness.find(params[:id])
    end
    def destroy
      @witness = Witness.find(params[:id])
      @witness.update(is_active: false)
      redirect_to :action => :index
    end
    private

    def witness_params
      params.require(:witness).permit(:title, :content,:photo)
    end
end
