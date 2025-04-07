<!--您可能喜歡的文章-->
{% if theme.recommended_posts.enabled and not is_index and post.related_posts %}
<div class="post-body">
  <div class="notes">
     <p>您可能喜歡的文章...</p>
     <hr>
    <div class="recommended_posts">
      {% set recommended_posts = recommended_posts(post, site) %}
      {% if recommended_posts.length > 0 %}
        <ul>
          {% for link in recommended_posts  %}
            <li><a href="{{ link.permalink }}">{{ link.title }}</a></li>
          {% endfor %}
        </ul>
      {% endif %} 
    </div> 
  </div>
</div>
{% endif %}

<!--結束標語-->
<div>
    {% if not is_index %}
        <div class="end-slogan" style="text-align:center;font-size:13px;letter-spacing:5px;user-select:none;color:#bbb;"><br/>------------本文结束啦<i class="fa fa-star"></i>感谢您的閱讀------------<br/><br/></div>
    {% endif %}
</div>

