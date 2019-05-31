<#include "default.ftl">
<@default title="${post.title} | ${options.blog_title!}" keyword="${options.seo_keywords!}" desc="${post.summary!}" canonical="${context!}/p/${post.url!}" body_class="page-template">

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

        <article class="post-full post page <#if !post.thumbnail??>no-image</#if>">

            <header class="post-full-header">
                <h1 class="post-full-title">${post.title}</h1>
            </header>

            <#if post.thumbnail?? && post.thumbnail!=''>
            <figure class="post-full-image" style="background-image: url(${post.thumbnail})">
            </figure>
            </#if>

            <section class="post-full-content">
                <div class="post-content">
                    ${post.formatContent!}
                </div>
            </section>

            <section class="post-full-comments" style="padding: 0 100px;">
            <#-- If you want to embed comments, this is a good place to do it! -->
                <#include "module/comment.ftl">
                <@comment post=sheet type="sheet" />
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
