<#include "default.ftl">
<#include "partials/post-card.ftl">
<#include "partials/floating-header.ftl">
<@default title="${post.postTitle} | ${options.blog_title!}" keyword="${options.seo_keywords!},${tagWords}" desc="${post.postSummary!}" canonical="${options.blog_url}/archives/${post.postUrl}" body_class="post-template">

<#-- The tag above means: insert everything in this file
into the {body} of the default.hbs template -->

<header class="site-header outer">
    <div class="inner">
        <#include "partials/site-nav.ftl">
    </div>
</header>

<#-- Everything inside the #post tags pulls data from the post -->

<main id="site-main" class="site-main outer">
    <div class="inner">

        <article class="post-full post <#if !post.postThumbnail??>no-image</#if>">

            <header class="post-full-header">
                <section class="post-full-meta">
                    <time class="post-full-meta-date" datetime="${post.postDate?string('yyyy-MM-dd')}">${post.postDate?string('d MMM,yyyy')}</time>
                    <#if post.categories?? && post.categories?size gt 0>
                    <span class="date-divider">/</span> <a href="/categories/${post.categories[0].cateUrl}">${post.categories[0].cateName}</a>
                    </#if>
                </section>
                <h1 class="post-full-title">${post.postTitle}</h1>
            </header>

            <#if post.postThumbnail??>
            <figure class="post-full-image" style="background-image: url(${post.postThumbnail})">
            </figure>
            </#if>

            <section class="post-full-content">
                <div class="post-content">
                    ${post.postContent!}
                    <#include "partials/post-copyright.ftl">
                </div>
            </section>

            <#-- Email subscribe form at the bottom of the page -->

            <footer class="post-full-footer">

                <#-- There are two options for how we display the byline/author-info.
                If the post has more than one author, we load a specific template
                from includes/byline-multiple.hbs, otherwise, we just use the
                default byline. -->

                <#include "partials/byline-single.ftl">

            </footer>

            <section class="post-full-comments">
                <#-- If you want to embed comments, this is a good place to do it! -->
                <#include "module/comment.ftl">
            </section>

        </article>

    </div>
</main>

<#-- Links to Previous/Next posts -->
<aside class="read-next outer">
    <div class="inner">
        <div class="read-next-feed">
            <#--<#if post.categories?? && post.categories?size gt 0>-->
            <#--{{#get "posts" filter="tags:{{primary_tag.slug}}+id:-{{id}}" limit="3" as |related_posts|}}-->
                <#--{{#if related_posts}}-->
                <#--<article class="read-next-card"-->
                    <#--{{#if ../primary_tag.feature_image}}-->
                        <#--style="background-image: url({{../primary_tag.feature_image}})"-->
                    <#--{{else}}-->
                        <#--{{#if @blog.cover_image}}-->
                            <#--style="background-image: url({{@blog.cover_image}})"{{/if}}-->
                    <#--{{/if}}-->
                <#-->-->
                    <#--<header class="read-next-card-header">-->
                        <#--<small class="read-next-card-header-sitetitle">&mdash; {{@blog.title}} &mdash;</small>-->
                        <#--{{#../primary_tag}}-->
                        <#--<h3 class="read-next-card-header-title"><a href="{{url}}">{{name}}</a></h3>-->
                        <#--{{/../primary_tag}}-->
                    <#--</header>-->
                    <#--<div class="read-next-divider">{{> "icons/infinity"}}</div>-->
                    <#--<div class="read-next-card-content">-->
                        <#--<ul>-->
                            <#--{{#foreach related_posts}}-->
                            <#--<li><a href="{{url}}">{{title}}</a></li>-->
                            <#--{{/foreach}}-->
                        <#--</ul>-->
                    <#--</div>-->
                    <#--<footer class="read-next-card-footer">-->
                        <#--<a href="/categories/${}">{{plural meta.pagination.total empty='No posts' singular='% post' plural='See all % posts'}} →</a>-->
                    <#--</footer>-->
                <#--</article>-->
                <#--{{/if}}-->
            <#--{{/get}}-->
            <#--</#if>-->

            <#-- If there's a next post, display it using the same markup included from - partials/post-card.hbs -->
            <#if afterPost??>
                <@post_card afterPost></@post_card>
            </#if>

            <#-- If there's a previous post, display it using the same markup included from - partials/post-card.hbs -->
            <#if beforePost??>
                <@post_card beforePost></@post_card>
            </#if>

        </div>
    </div>
</aside>

<#-- Floating header which appears on-scroll, included from includes/floating-header.hbs -->
<@floating_header title="${post.postTitle}"></@floating_header>

</@default>
<@scripts>
    <#-- The #block helper will pull in data from the #contentFor other template files. In this case, there's some JavaScript which we only want to use in post.hbs, but it needs to be included down here, after jQuery has already loaded. -->
    <script>

        // NOTE: Scroll performance is poor in Safari
        // - this appears to be due to the events firing much more slowly in Safari.
        //   Dropping the scroll event and using only a raf loop results in smoother
        //   scrolling but continuous processing even when not scrolling
        $(document).ready(function () {
            // Start fitVids
            var $postContent = $(".post-full-content");
            $postContent.fitVids();
            // End fitVids

            var progressBar = document.querySelector('#reading-progress');
            var header = document.querySelector('.floating-header');
            var title = document.querySelector('.post-full-title');

            var lastScrollY = window.scrollY;
            var lastWindowHeight = window.innerHeight;
            var lastDocumentHeight = $(document).height();
            var ticking = false;

            function onScroll() {
                lastScrollY = window.scrollY;
                requestTick();
            }

            function onResize() {
                lastWindowHeight = window.innerHeight;
                lastDocumentHeight = $(document).height();
                requestTick();
            }

            function requestTick() {
                if (!ticking) {
                    requestAnimationFrame(update);
                }
                ticking = true;
            }

            function update() {
                var trigger = title.getBoundingClientRect().top + window.scrollY;
                var triggerOffset = title.offsetHeight + 35;
                var progressMax = lastDocumentHeight - lastWindowHeight;

                // show/hide floating header
                if (lastScrollY >= trigger + triggerOffset) {
                    header.classList.add('floating-active');
                } else {
                    header.classList.remove('floating-active');
                }

                progressBar.setAttribute('max', progressMax);
                progressBar.setAttribute('value', lastScrollY);

                ticking = false;
            }

            window.addEventListener('scroll', onScroll, {passive: true});
            window.addEventListener('resize', onResize, false);

            update();

        });
    </script>
    <#-- Ghost outputs important scripts and data with this tag - it should always be the very last thing before the closing body tag -->
    <#-- {{ghost_foot}} -->
</@scripts>
