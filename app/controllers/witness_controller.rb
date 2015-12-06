class WitnessController < ApplicationController
    def index
      #
      @currentPage = 1
      @pageSize = 10
      if params[:p] != nil
        @currentPage = params[:p].to_i
      end
      @activeWitness = Witness.where(is_active: true)
      @witnesses = @activeWitness
        .order(:created_at)
        .reverse_order
        .drop(@pageSize*(@currentPage-1))
        .take(@pageSize)
      @total = @activeWitness.count()
      @totalPage = @total / @pageSize
      if @total / @pageSize !=0
        @totalPage = @totalPage + 1
      end
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
