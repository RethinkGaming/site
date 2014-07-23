class MyMustache < Nanoc::Filter
  identifier :my_mustache

  requires 'mustache'

  def run(content, params = {})
    context = item.attributes.merge({ :yield => assigns[:content] })
    ::Mustache.template_extension = 'html'
    ::Mustache.template_path = 'layouts'
    ::Mustache.render(content, context)
  end

end
