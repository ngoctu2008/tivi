
<footer id="footer" class="footer-wrapper footer absolute-footer dark">
    <section class="section sec_footer dark">
        <div class="bg section-bg fill bg-fill  bg-loaded">
        </div>
        <div class="section-content relative">
            [COMPANY_INFO]
        </div>
    </section>
</footer>

<!-- Button callnow -->
<a href="tel:0982155246" class="hotlinemp" rel="nofollow">
    <div class="mypage-alo-phone" style="">
        <div class="animated infinite zoomIn mypage-alo-ph-circle">
        </div>
        <div class="animated infinite pulse mypage-alo-ph-circle-fill">
        </div>
        <div class="animated infinite tada mypage-alo-ph-img-circle">
        </div>
    </div>
</a>


{ADMINTOOLBAR}
    <!-- </div>
</div> -->
<!-- Help window -->
<div id="winHelp">
    <div class="winHelp">
        <div class="clearfix">
            <div class="logo-small padding"></div>
            [MENU_FOOTER]
            [COMPANY_INFO]
        </div>
    </div>
</div>

<!-- SiteModal Required!!! -->
<div id="sitemodal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <em class="fa fa-spinner fa-spin">&nbsp;</em>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- Search form -->
<div id="headerSearch" class="hidden">
<div class="headerSearch container-fluid margin-bottom">
    <div class="input-group">
        <input type="text" onkeypress="headerSearchKeypress(event);" class="form-control" maxlength="{NV_MAX_SEARCH_LENGTH}" placeholder="{LANG.search}...">
        <span class="input-group-btn"><button type="button" onclick="headerSearchSubmit(this);" class="btn btn-info" data-url="{THEME_SEARCH_URL}" data-minlength="{NV_MIN_SEARCH_LENGTH}" data-click="y"><em class="fa fa-search fa-lg"></em></button></span>
    </div>
</div>
</div>
