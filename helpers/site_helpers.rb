module SiteHelpers

  def page_title
    if current_page.data.title
      current_page.data.title + " | " + data.site.name
    else
      data.site.name
    end
  end

  def page_description
    if current_page.data.description
      current_page.data.description
    else
      data.site.description
    end
  end

  def nav_active(page)
    current_page.data.nav == page ? {:class => "active"} : {}
  end
end
