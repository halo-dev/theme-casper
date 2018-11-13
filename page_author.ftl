<#include "default.ftl">
<@default title="${post.postTitle!} | ${options.blog_title!}" keyword="${options.seo_keywords!}" desc="${options.seo_desc!}" canonical="${options.blog_url}/p/${post.postUrl!}" body_class="page-template">
<#-- The tag above means - insert everything in this file into the {body} of the default.hbs template -->
<#-- Everything inside the #author tags pulls data from the author -->
<header class="site-header outer <#if options.casper_general_cover?default('/${themeName}/assets/images/blog-cover.jpg') != ''>" style="background-image: url(${options.casper_general_cover?default('/${themeName}/assets/images/blog-cover.jpg')})<#else>no-cover</#if>">
    <div class="inner">
        <#include "partials/site-nav.ftl">
        <div class="site-header-content">
            <img class="author-profile-image" src="${user.userAvatar!}" alt="${user.userDisplayName!}" />
            <h1 class="site-title">${user.userDisplayName!}</h1>
            <#if user.userDesc??>
                <h2 class="author-bio">${user.userDesc!}</h2>
            </#if>
            <div class="author-meta">
            <#if options.casper_general_location??>
                <div class="author-location">${options.casper_general_location} <span class="bull">&bull;</span></div>
            </#if>
            <div class="author-stats">
            <@articleTag method="postsCount">${postsCount}</@articleTag> 篇文章 <span class="bull">&bull;</span>
            </div>
            <a class="social-link social-link-rss" href="/atom.xml" target="_blank" rel="noopener"><#include "partials/icons/rss.ftl"></a>
            </div>
        </div>
    </div>
</header>


<#-- The main content area -->
<main id="site-main" class="site-main outer">
    <div class="inner">

        <article class="post-full post page no-image">

            <header class="post-full-header">
                <h1 class="post-full-title">${post.postTitle}</h1>
            </header>

            <section class="post-full-content">
                <div class="post-content">
                    ${post.postContent}
                </div>
            </section>

            <section class="post-full-comments">
            <#-- If you want to embed comments, this is a good place to do it! -->
                <#include "module/comment.ftl">
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
