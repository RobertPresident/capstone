class CrsController < ApplicationController

  def index
    @category = Category.find_by(name: 'Case Management, Referrals, and Supportive Services')
    @services = @category.services
  end
end
