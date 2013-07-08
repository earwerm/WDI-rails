class HomeController < ApplicationController
  def start
  end

  def a
  end

  def b
  end

  def one
    render '1'
  end

  def two
    redner '2'
  end

  def three
    render '3'
  end

  def door
    case params['option']
    when '1' then redirct_to '/1'
    when '2' then redirct_to '/2'
    when '3' then redirct_to '/3'
    when 'a' then redirct_to '/a'
    when 'b' then redirct_to '/b'
    end
  end
end
