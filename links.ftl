<#include "default.ftl">
<@default title="友情链接 | ${options.blog_title}" keyword="${options.seo_keywords?if_exists}" desc="${options.seo_desc?if_exists}" canonical="${options.blog_url}/links" body_class="page-template">

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

        <article class="post-full post page <#if !options.casper_general_links_cover??>no-image</#if>">

            <header class="post-full-header">
                <h1 class="post-full-title">友情链接</h1>
            </header>

            <#if options.casper_general_links_cover??>
            <figure class="post-full-image" style="background-image: url(${options.casper_general_links_cover})">
            </figure>
            </#if>

            <section class="post-full-content">
                <div class="post-content">
                    <ul>
                        <@commonTag method="links">
                            <#list links as link>
                                <li>
                                    <a href="${link.linkUrl}" target="_blank">${link.linkName}</a><#if link.linkDesc != ''> - ${link.linkDesc}</#if>
                                </li>
                            </#list>
                        </@commonTag>
                    </ul>
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
