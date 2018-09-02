<#macro default title,keyword,desc,canonical,body_class>
<#include "../../common/macro/common_macro.ftl">
<!DOCTYPE html>
<html lang="zh-CN">
<head>

    <#-- Document Settings -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <#-- Base Meta -->
    <title>${title}</title>
    <meta name="HandheldFriendly" content="True" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <#-- Styles'n'Scripts -->
    <link rel="stylesheet" type="text/css" href="/casper/assets/built/screen.css" />

    <#-- This tag outputs SEO meta+structured data and other important settings -->

    <meta name="description" content="${desc}" />
    <@favicon></@favicon>
    <link rel="canonical" href="${canonical}" />
    <meta name="referrer" content="no-referrer-when-downgrade" />

    <meta property="og:site_name" content="${title}" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="${title}" />
    <meta property="og:description" content="${desc}" />
    <meta property="og:url" content="${canonical}" />
    <meta property="og:image" content="https://demo.ghost.io/content/images/2017/07/blog-cover.jpg" />
    <meta property="article:publisher" content="https://www.facebook.com/ghost" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content="${title}" />
    <meta name="twitter:description" content="${desc}" />
    <meta name="twitter:url" content="${canonical}" />
    <meta name="twitter:image" content="https://demo.ghost.io/content/images/2017/07/blog-cover.jpg" />
    <meta name="twitter:site" content="@tryghost" />
    <meta property="og:image:width" content="2000" />
    <meta property="og:image:height" content="666" />

    <script type="application/ld+json">
    {
    "@context": "https://schema.org",
    "@type": "WebSite",
    "publisher": {
        "@type": "Organization",
        "name": "Ghost",
        "logo": "https://demo.ghost.io/content/images/2014/09/Ghost-Transparent-for-DARK-BG.png"
    },
    "url": "https://demo.ghost.io/",
    "image": {
        "@type": "ImageObject",
        "url": "https://demo.ghost.io/content/images/2017/07/blog-cover.jpg",
        "width": 2000,
        "height": 666
    },
    "mainEntityOfPage": {
        "@type": "WebPage",
        "@id": "https://demo.ghost.io/"
    },
    "description": "The professional publishing platform"
    }
    </script>

    <meta name="generator" content="Halo 0.0.7" />
    <link rel="alternate" type="application/rss+xml" title="${options.blog_title}" href="${options.blog_url}/feed.xml" />

</head>
<body class="${body_class}">

    <div class="site-wrapper">

        <#-- All the main content gets inserted here, index.hbs, post.hbs, etc -->
        <#nested >

        <#-- The footer at the very bottom of the screen -->
        <footer class="site-footer outer">
            <div class="site-footer-content inner">
                <section class="copyright"><a href="${options.blog_url}">${options.blog_title}</a> &copy; ${options.blog_start}</section>
                <nav class="site-footer-nav">
                    <a href="${options.blog_url}">Latest Posts</a>
                    <a href="{{facebook_url @blog.facebook}}" target="_blank" rel="noopener">Facebook</a>
                    <a href="{{twitter_url @blog.twitter}}" target="_blank" rel="noopener">Twitter</a>
                    <a href="https://github.com/ruibaby/halo" target="_blank" rel="noopener">Halo</a>
                </nav>
            </div>
        </footer>

    </div>

    <#-- The big email subscribe modal content -->

    <script>
        var images = document.querySelectorAll('.kg-gallery-image img');
        images.forEach(function (image) {
            var container = image.closest('.kg-gallery-image');
            var width = image.attributes.width.value;
            var height = image.attributes.height.value;
            var ratio = width / height;
            container.style.flex = ratio + ' 1 0%';
        })
    </script>


    <#-- jQuery + Fitvids, which makes all video embeds responsive -->
    <script
        src="https://code.jquery.com/jquery-3.2.1.min.js"
        integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
        crossorigin="anonymous">
    </script>
    <script type="text/javascript" src="/casper/assets/js/jquery.fitvids.js"></script>
</#macro>

<#macro scripts>
    <#nested >
</body>
</html>
</#macro>
