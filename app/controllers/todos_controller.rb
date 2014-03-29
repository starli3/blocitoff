class TodosController < ApplicationController
  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(params[:todo])
    if @todo.save
    redirect_to @todo, notice: 'Your new TODO was saved'
  end
  end

  def show
    @todo = Todo.find params[:id]
  end

  def index
    @todos = current_user.todos
  end

end