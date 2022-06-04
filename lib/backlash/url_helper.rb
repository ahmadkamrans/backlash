ActionView::Helpers::UrlHelper.module_eval do
  def url_for(options = nil)
    case options
    when String
      options
    when :back
      _back_url
    when :backlash
      _backlash_url
    else
      raise ArgumentError, "arguments passed to url_for can't be handled. Please require " \
                           "routes or provide your own implementation"
    end
  end

  def _backlash_url
    referrer = _filtered_referrer
    if referrer
      scroll_param = controller.request.query_parameters.dig(:backlash)
      scroll_param ? "#{referrer}##{scroll_param}" : referrer
    else
      "javascript:history.back()"
    end
  end
  protected :_backlash_url
end
