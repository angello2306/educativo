#Generate by Carlos Montalvo
class User < ActiveRecord::Base

attr_accessible :username, :password, :type_user

  # Use for function search
  def self.search(search, per_page, page)
  if search
    paginate :per_page => per_page, :page => page,
             :conditions => [ 'username like ?', "%#{search[:q]}%"], :order => 'id DESC'
  else
    paginate :per_page => per_page, :page => page, :order => 'id DESC'
  end
 end

end
