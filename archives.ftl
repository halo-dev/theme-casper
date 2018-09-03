<#include "default.ftl">
<@default title="文章归档 | ${options.blog_title}" keyword="${options.seo_keywords?if_exists}" desc="${options.seo_desc?if_exists}" canonical="${options.blog_url}/archives" body_class="page-template">

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

        <article class="post-full post page <#if !options.casper_general_archives_cover??>no-image</#if>">

            <header class="post-full-header">
                <h1 class="post-full-title">文章归档</h1>
            </header>

            <#if options.casper_general_archives_cover??>
            <figure class="post-full-image" style="background-image: url(${options.casper_general_archives_cover})">
            </figure>
            </#if>

            <section class="post-full-content">
                <div class="post-content">
                    <h1>分类</h1>
                    <ul>
                        <@commonTag method="categories">
                            <#list categories as category>
                                <li>
                                    <a href="${options.blog_url}/categories/${category.cateUrl}">${category.cateName}(${category.posts?size})</a>
                                </li>
                            </#list>
                        </@commonTag>
                    </ul>

                    <h1>标签</h1>
                    <ul>
                        <@commonTag method="tags">
                            <#list tags as tag>
                                <li>
                                    <a href="${options.blog_url}/tags/${tag.tagUrl}">${tag.tagName}(${tag.posts?size})</a>
                                </li>
                            </#list>
                        </@commonTag>
                    </ul>

                    <h1>归档</h1>
                    <@articleTag method="archives">
                        <#list archives as archive>
                            <h2>${archive.year}年${archive.month}月</h2>
                            <ul class="listing">
                                <#list archive.posts?sort_by("postDate")?reverse as post>
                                    <li>
                                        ${post.postDate?string('MM月dd日')}：<a href="${options.blog_url}/archives/${post.postUrl}">${post.postTitle}</a>
                                    </li>
                                </#list>
                            </ul>
                        </#list>
                    </@articleTag>
                </div>
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
