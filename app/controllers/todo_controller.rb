class TodoController < ApplicationController
 def index
 end
 def show
    todo_id=params[:id]
    if todo_id == '1'
      @todo_1 = "Change my bed sheets"
      @todo_2 = "Sweep and mop floor"
      @todo_3 = "Fix my closet"
      @color="#8FBC8F"
    elsif todo_id == '2'
      @todo_1 = "Walk to nearest train station"
      @todo_2 = "Take the E train"
      @todo_3 = "Get out of train station"
      @color="#FFE4E1"
    else
      @todo_1 = "Get materials together"
      @todo_2 = "Look up homework"
      @todo_3 = "Check all homework was completed"
      @color="#E6E6FA"
    end
 end
end
