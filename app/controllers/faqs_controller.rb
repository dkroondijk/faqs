class FaqsController < ApplicationController

  def index
    @faqs = Faq.order('position')
  end

  # To Mitch:
  # Repo this up and send it to those folks.

  # /faqs/sort
  def sort
    params[:faq].each_with_index do |id, index|
      Faq.find(id).update!(position: index + 1)
    end

    render nothing: true
  end

end