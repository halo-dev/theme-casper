<#-- Everything inside the #author tags pulls data from the author -->

<section class="author-card">
    <#if user.userAvatar??>
        <img class="author-profile-image" src="${user.userAvatar}" alt="${user.userDisplayName}" />
    <#else >
        <span class="avatar-wrapper">
            <#include "icons/avatar.ftl">
        </span>
    </#if>
    <section class="author-card-content">
        <h4 class="author-card-name"><a href="${options.blog_url}">${user.userDisplayName}</a></h4>
        <#if user.userDesc??>
            <p>${user.userDesc}</p>
        <#else>
            <p>Read <a href="${options.blog_url}">more posts</a> by this author.</p>
        </#if>
    </section>
</section>
<div class="post-full-footer-right">
    <a class="author-card-button" href="${options.blog_url}">Read More</a>
</div>

