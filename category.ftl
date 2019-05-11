<#include "default.ftl">
<#include "partials/post-card.ftl">
<@default title="分类：${category.name!} | ${options.blog_title!}" keyword="${options.seo_keywords!}" desc="${options.seo_description!}" canonical="${options.blog_url!}/categories/${category.name}" body_class="tag-template">
<#-- The tag above means - insert everything in this file into the {body} of the default.hbs template -->
<#-- The big featured header, it uses blog cover image as a BG if available -->
<header class="site-header outer <#if settings.cover?default('/${theme.folderName}/assets/images/blog-cover.jpg') != ''>" style="background-image: url(${settings.cover?default('/${theme.folderName}/assets/images/blog-cover.jpg')})<#else>no-cover</#if>">
    <div class="inner">
        <#include "partials/site-nav.ftl">
        <div class="site-header-content">
            <h1 class="site-title">分类：${category.name}</h1>
            <h2 class="site-description">
                <#if category.description?? && (category.description!'')!=''>
                    ${category.description}
                <#else>
                    ${category.postCount!0}篇文章
                </#if>
            </h2>
        </div>
    </div>
</header>

<#-- The main content area -->
<main id="site-main" class="site-main outer">
    <div class="inner">
        <div class="post-feed">
            <#list posts.content as post>
                <#-- The tag below includes the markup for each post - partials/post-card.hbs -->
                <@post_card post></@post_card>
            </#list>
        </div>
    </div>
</main>
</@default>
<@scripts>
    <#if posts.totalPages gt 1>
    <script>
        // maxPages is a global variable that is needed to determine
        // if we need to load more pages for the infinitescroll, or if
        // we reached the last page already.
        var maxPages = parseInt('${posts.totalPages}');
    </script>
    <script src="/${theme.folderName}/assets/built/infinitescroll.js"></script>
    </#if>
</@scripts>
