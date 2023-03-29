<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}
<main id="main" class="">
	<div id="content" role="main" class="content-area">
		<section class="section sec_about bg_242">
				<div class="section-content relative">
					[THEME_ERROR_INFO]
					<div class="row">
						<div class="col-md-24">
							[TOP]
							{MODULE_CONTENT}
							[BOTTOM]
						</div>
					</div>
					<div class="gap-element" style="display:block; height:auto; padding-top:30px">
						[FOOTER]
					</div>
				</div>
		</section>
	</div>
</main>
{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->
