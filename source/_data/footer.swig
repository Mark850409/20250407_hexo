  <span id="sitetime"></span>
  <script language=javascript>
      function siteTime(){
          window.setTimeout("siteTime()", 1000);
          var seconds = 1000;
          var minutes = seconds * 60;
          var hours = minutes * 60;
          var days = hours * 24;
          var years = days * 365;
          var today = new Date();
          var todayYear = today.getFullYear();
          var todayMonth = today.getMonth()+1;
          var todayDate = today.getDate();
          var todayHour = today.getHours();
          var todayMinute = today.getMinutes();
          var todaySecond = today.getSeconds();
          /* 
          Date.UTC() -- 返回date对象距世界标准时间(UTC)1970年1月1日午夜之间的毫秒数(时间戳)
          year - 作为date对象的年份，为4位年份值
          month - 0-11之间的整数，做为date对象的月份
          day - 1-31之间的整数，做为date对象的天数
          hours - 0(午夜24点)-23之间的整数，做为date对象的小时数
          minutes - 0-59之间的整数，做为date对象的分钟数
          seconds - 0-59之间的整数，做为date对象的秒数
          microseconds - 0-999之间的整数，做为date对象的毫秒数
      */
          var t1 = Date.UTC(2021,12,23,11,40,00); //北京时间2018-2-13 00:00:00
          var t2 = Date.UTC(todayYear,todayMonth,todayDate,todayHour,todayMinute,todaySecond);
          var diff = t2-t1;
      var diffYears = Math.floor(diff/years);
      var diffDays = Math.floor((diff/days)-diffYears*365);
      var diffHours = Math.floor((diff-(diffYears*365+diffDays)*days)/hours);
      var diffMinutes = Math.floor((diff-(diffYears*365+diffDays)*days-diffHours*hours)/minutes);
      var diffSeconds = Math.floor((diff-(diffYears*365+diffDays)*days-diffHours*hours-diffMinutes*minutes)/seconds);
      document.getElementById("sitetime").innerHTML="本網站已運行"+/*diffYears+" 年 "+*/diffDays+" 天 "+diffHours+" 小時 "+diffMinutes+" 分鐘 "+diffSeconds+" 秒";
    }
      siteTime();
  </script>
</div>

<div>
    <style>
    .footer-beian{
           display: inline-block;
           border-radius: 10px;
           text-shadow: none;
           font-size: 12px;
           color: #fff;
           line-height: 15px;
          //background-color: var(--content-bg-color);
           margin: 5px 10px;
           padding: 1px 10px;
    }
    .footer-beian a{
              border-bottom:none !important;
        }
    .badge-subject {
          display: inline-block;
          padding: 4px 4px 4px 6px;
          border-top-left-radius: 4px;
          border-bottom-left-radius: 4px;
    }
    .badge-value {
        display: inline-block;
        padding: 4px 6px 4px 4px;
        border-top-right-radius: 4px;
        border-bottom-right-radius: 4px;
    }
    
    i {
    margin-right: 10px;
    }
    </style>

    <div class="footer-beian">
        <a target="_blank" href="https://github.com/Mark850409" rel="nofollow" title="markGitHub">
            <i class="fa fa-tag"></i><span class="badge-subject">markGithub</span>
        </a>
    </div>
    <div class="footer-beian">
        <a target="_blank" href="https://markweb.idv.tw:443" rel="nofollow" title="markHackMD">
            <i class="fa fa-tag"></i><span class="badge-subject">markHackMD</span>
        </a>
    </div>
      <div class="footer-beian">
        <a target="_blank" href="https://markweb.idv.tw:443" rel="nofollow" title="markGitea">
            <i class="fas fa-code-branch"></i><span class="badge-subject">markGitea</span>
        </a>
    </div>
      <div class="footer-beian">
        <a target="_blank" href="https://markweb.idv.tw:443" rel="nofollow" title="markdocker">
            <i class="fab fa-docker"></i><span class="badge-subject">markdocker</span>
        </a>
    </div>
      <div class="footer-beian">
        <a target="_blank" href="https://markweb.idv.tw:443" rel="nofollow" title="markcloud">
            <i class="fas fa-cloud"></i><span class="badge-subject">markcloud</span>
        </a>
    </div>
      <div class="footer-beian">
        <a target="_blank" href="https://markweb.idv.tw:443" rel="nofollow" title="markjupyter">
            <i class="fab fa-python"></i><span class="badge-subject">markjupyter</span>
        </a>
    </div>
</div>
