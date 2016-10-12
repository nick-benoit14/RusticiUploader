require 'dotenv'
Dotenv.load
require 'scorm_cloud'
require 'byebug'

sc = ScormCloud::ScormCloud.new(ENV['APP_ID'], ENV['SECRET'])

courses = sc.course.get_course_list
courses.each { |c| puts "#{c.id} #{c.title}"}
