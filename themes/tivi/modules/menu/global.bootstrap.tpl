<!-- BEGIN: submenu -->
<ul class="nav-dropdown nav-dropdown-simple">
    <!-- BEGIN: loop -->
    <li id="menu-item-748" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-748">
        <a href="{SUBMENU.link}" title="{SUBMENU.note}"{SUBMENU.target}>{SUBMENU.title_trim}</a>
        <!-- BEGIN: item --> {SUB} <!-- END: item --></li>
    </li>
    <!-- END: loop -->
</ul>
<!-- END: submenu -->

<!-- BEGIN: main -->
<div class="flex-col hide-for-medium flex-center">
    <ul class="nav header-nav header-bottom-nav nav-center nav-uppercase">
        <li id="menu-item" class="menu-item menu-item-home">
            <a href="{THEME_SITE_HREF}" class="nav-top-link">{LANG.Home}</a>
        </li>
        <!-- BEGIN: top_menu -->
        <li {TOP_MENU.current} id="menu-item" class="menu-item">
            <a href="{TOP_MENU.link}" class="nav-top-link" title="{TOP_MENU.note}"{TOP_MENU.target}>
                <!-- BEGIN: icon -->
                <img src="{TOP_MENU.icon}" alt="{TOP_MENU.note}" />&nbsp; <!-- END: icon --> {TOP_MENU.title_trim}
                <!-- BEGIN: has_sub --> <i class="icon-angle-down"></i>
                <!-- END: has_sub -->
            </a>
            <!-- BEGIN: sub --> {SUB} <!-- END: sub -->
        </li>
        <!-- END: top_menu -->

    </ul>
</div>

<!-- END: main -->
