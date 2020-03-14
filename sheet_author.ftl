<#include "default.ftl">
<@default title="${sheet.title!} | ${blog_title!}" canonical="${sheet.fullPath!}" body_class="page-template">
<#-- The tag above means - insert everything in this file into the {body} of the default.hbs template -->
<#-- Everything inside the #author tags pulls data from the author -->
<header class="site-header outer <#if settings.cover?default('${theme_base!}/assets/images/blog-cover.jpg') != ''>" style="background-image: url(${settings.cover?default('${theme_base!}/assets/images/blog-cover.jpg')})<#else>no-cover</#if>">
    <div class="inner">
        <#include "partials/site-nav.ftl">
        <div class="site-header-content">
            <img class="author-profile-image" src="${user.avatar!}" alt="${user.nickname!}" />
            <h1 class="site-title">${user.nickname!}</h1>
            <#if user.description??>
                <h2 class="author-bio">${user.description!}</h2>
            </#if>
            <div class="author-meta">
            <#if settings.location??>
                <div class="author-location">${settings.location} <span class="bull">&bull;</span></div>
            </#if>
            <div class="author-stats">
            <@postTag method="count">${count}</@postTag> 篇文章 <span class="bull">&bull;</span>
            </div>
            <a class="social-link social-link-rss" href="${atom_url!}" target="_blank" rel="noopener"><#include "partials/icons/rss.ftl"></a>
            </div>
        </div>
    </div>
</header>


<#-- The main content area -->
<main id="site-main" class="site-main outer">
    <div class="inner">

        <article class="post-full post page no-image">

            <header class="post-full-header">
                <h1 class="post-full-title">${post.title!}</h1>
            </header>

            <section class="post-full-content">
                <div class="post-content">
                    ${sheet.formatContent!}
                </div>
            </section>

            <section class="post-full-comments">
            <#-- If you want to embed comments, this is a good place to do it! -->
                <#include "module/comment.ftl">
                <@comment post=sheet type="sheet" />
            </section>

        </article>

    </div>
</main>
</@default>
<@scripts>
    <script>
        $(function() {
            var $postContent = $(".post-full-content");
            $postContent.fitVids();
        });
    </script>
</@scripts>
