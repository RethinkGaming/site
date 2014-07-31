class ImageLinkFilter < Nanoc::Filter
  identifier :image_links
  type :text

  def run(content, params = {})
    content.gsub(/\<img src="(.*?)"\ alt="(.*?)">/, '<img src="\1" alt="\2">')
  end
end
