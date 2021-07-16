class DogsController < ApplicationController
    def index 

    end

    def show 
        @dog = Dog.find_by_id(params[:id])
    end

    def new 
        @dog = Dog.new
        @dog.build_owner
    end

    def create 
       @dog = Dog.new(dog_params)
       if @dog.save 
        redirect_to dog_path(@dog)
       else
        render :new
       end

    end

    def edit 

    end

    def update

    end

    private 
    def dog_params 
        params.require(:dog).permit(:name, :owner_id, owner_attributes: [:name])
    end
end
