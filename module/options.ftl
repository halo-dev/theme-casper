<#import "/common/macro/theme_option_marco.ftl" as option>
<@option.head />
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6 themeImg">
            <img src="/${themeDir}/screenshot.png" style="width: 100%;">
        </div>
        <div class="col-md-6 themeSetting">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#general" data-toggle="tab">基本设置</a>
                    </li>
                    <li>
                        <a href="#sns" data-toggle="tab">社交资料</a>
                    </li>
                    <li>
                        <a href="#about" data-toggle="tab">关于</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <!-- 基本设置 -->
                    <div class="tab-pane active" id="general">
                        <form method="post" class="form-horizontal" id="casperGeneralOptions">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="casperGeneralCover" class="col-sm-4 control-label">首页背景图：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="casperGeneralCover" name="casper_general_cover" value="${options.casper_general_cover!'/casper/assets/images/blog-cover.jpg'}" >
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button" onclick="openAttach('casperGeneralCover')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="casperGeneralLinksCover" class="col-sm-4 control-label">友情链接背景图：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="casperGeneralLinksCover" name="casper_general_links_cover" value="${options.casper_general_links_cover!}" >
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button" onclick="openAttach('casperGeneralLinksCover')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="casperGeneralArchivesCover" class="col-sm-4 control-label">归档背景图：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="casperGeneralArchivesCover" name="casper_general_archives_cover" value="${options.casper_general_archives_cover!}" >
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button" onclick="openAttach('casperGeneralArchivesCover')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="casperGeneralPostCopyright" class="col-sm-4 control-label">文章版权：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="casper_general_post_copyright" id="casperGeneralPostCopyright" value="true" ${((options.casper_general_post_copyright!'true')=='true')?string('checked','')}> 显示
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="casper_general_post_copyright" id="casperGeneralPostCopyright" value="false" ${((options.casper_general_post_copyright!)=='false')?string('checked','')}> 隐藏
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="casperGeneralLocation" class="col-sm-4 control-label">所在地：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="casperGeneralLocation" name="casper_general_location" value="${options.casper_general_location!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="casperGeneralCodePretty" class="col-sm-4 control-label">代码高亮：</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="casperGeneralCodePretty" name="casper_general_code_pretty">
                                            <option value="Default" ${((options.casper_general_code_pretty!'Default')=='Default')?string('selected','')}>Default</option>
                                            <option value="Coy" ${((options.casper_general_code_pretty!)=='Coy')?string('selected','')}>Coy</option>
                                            <option value="Dark" ${((options.casper_general_code_pretty!)=='Dark')?string('selected','')}>Dark</option>
                                            <option value="Okaidia" ${((options.casper_general_code_pretty!)=='Okaidia')?string('selected','')}>Okaidia</option>
                                            <option value="Solarized Light" ${((options.casper_general_code_pretty!)=='Solarized Light')?string('selected','')}>Solarized Light</option>
                                            <option value="Tomorrow Night" ${((options.casper_general_code_pretty!)=='Tomorrow Night')?string('selected','')}>Tomorrow Night</option>
                                            <option value="Twilight" ${((options.casper_general_code_pretty!)=='Twilight')?string('selected','')}>Twilight</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="button" class="btn btn-primary btn-sm pull-right" onclick="saveThemeOptions('casperGeneralOptions')">保存设置</button>
                            </div>
                        </form>
                    </div>
                    <!--社交资料-->
                    <div class="tab-pane" id="sns">
                        <form method="post" class="form-horizontal" id="casperSnsOptions">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="casperSnsRss" class="col-sm-4 control-label">RSS：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="casper_sns_rss" id="casperSnsRss" value="true" ${((options.casper_sns_rss!'true')=='true')?string('checked','')}> 显示
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="casper_sns_rss" id="casperSnsRss" value="false" ${((options.casper_sns_rss!)=='false')?string('checked','')}> 隐藏
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="casperSnsTwitter" class="col-sm-4 control-label">Twitter：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="casperSnsTwitter" name="casper_sns_twitter" value="${options.casper_sns_twitter!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="casperSnsFacebook" class="col-sm-4 control-label">Facebook：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="casperSnsFacebook" name="casper_sns_facebook" value="${options.casper_sns_facebook!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="casperSnsInstagram" class="col-sm-4 control-label">Instagram：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="casperSnsInstagram" name="casper_sns_instagram" value="${options.casper_sns_instagram!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="casperSnsDribbble" class="col-sm-4 control-label">Dribbble：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="casperSnsDribbble" name="casper_sns_dribbble" value="${options.casper_sns_dribbble!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="casperSnsWeibo" class="col-sm-4 control-label">Weibo：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="casperSnsWeibo" name="casper_sns_weibo" value="${options.casper_sns_weibo!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="casperSnsEmail" class="col-sm-4 control-label">Email：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="casperSnsEmail" name="casper_sns_email" value="${options.casper_sns_email!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="casperSnsGithub" class="col-sm-4 control-label">Github：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="casperSnsGithub" name="casper_sns_github" value="${options.casper_sns_github!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="casperSnsQQ" class="col-sm-4 control-label">QQ：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="casperSnsQQ" name="casper_sns_qq" value="${options.casper_sns_qq!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="casperSnsTelegram" class="col-sm-4 control-label">Telegram：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="casperSnsTelegram" name="casper_sns_telegram" value="${options.casper_sns_telegram!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="casperSnsCnBLog" class="col-sm-4 control-label">博客园：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="casperSnsCnBLog" name="casper_sns_cnblog" value="${options.casper_sns_cnblog!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="casperSnsStackoverflow" class="col-sm-4 control-label">Stack Overflow：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="casperSnsStackoverflow" name="casper_sns_stackoverflow" value="${options.casper_sns_stackoverflow!}" >
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="button" class="btn btn-primary btn-sm pull-right" onclick="saveThemeOptions('casperSnsOptions')">保存设置</button>
                            </div>
                        </form>
                    </div>
                    <!-- 关于该主题 -->
                    <div class="tab-pane" id="about">
                        <div class="box box-widget widget-user-2">
                            <div class="widget-user-header bg-blue">
                                <div class="widget-user-image">
                                    <img class="img-circle" src="https://avatars1.githubusercontent.com/u/2178663?s=200&v=4" alt="User Avatar">
                                </div>
                                <h3 class="widget-user-username">Ghost</h3>
                                <h5 class="widget-user-desc">The default theme for Ghost</h5>
                            </div>
                            <div class="box-footer no-padding">
                                <ul class="nav nav-stacked">
                                    <li><a target="_blank" href="https://github.com/TryGhost">作者主页</a></li>
                                    <li><a target="_blank" href="https://github.com/TryGhost/Casper">原主题地址</a></li>
                                </ul>
                            </div>
							<#if hasUpdate>
                            <div class="box-footer">
                                <button type="button" class="btn btn-warning btn-sm pull-right" data-loading-text="更新中..." onclick="updateTheme('${themeDir}',this)">更新主题</button>
                            </div>
                            </#if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<@option.import_js />
