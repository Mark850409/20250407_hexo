// 获取网页不含域名的路径
var windowPath = 'https://markweb.idv.tw:23443/photo/';
console.log(windowPath);
// 图片信息文件路径
var imgDataPath = 'https://markweb.idv.tw:23443/photo/photoslist.json'; 
// 图片显示数量
var imgMaxNum = 20; 
// 获取窗口宽度（以确定图片显示宽度）
var windowWidth = window.innerWidth
|| document.documentElement.clientWidth
|| document.body.clientWidth;
if (windowWidth < 768) {
    var imageWidth = 145; // 图片显示宽度(手机)
} else {
    var imageWidth = 215; // 图片显示宽度
}
// 腾讯云图片处理样式（根据图片显示宽度）
var imgStyle = '!' + imageWidth + 'x';


// 图片卡片（照片页面）
if (windowPath.indexOf('photo') > 0 ) {
    var LinkDataPath = imgDataPath;
    photo ={
    page: 1,
    offset: imgMaxNum,
    init: function () {
        var that = this;
        $.getJSON(LinkDataPath, function (data) {
            window.questionnaire = data;
            window.questionnaire.sort(function() { return .5 - Math.random();});
            console.log(window.questionnaire);
            that.render(that.page, window.questionnaire);
        });
    },
    render: function (page, data) {
        var begin = (page - 1) * this.offset;
        var end = page * this.offset;
        if (begin >= data.length) return;
        var html, imgNameWithPattern, imgName, imageSize, imageX, imageY, li = "";
        
// Date object
const date = new Date();

let currentDay= String(date.getDate()).padStart(2, '0');

let currentMonth = String(date.getMonth()+1).padStart(2,"0");

let currentYear = date.getFullYear();

// we will display the date as DD-MM-YYYY 

let currentDate = `${currentYear}-${currentMonth}-${currentDay}`;

var ischeck=false;
        for (var i = begin; i < end && i < data.length; i++) {
                imgNameWithPattern = data[i].split(';')[1];  // a.png
                imgName = imgNameWithPattern.split('.')[0]  // a
                let result = imgName.includes(currentDate);
                imageSize = data[i].split(';')[0]; // length.height 
                imageX = imageSize.split('.')[0]; //  length
                imageY = imageSize.split('.')[1]; // height
			    cdn_url       = data[i].split(';')[2]; // 原图 cdn url
				small_cdn_url = data[i].split(';')[3]; // 缩略图 cdn url
                if(result){
                     li += '<div class="card" style="width:300px">' +
                        '<div class="ImageInCard" style="height:'+ 300 * imageY / imageX + 'px">' +
                            '<a data-fancybox="gallery" href="' + cdn_url + '" data-caption="' + imgName + '" title="' +  imgName + '">' +
                                '<img style="width:100%;" data-src="' + small_cdn_url + '" src="' + small_cdn_url + '" data-loaded="true">' +
                            '</a>' +
                        '</div>' +
                      '</div>'
                }
                else{
                   if(i==0){
                        alert("今日沒有照片喔，請檢查腳本是否有"+currentDate+"的照片!!!")
                   }
                          
                }
        }
        
        
        $(".MyGrid").append(li);
        this.minigrid();
    },
    minigrid: function() {
        var grid = new Minigrid({
            container: '.MyGrid',
            item: '.card',
            gutter: 12
        });
        grid.mount();
        $(window).resize(function() {
           grid.mount();
        });
    }
}
photo.init();
}
