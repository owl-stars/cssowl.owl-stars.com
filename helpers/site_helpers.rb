module SiteHelpers

  def page_title
    if data.page.title
      settings.site_name + " - " +data.page.title
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

  def nav_active(page)
    data.page.nav == page ? {:class => "active"} : {}
  end
end