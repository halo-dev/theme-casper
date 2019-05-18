<#macro post_card post>
<article class="post-card post">
    <#if post.thumbnail?? && post.thumbnail!=''>
        <a class="post-card-image-link" href="${ctx!}/archives/${post.url!}">
            <div class="post-card-image" style="background-image: url(${post.thumbnail!})"></div>
        </a>
    </#if>
    <div class="post-card-content">
        <a class="post-card-content-link" href="${ctx!}/archives/${post.url!}">
            <header class="post-card-header">
                <#if post.categories?? && post.categories?size gt 0>
                    <span class="post-card-tags">${post.categories[0].name}</span>
                </#if>
                <h2 class="post-card-title">${post.title}</h2>
            </header>
            <section class="post-card-excerpt">
                <p>${post.summary!}</p>
            </section>
        </a>
        <footer class="post-card-meta">

            <ul class="author-list">
                <li class="author-list-item">

                    <div class="author-name-tooltip">
                        ${user.nickname!}
                    </div>

                    <#if user.avatar??>
                        <a href="${ctx!}" class="static-avatar"><img class="author-profile-image" src="${user.avatar}" alt="${user.nickname!}" /></a>
                    <#else>
                        <a href="${ctx!}" class="static-avatar author-profile-image">
                            <#include "../partials/icons/avatar.ftl">
                        </a>
                    </#if>
                </li>
            </ul>

            <span class="reading-time">${post.createTime?string("yyyy-MM-dd")}</span>

        </footer>
    </div>
</article>
</#macro>
