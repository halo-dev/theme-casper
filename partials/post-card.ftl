<#macro post_card post>
<article class="post-card post">
    <#if post.postThumbnail??>
        <a class="post-card-image-link" href="/archives/${post.postUrl}">
            <div class="post-card-image" style="background-image: url(${post.postThumbnail})"></div>
        </a>
    </#if>
    <div class="post-card-content">
        <a class="post-card-content-link" href="/archives/${post.postUrl}">
            <header class="post-card-header">
                <#if post.categories?? && post.categories?size gt 0>
                    <span class="post-card-tags">${post.categories[0].cateName}</span>
                </#if>
                <h2 class="post-card-title">${post.postTitle}</h2>
            </header>
            <section class="post-card-excerpt">
                <p>${post.postSummary?if_exists}</p>
            </section>
        </a>
        <footer class="post-card-meta">

            <ul class="author-list">
                <li class="author-list-item">

                    <div class="author-name-tooltip">
                        ${user.userDisplayName}
                    </div>

                    <#if user.userAvatar??>
                        <a href="${options.blog_url}" class="static-avatar"><img class="author-profile-image" src="${user.userAvatar}" alt="${user.userDisplayName}" /></a>
                    <#else>
                        <a href="${options.blog_url}" class="static-avatar author-profile-image">
                            <#include "../partials/icons/avatar.ftl">
                        </a>
                    </#if>
                </li>
            </ul>

            <span class="reading-time">${post.postDate?string("yyyy-MM-dd")}</span>

        </footer>
    </div>
</article>
</#macro>
