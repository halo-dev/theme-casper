<nav class="site-nav">
    <div class="site-nav-left">
        <#if !is_index??>
            <#if options.blog_logo??>
                <a class="site-nav-logo" href="${options.blog_url}"><img src="${options.blog_logo}" alt="${options.blog_title}" /></a>
            <#else>
                <a class="site-nav-logo" href="${options.blog_url}">${options.blog_title}</a>
            </#if>
        </#if>
        <@commonTag method="menus">
            <ul class="nav" role="menu">
                <#list menus as menu>
                    <li class="nav-${menu.menuName}" role="menuitem"><a href="${menu.menuUrl}">${menu.menuName}</a></li>
                </#list>
            </ul>
        </@commonTag>
    </div>
    <div class="site-nav-right">
        <div class="social-links">
            <a class="social-link social-link-fb" href="{{facebook_url @blog.facebook}}" target="_blank" rel="noopener">
                <#include "../partials/icons/facebook.ftl">
            </a>
            <a class="social-link social-link-tw" href="{{twitter_url @blog.twitter}}" target="_blank" rel="noopener">
                <#include "../partials/icons/twitter.ftl">
            </a>
        </div>
        <a class="rss-button" href="/feed.xml" target="_blank" rel="noopener">
            <#include "../partials/icons/rss.ftl">
        </a>
    </div>
</nav>
