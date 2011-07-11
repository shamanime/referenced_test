# encoding: utf-8
class JobObserver < Mongoid::Observer
  def after_create(job)
    @job = job
    @job.historys.create(user: @job.user, description: "#{@job.user} created the job.")
  end
  
  def before_update(job)
    @job = job
    @job.changes.each do |k, v|
      @job.historys.create(user: @job.user, description: "#{@job.user} updated the title from <b>#{v[0]}</b> to <b>#{v[1]}</b>.") if k == "titulo"
      @job.historys.create(user: @job.user, description: "#{@job.user} updated the customer from <b>#{Customer.find(v[0]).name}</b> to <b>#{Customer.find(v[1]).name}</b>.") if k == "customer_id"
    end
  end
end