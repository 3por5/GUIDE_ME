class ProgramsController < ApplicationController
  def index
    @programs = Program.all
  end

  def show
    @program = Program.find(params[:id])
  end

  def new
    @program = Program.new
  end

  def create
    @program = Program.new(program_params)
    @program.user = current_user

    if @program.save
      redirect_to @program, notice: "Programa criado com sucesso"
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

private

def program_params
  params.require(:program).permit(:name, :description, :category)
end
