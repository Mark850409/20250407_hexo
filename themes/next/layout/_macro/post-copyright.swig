<!-- JS库 clipboard 拷贝内容到粘贴板-->
<script src="https://cdn.bootcss.com/clipboard.js/2.0.1/clipboard.min.js"></script>

<!-- JS库 sweetalert 显示提示信息-->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<ul class="post-copyright">
  <!-- 本文标题 -->
  <li class="post-copyright-title">
    <strong>{{ __('post.copyright.title') + __('symbol.colon') }} </strong>
    {{ post.title }}
  </li>

  <!-- 本文作者 -->
  <li class="post-copyright-author">
    <strong>{{ __('post.copyright.author') + __('symbol.colon') }} </strong>
    {{ post.author | default(author) }}
  </li>

  <!-- 创建时间 -->
  <li>
    <strong>{{ __('post.created') + __('symbol.colon') }} </strong>
    {{ post.date.format("YYYY/MM/DD-HH:MM") }}
  </li>

  <!-- 修改时间 -->
  <li>
    <strong>{{ __('post.modified') + __('symbol.colon') }} </strong>
    {{ post.updated.format("YYYY/MM/DD-HH:MM") }}
  </li>

  <!-- 引用链接 -->
  <li class="post-copyright-link">
    <strong>{{ __('post.copyright.link') + __('symbol.colon') }}</strong>
    <a href="{{ post.url | default(post.permalink) }}" title="{{ post.title }}"
      >{{ post.url | default(post.permalink) }}</a
    >
    <span class="copy-path" title="點擊複製連結"
      ><i
        style="cursor: pointer"
        class="fa fa-clipboard"
        data-clipboard-text="[{{ post.author | default(author) }}'s Blog | {{ post.title }}]({{ post.permalink }})"
        aria-label="{{ __('post.copy_success') }}"
      ></i
    ></span>
  </li>

  <!-- 版权声明 -->
  <li class="post-copyright-license">
    <strong
      >{{ __('post.copyright.license_title') + __('symbol.colon') }}
    </strong>
markweb所有文章除特别聲明外，均採用 <a href="http://creativecommons.org/licenses/by-nc-sa/3.0/cn/" rel="external nofollow" target="_blank">CC BY-NC-SA 3.0 CN</a> 許可協議，轉貼請註明出處！
</li>
</ul>

<script>
  var clipboard = new ClipboardJS(".fa-clipboard");
  clipboard.on("success", function(target) {
    var message = document.createElement("div");
    message.innerHTML =
      '<i class="fa fa-check-circle message-icon"></i><span class="message-content">' +
      target.trigger.getAttribute("aria-label") +
      "</span>";
    swal({
      content: message,
      className: "copy-success-message",
      timer: 1000,
      button: false
    });
  });
</script>
