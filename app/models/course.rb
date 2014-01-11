#Generate by Carlos Montalvo
class Course < ActiveRecord::Base

belongs_to :level
belongs_to :grade
has_many :recordcards

attr_accessible :name, :level_id, :grade_id

  # Use for function search
  def self.search(search, per_page, page)
  if search
    paginate :per_page => per_page, :page => page,
             :conditions => [ 'name like ?', "%#{search[:q]}%"], :order => 'id DESC'
  else
    paginate :per_page => per_page, :page => page, :order => 'id DESC'
  end
 end

end
