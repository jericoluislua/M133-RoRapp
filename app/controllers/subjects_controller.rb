class SubjectsController < ApplicationController
  def show
    @subject = Subject.find(params[:id])
    @books = Book.all
  end

=begin

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to action: "index"
    else
      render action: "new"
    end
  end

  def subject_params
    params.require(:subject).permit(:title)
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update_attributes(subject_params)
      redirect_to action: "index"
    else
      render action: "edit"
    end
  end

  def destroy
    Subject.find(params[:id]).destroy
    redirect_to action: "index"
  end
=end

end
