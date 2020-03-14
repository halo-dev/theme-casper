<#if settings.post_copyright!true>
<hr />
<blockquote style="font-size: 2rem;">
    <ul class="post-copyright" style="margin: 0">
        <li class="post-copyright-author" style="margin: 0">
            <strong>本文作者：</strong>
            ${user.nickname!}
        </li>
        <li class="post-copyright-link" style="margin: 0">
            <strong>本文链接：</strong>
            <a href="${post.fullPath!}" title="${post.title!}">${post.fullPath!}</a>
        </li>
        <li class="post-copyright-license" style="margin: 0">
            <strong>版权声明：</strong>
            本博客所有文章除特别声明外，均采用<a href="https://creativecommons.org/licenses/by-nc-sa/3.0/" rel="external nofollow" target="_blank">CC BY-NC-SA 3.0</a> 许可协议。转载请注明出处！
        </li>
    </ul>
</blockquote>
</#if>
