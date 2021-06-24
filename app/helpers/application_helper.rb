module ApplicationHelper
    def render_svg(name, styles: "text-reset", title: nil)
        filename = "#{name.svg}"
        title = name.underscore.humanize
        inline_svg_tag(filename, aria: true, nocomment: true, title: title, class: styles)
    end

    def admin
       user_signed_in? && current_user.admin?
    end

    def author_of(resource)
       user_signed_in? && current_user.id = resource.user.id
    end
end
