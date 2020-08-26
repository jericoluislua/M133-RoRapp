class HelloworldController < ApplicationController
  def index

    @p1_num1 = params[:num1]
    @p1_num2 = params[:num2]


=begin
    if @p1_num2.to_i > @p1_num1.to_i
      @output1 = puts "cont" + @p1_num2.to_s + " " + @p1_num1.to_s
    else
      @output1 = puts "cont" + @p1_num1.to_s + " " + @p1_num2.to_s
    end
=end



    i3 = 1
    @output3 = ""
=begin
    while i3 < 100 do
      @output3 += i3.to_s + "<br>"
      i3 += 1
    end
=end
    @output3 += "Im coming..."
    @output3 = @p1_num1
  end


end
