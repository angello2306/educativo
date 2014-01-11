#Generate by Carlos Montalvo
class Recordcard < ActiveRecord::Base

belongs_to :level
belongs_to :grade
belongs_to :section
belongs_to :course
belongs_to :student

attr_accessible :level_id, :grade_id, :section_id, :course_id, :student_id, :p1, :p2, :p3, :p4, :em, :eb

  # Use for function search
  def self.search(search, per_page, page)
  if search
    paginate :per_page => per_page, :page => page,
             :conditions => [ 'level_id like ?', "%#{search[:q]}%"], :order => 'id DESC'
  else
    paginate :per_page => per_page, :page => page, :order => 'id DESC'
  end
 end

end
