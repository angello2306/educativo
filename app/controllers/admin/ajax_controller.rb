class Admin::AjaxController < Admin::BackendController
  def get_grades

    grade = Grade.where level_id: params[:level_id]

    respond_to do |format|
      format.json { render  json: grade }
    end

  end

  def get_sections
    section = Section.where grade_id: params[:grade_id]

    respond_to do |format|
      format.json { render  json: section }
    end
  end

  def get_courses
    course = Course.where grade_id: params[:grade_id]

    respond_to do |format|
      format.json { render  json: course }
    end
  end

  def get_students

  end



end