class PagesController < ApplicationController
  def welcome
    # @issues  = [ { title: "Ruby lovers", comments: "4" }, { title: "Rails and Laravel", comments: "5" } ]
    @issues = Issue.all.reverse
  end

  def about

  end
end