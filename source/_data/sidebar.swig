{%- if theme.recent_posts %}
    <div class="links-of-blogroll motion-element {{ "links-of-blogroll-" + theme.recent_posts_layout }}">
        <div class="links-of-blogroll-title recent-posts-title">
        <i class="fa fa-history {{ theme.recent_posts_icon | lower }}" aria-hidden="true"></i>
            {{ theme.recent_posts_title }}
    </div>
    <ul class="links-of-blogroll-list recent-posts-list">
        {%- set posts = site.posts.sort('-date').toArray() %}
        {%- for post in posts.slice('0', '5') %}
            <li class="my-links-of-blogroll-item">
            <a href="{{ url_for(post.path) }}" title="{{ post.title }}" target="">
            {{ post.title }}
            </a>
        </li>
        {%- endfor %}
    </ul>
    </div>
{%- endif %}
