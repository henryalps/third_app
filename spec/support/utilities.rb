#这个脚本会被自动加载，供所有调试脚本使用
def full_title(page_title)
	base_title="Ruby on Rails Tutorial Sample App"
	if page_title.empty?
		base_title
		
	else
		"#{base_title} | #{page_title}"
		
	end
end