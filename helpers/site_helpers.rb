module SiteHelpers

  def page_title
    if data.page.title
      data.page.title + " | " + data.site.name
    else
      data.site.name
    end
  end

  def page_description
    if data.page.description
      data.page.description
    else
      data.site.description
    end
  end

  def nav_active(page)
    data.page.nav == page ? {:class => "active"} : {}
  end
end