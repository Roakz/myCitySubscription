class WelcomeController < ApplicationController

  def home
  end

  def index
    @cards = [
    {title: "Digital subscription donation", description: "Keep up with the times and increase your potential donation stream by going digital."},
    {title: "Digital asset management", description: "Manage your digital asset/product from an easy to use online platform."},
    {title: "Volunteer & helper managment", description: "Manage your volunteers, Helpers and other concerned parties from the administrative dashboard."},
    {title: "Financial stream management and visualization of data", description: "Keep track of your financial streams in real time and view visual statistics of your data."}  
  ]
  end
end
