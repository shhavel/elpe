# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class Category
  include Rhom::PropertyBag

  # Uncomment the following line to enable sync with Category.
  # enable :sync

  #add model specific code here

  set :freezed, true

  property :sign, :integer
  property :name, :string

  def articles
    Article.find(:all, :conditions => {'category_sign' => self.sign})
  end
end
