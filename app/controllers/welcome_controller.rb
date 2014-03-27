class WelcomeController < ApplicationController
  def index
    @todo_count = Todo.count
  end
end
