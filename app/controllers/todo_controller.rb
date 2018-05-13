class TodoController < ApplicationController
 def index
 end
 def show
    todo_id=params[:id]
    @todo=Todo.find_by_id(params[:id])
    if todo_id == '1'
      @todo_description=@todo.description 
      @todo_pomodoro_estimate=@todo.pomodoro_estimate
      @todo_1 = "Change my bed sheets"
      @todo_2 = "Sweep and mop floor"
      @todo_3 = "Fix my closet"
      @color="#8FBC8F"
      @img="https://i.ytimg.com/vi/1SvrIyi3Xms/maxresdefault.jpg"
      @title="How to clean my room"
    elsif todo_id == '2'
      @todo_description=@todo.description
      @todo_pomodoro_estimate=@todo.pomodoro_estimate
      @todo_1 = "Walk to nearest train station"
      @todo_2 = "Take the E train"
      @todo_3 = "Get out of train station"
      @color="#FFE4E1"
      @img="http://www.backgroundsy.com/file/large/home-icon.jpg"
      @title="How To get home"
    else
      @todo_description=@todo.description 
      @todo_pomodoro_estimate=@todo.pomodoro_estimate 
      @todo_1 = "Get materials together"
      @todo_2 = "Look up homework"
      @todo_3 = "Check all homework was completed"
      @color="#E6E6FA"
      @img="https://www.sj-school.org/media/1/2/books.png"
      @title="How to complete my homework"
    end
 end
 
 def new
 end

 def create 
   t = Todo.new
   t.description = params['description']
   t.pomodoro_estimate = params['pomodoro_estimate']
   t.save
  redirect_to "/todo/show/#{ t.id }"
 end
 
end
