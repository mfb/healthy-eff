class Day < ActiveRecord::Base
  include ErrorMessages
  include DateFormat
  attr_accessible :date, :total_time, :reason, :approved, :month_id, :denied
  validates :date, :reason, presence: true
  validate :valid_total, :valid_date
  belongs_to :month
  has_many :activities, :dependent => :destroy
  accepts_nested_attributes_for :activities, :allow_destroy => true

  # Returns the total number of activity-days pending approval
  def self.num_pending
    Day.count(:conditions => {:approved => false, :denied => false})
  end

  def self.create_day(date, approved, reason)
    return Day.new({:date => date,
                    :approved => approved,
                    :denied => false,
                    :total_time => 0,
                    :reason => reason})
  end

  def user ; self.month.user ; end

  def save_with_activities(activities)
    notice = ""
    self.save!
    activities.each do |activity|
      activity.day_id = self.id
      activity.save!
      notice += activity_recorded(activity.name, activity.duration, format_date(self.date))
    end
    return notice
  end

  def valid_total
    if total_time < 60
      errors.add(:total, NOT_ENOUGH)
    elsif total_time > 1440
      errors.add(:total, NOT_TOO_HIGH)
    end
  end

  def valid_date
    unless approved
      today = Date.today
      start_date = today.beginning_of_month
      start_date =  today.ago(1.month).beginning_of_month if today.strftime("%d").to_i < 6
      end_date = today.prev_day
      check_date_in_range(start_date, end_date)
    end
  end

  def check_date_in_range(start_date, end_date)
    unless ((start_date.to_date)..(end_date.to_date)) === (date.to_date)
      errors.add(:date, date_out_of_range(date.strftime("%m/%d/%Y")))
    end
  end

  def approve_day
    self.approved = true
    self.save!
    month = self.month
    month.num_of_days += 1
    month.save!
  end

end
