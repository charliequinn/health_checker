module HealthChecker
  def health_check_status
    render :text => 'ok'
  end
end