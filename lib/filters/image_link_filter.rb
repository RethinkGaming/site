class ImageLinkFilter < Nanoc::Filter
  identifier :image_links
  type :text

  def run(content, params = {})
    content.gsub(/\<img src="(.*?)"/, '<img src="../\1"')
  end
end
