module SiteHelpers

  def page_title
    if data.page.title
      data.page.title + " | " + settings.site_name
    else
      settings.site_name
    end
  end

  def page_description
    if data.page.description
      data.page.description
    else
      settings.site_description
    end
  end

end