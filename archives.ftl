<#include "default.ftl">
<@default title="文章归档 | ${options.blog_title!}" keyword="${options.seo_keywords!}" desc="${options.seo_description!}" canonical="${options.blog_url!}/archives" body_class="page-template">

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

        <article class="post-full post page <#if !settings.archives_cover??>no-image</#if>">

            <header class="post-full-header">
                <h1 class="post-full-title">文章归档</h1>
            </header>

            <#if settings.archives_cover??>
            <figure class="post-full-image" style="background-image: url(${settings.archives_cover})">
            </figure>
            </#if>

            <section class="post-full-content">
                <div class="post-content">
                    <h1>分类</h1>
                    <ul>
                        <@categoryTag method="list">
                            <#list categories as category>
                                <li>
                                    <a href="${options.blog_url!}/categories/${category.slugName}">${category.name}(${category.postCount!0})</a>
                                </li>
                            </#list>
                        </@categoryTag>
                    </ul>

                    <h1>标签</h1>
                    <ul>
                        <@tagTag method="list">
                            <#list tags as tag>
                                <li>
                                    <a href="${options.blog_url!}/tags/${tag.slugName}">${tag.name}(${tag.postCount!0})</a>
                                </li>
                            </#list>
                        </@tagTag>
                    </ul>

                    <h1>归档</h1>
                    <@postTag method="archiveMonth">
                        <#list archives as archive>
                            <h2>${archive.year?c}年${archive.month}月</h2>
                            <ul class="listing">
                                <#list archive.posts?sort_by("createTime")?reverse as post>
                                    <li>
                                        ${post.createTime?string('MM月dd日')}：<a href="${options.blog_url!}/archives/${post.url!}">${post.title}</a>
                                    </li>
                                </#list>
                            </ul>
                        </#list>
                    </@postTag>
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
