<#macro default title,keyword,desc,canonical,body_class>
<#import "/common/macro/common_macro.ftl" as common>
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
    <link rel="stylesheet" type="text/css" href="/${themeName}/assets/built/screen.css" />

    <#-- This tag outputs SEO meta+structured data and other important settings -->
    <meta name="keywords" content="${keyword}" />
    <meta name="description" content="${desc}" />
    <@common.verification />
    <@common.favicon />
    <link rel="canonical" href="${canonical}" />
    <meta name="referrer" content="no-referrer-when-downgrade" />

    <meta property="og:site_name" content="${title}" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="${title}" />
    <meta property="og:description" content="${desc}" />
    <meta property="og:url" content="${canonical}" />
    <meta property="og:image" content="${options.casper_general_cover!'/${themeName}/assets/images/blog-cover.jpg'}" />
    <meta property="article:publisher" content="https://www.facebook.com/ghost" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content="${title}" />
    <meta name="twitter:description" content="${desc}" />
    <meta name="twitter:url" content="${canonical}" />
    <meta name="twitter:image" content="${options.casper_general_cover!'/${themeName}/assets/images/blog-cover.jpg'}" />
    <meta name="twitter:site" content="@tryghost" />
    <meta property="og:image:width" content="2000" />
    <meta property="og:image:height" content="666" />
    <meta name="generator" content="Halo 0.0.7" />
    <link rel="alternate" type="application/rss+xml" title="${options.blog_title}" href="${options.blog_url}/feed.xml" />

    <#if post??>
    <link rel="stylesheet" type="text/css" href="/${themeName}/assets/prism/css/prism-${options.casper_general_code_pretty!'Default'}.css" />
    <script type="text/javascript" src="/${themeName}/assets/prism/js/prism.js"></script>
    </#if>

</head>
<body class="${body_class}">

    <div class="site-wrapper">

        <#-- All the main content gets inserted here, index.hbs, post.hbs, etc -->
        <#nested >
        <#-- The footer at the very bottom of the screen -->
        <#assign current="${.now}">
        <footer class="site-footer outer">
            <div class="site-footer-content inner">
                <section class="copyright">
                    <a href="${options.blog_url}">${options.blog_title}</a> &copy; ${current?substring(0,4)}
                    <@common.footer_info />
                </section>
                <nav class="site-footer-nav">
                    <a href="${options.blog_url}">Latest Posts</a>
                    <a href="https://www.facebook.com/ghost" target="_blank" rel="noopener">Facebook</a>
                    <a href="https://twitter.com/tryghost" target="_blank" rel="noopener">Twitter</a>
                    <a href="https://ghost.org" target="_blank" rel="noopener">Ghost</a>
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
        src="//cdnjs.loli.net/ajax/libs/jquery/3.2.1/jquery.min.js"
        integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
        crossorigin="anonymous">
    </script>
    <script type="text/javascript" src="/${themeName}/assets/built/jquery.fitvids.js"></script>
</#macro>

<#macro scripts>
    <#nested >
    <@common.statistics />
</body>
</html>
</#macro>
