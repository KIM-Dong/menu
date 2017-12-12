require 'sinatra'

get '/' do
	send_file "index.html"
end

get '/menu' do
	menus= ["김밥", "칼국수", "짜장면", "돈까스"]
	menu_url = {
		"김밥" => "https://www.maangchi.com/wp-content/uploads/2007/08/gimbap_plate.jpg",
		"칼국수" => "https://i.ytimg.com/vi/YblUSqBtHhk/maxresdefault.jpg",
		"짜장면" => "http://image.chosun.com/sitedata/image/201706/25/2017062500401_0.jpg",
		"돈까스" => "http://ggtour.or.kr/wp-content/uploads/2014/t_/01/DSC05267.jpg"
	}

	@menu = menus.sample
	@url = menu_url[@menu]

	erb :menu

end