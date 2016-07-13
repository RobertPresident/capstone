class CmsController < ApplicationController

  def index
    @category = Category.find_by(name: 'Counseling, Mental Health Services, Support Groups')
    @services = @category.services
  end
end
