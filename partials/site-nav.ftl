<nav class="site-nav">
    <div class="site-nav-left">
        <#if !is_index??>
            <#if options.blog_logo??>
                <a class="site-nav-logo" href="${ctx!}"><img src="${options.blog_logo!}" alt="${options.blog_title!}" /></a>
            <#else>
                <a class="site-nav-logo" href="${ctx!}">${options.blog_title!}</a>
            </#if>
        </#if>
        <@menuTag method="list">
            <ul class="nav" role="menu">
                <#list menus?sort_by('priority') as menu>
                    <li class="nav-${menu.name}" role="menuitem"><a href="${menu.url}" target="${menu.target!'_blank'}">${menu.name}</a></li>
                </#list>
            </ul>
        </@menuTag>
    </div>
    <div class="site-nav-right">
        <div class="social-links">

            <#if settings.twitter??>
            <a class="social-link social-link-tw" href="https://twitter.com/${settings.twitter}" target="_blank" rel="noopener">
                <#include "../partials/icons/twitter.ftl">
            </a>
            </#if>

            <#if settings.facebook??>
            <a class="social-link social-link-fb" href="https://www.facebook.com/${settings.facebook}" target="_blank" rel="noopener">
                <#include "../partials/icons/facebook.ftl">
            </a>
            </#if>

            <#if settings.instagram??>
            <a class="social-link social-link-fb" href="https://www.instagram.com/${settings.instagram}" target="_blank" rel="noopener">
                <#include "../partials/icons/instagram.ftl">
            </a>
            </#if>

            <#if settings.dribbble??>
            <a class="social-link social-link-fb" href="https://dribbble.com/${settings.dribbble}" target="_blank" rel="noopener">
                <#include "../partials/icons/dribbble.ftl">
            </a>
            </#if>

            <#if settings.weibo??>
            <a class="social-link social-link-fb" href="https://weibo.com/${settings.weibo}" target="_blank" rel="noopener">
                <#include "../partials/icons/weibo.ftl">
            </a>
            </#if>

            <#if settings.qq??>
            <a class="social-link social-link-fb" href="tencent://message/?uin=${settings.qq}&Site=&Menu=yes" target="_blank" rel="noopener">
                <#include "../partials/icons/qq.ftl">
            </a>
            </#if>

            <#if settings.telegram??>
            <a class="social-link social-link-fb" href="https://t.me/${settings.telegram}" target="_blank" rel="noopener">
                <#include "../partials/icons/telegram.ftl">
            </a>
            </#if>

            <#if settings.email??>
            <a class="social-link social-link-fb" href="mailto:${settings.email}" target="_blank" rel="noopener">
                <#include "../partials/icons/email.ftl">
            </a>
            </#if>

            <#if settings.github??>
            <a class="social-link social-link-fb" href="https://github.com/${settings.github}" target="_blank" rel="noopener">
                <#include "../partials/icons/github.ftl">
            </a>
            </#if>

            <#if settings.cnblog??>
                <a class="social-link social-link-fb" href="https://www.cnblogs.com/${settings.cnblog}/" target="_blank" rel="noopener">
                    <#include "../partials/icons/cnblog.ftl">
                </a>
            </#if>

            <#if settings.stackoverflow??>
                <a class="social-link social-link-fb" href="https://stackoverflow.com/users/${settings.stackoverflow}" target="_blank" rel="noopener">
                    <#include "../partials/icons/stackoverflow.ftl">
                </a>
            </#if>
        </div>
        <#if settings.rss!true>
        <a class="rss-button" href="/feed.xml" target="_blank" rel="noopener">
            <#include "../partials/icons/rss.ftl">
        </a>
        </#if>
    </div>
</nav>
