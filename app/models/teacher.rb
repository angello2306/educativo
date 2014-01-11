#Generate by Carlos Montalvo
class Teacher < ActiveRecord::Base

attr_accessible :lname, :fname, :dni, :birthday, :address, :phone

  # Use for function search
  def self.search(search, per_page, page)
  if search
    paginate :per_page => per_page, :page => page,
             :conditions => [ 'lname like ?', "%#{search[:q]}%"], :order => 'id DESC'
  else
    paginate :per_page => per_page, :page => page, :order => 'id DESC'
  end
 end

end
