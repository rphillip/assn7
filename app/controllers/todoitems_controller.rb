class TodoitemsController < ApplicationController
 before_action :set_todolist
  
  def index
    @todoitems = @todolist.todoitems.paginate(page: params[:page], per_page: 5)
  end
  
  def new
	  @todoitem = @todolist.todoitems.new
  end
  
  def show
	@todoitem = @todolist.todoitems.find(params[:id])
  end
  
  def edit
	  @todoitem = @todolist.todoitems.find(params[:id])
  end

  def create
    @todoitem = @todolist.todoitems.new(todoitem_params)
    @todoitem.done = false
    if @todoitem.save
      redirect_to @todolist, notice: "Item successfully added!"
    else
      redirect_to @todolist, alert: "Unable to add item!"    
    end
  end
  
  def update
    @todoitem = @todolist.todoitems.find(params[:id])
    respond_to do |format|
      if @todoitem.update(todoitem_done_params)
        format.html { redirect_to @todolist, notice: 'Todo item was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @todoitem = @todolist.todoitems.find(params[:id])
    @todoitem.destroy
    redirect_to @todolist, notice: "Item deleted!"
  end

  private
    def set_todolist
      @todolist = Todolist.find(params[:todolist_id])
    end
    
     def todoitem_done_params
      params.require(:todoitem).permit(:task_title, :due_date, :description, :done)
    end

    def todoitem_params
      params.require(:todoitem).permit(:task_title, :due_date, :description)
    end
end
