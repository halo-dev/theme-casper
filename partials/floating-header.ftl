<#macro floating_header title>
<div class="floating-header">
    <div class="floating-header-logo">
        <a href="${blog_url!}">
            <#if blog_logo?? && blog_logo!=''>
                <img src="${blog_logo!}" alt="${blog_title!} icon" />
            </#if>
            <span>${blog_title!}</span>
        </a>
    </div>
    <span class="floating-header-divider">&mdash;</span>
    <div class="floating-header-title">${title}</div>
    <div class="floating-header-share">
        <div class="floating-header-share-label">Share this <#include "icons/point.ftl"></div>
        <a class="floating-header-share-tw" href="https://twitter.com/share?text=${title}&amp;url=${context!}"
            onclick="window.open(this.href, 'share-twitter', 'width=550,height=235');return false;">
            <#include "icons/twitter.ftl">
        </a>
        <a class="floating-header-share-fb" href="https://www.facebook.com/sharer/sharer.php?u=${context!}"
           onclick="window.open(this.href, 'share-facebook','width=580,height=296');return false;">
            <#include "icons/facebook.ftl">
        </a>
    </div>
    <progress id="reading-progress" class="progress" value="0">
        <div class="progress-container">
            <span class="progress-bar"></span>
        </div>
    </progress>
</div>
</#macro>
