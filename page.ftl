<#include "default.ftl">
<@default title="${post.postTitle} | ${options.blog_title}" keyword="${options.seo_keywords?if_exists}" desc="${post.postSummary?if_exists}" canonical="${options.blog_url}/p/${post.postUrl}" body_class="page-template">

<#-- The tag above means: insert everything in this file
into the {body} of the default.hbs template -->

<#-- The big featured header, it uses blog cover image as a BG if available -->
<header class="site-header outer">
    <div class="inner">
        <#include "partials/site-nav.ftl">
    </div>
</header>

<#-- Everything inside the #post tags pulls data from the post -->
<main id="site-main" class="site-main outer">
    <div class="inner">

        <article class="post-full post page {{#unless feature_image}}no-image{{/unless}}">

            <header class="post-full-header">
                <h1 class="post-full-title">${post.postTitle}</h1>
            </header>

            <#if post.postThumbnail??>
            <figure class="post-full-image" style="background-image: url(${post.postThumbnail})">
            </figure>
            </#if>

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

<#-- The #contentFor helper here will send everything inside it up to the matching #block helper found in default.hbs -->
</@default>
<@scripts>
    <script>
        $(function() {
            var $postContent = $(".post-full-content");
            $postContent.fitVids();
        });
    </script>
</@scripts>
