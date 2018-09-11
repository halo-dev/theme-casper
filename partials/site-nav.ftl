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

            <#if options.casper_sns_twitter??>
            <a class="social-link social-link-tw" href="https://twitter.com/${options.casper_sns_twitter}" target="_blank" rel="noopener">
                <#include "../partials/icons/twitter.ftl">
            </a>
            </#if>

            <#if options.casper_sns_facebook??>
            <a class="social-link social-link-fb" href="https://www.facebook.com/${options.casper_sns_facebook}" target="_blank" rel="noopener">
                <#include "../partials/icons/facebook.ftl">
            </a>
            </#if>

            <#if options.casper_sns_instagram??>
            <a class="social-link social-link-fb" href="https://www.instagram.com/${options.casper_sns_instagram}" target="_blank" rel="noopener">
                <#include "../partials/icons/instagram.ftl">
            </a>
            </#if>

            <#if options.casper_sns_dribbble??>
            <a class="social-link social-link-fb" href="https://dribbble.com/${options.casper_sns_dribbble}" target="_blank" rel="noopener">
                <#include "../partials/icons/dribbble.ftl">
            </a>
            </#if>

            <#if options.casper_sns_weibo??>
            <a class="social-link social-link-fb" href="https://weibo.com/${options.casper_sns_weibo}" target="_blank" rel="noopener">
                <#include "../partials/icons/weibo.ftl">
            </a>
            </#if>

            <#if options.casper_sns_qq??>
            <a class="social-link social-link-fb" href="tencent://message/?uin=${options.casper_sns_qq}&Site=&Menu=yes" target="_blank" rel="noopener">
                <#include "../partials/icons/qq.ftl">
            </a>
            </#if>

            <#if options.casper_sns_telegram??>
            <a class="social-link social-link-fb" href="https://t.me/${options.casper_sns_telegram}" target="_blank" rel="noopener">
                <#include "../partials/icons/telegram.ftl">
            </a>
            </#if>

            <#if options.casper_sns_email??>
            <a class="social-link social-link-fb" href="mailto:${options.casper_sns_email}" target="_blank" rel="noopener">
                <#include "../partials/icons/email.ftl">
            </a>
            </#if>

            <#if options.casper_sns_github??>
            <a class="social-link social-link-fb" href="https://github.com/${options.casper_sns_github}" target="_blank" rel="noopener">
                <#include "../partials/icons/github.ftl">
            </a>
            </#if>

            <#if options.casper_sns_cnblog??>
                <a class="social-link social-link-fb" href="https://www.cnblogs.com/${options.casper_sns_cnblog}/" target="_blank" rel="noopener">
                    <#include "../partials/icons/cnblog.ftl">
                </a>
            </#if>

            <#if options.casper_sns_stackoverflow??>
                <a class="social-link social-link-fb" href="https://stackoverflow.com/users/${options.casper_sns_stackoverflow}" target="_blank" rel="noopener">
                    <#include "../partials/icons/stackoverflow.ftl">
                </a>
            </#if>
        </div>
        <#if options.casper_sns_rss?default('true')=='true'>
        <a class="rss-button" href="/feed.xml" target="_blank" rel="noopener">
            <#include "../partials/icons/rss.ftl">
        </a>
        </#if>
    </div>
</nav>
