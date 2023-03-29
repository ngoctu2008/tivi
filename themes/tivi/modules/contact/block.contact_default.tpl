<!-- BEGIN: main -->
<span class="visible-xs-inline-block"><a title="{LANG.contactUs}" class="pointer button" data-toggle="tip" data-target="#contactList" data-click="y"><em class="icon-old-phone icon-lg"></em><span class="hidden">{LANG.contactUs}</span></a></span>
<div id="contactList" class="content">
<h3 class="visible-xs-inline-block">{LANG.contactUs}</h3>
<!-- BEGIN: phone -->
<span style="font-size: 170%; color: #ff5252; font-weight:bold">
    <!-- BEGIN: item --><!-- BEGIN: comma --> - <!-- END: comma --><!-- BEGIN: href -->
    <a href="tel:{PHONE.href}"><!-- END: href -->{PHONE.number}<!-- BEGIN: href2 --></a><!-- END: href2 -->
    <!-- END: item -->
</span>
<!-- END: phone -->
<ul class="contactList">
<!-- BEGIN: email --><li><em class="fa fa-envelope"></em>&nbsp;<!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a href="{DEPARTMENT.emailhref}">{EMAIL}</a><!-- END: item --></li><!-- END: email -->
<!-- BEGIN: skype --><li><em class="fa fa-skype"></em>&nbsp;<!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a href="skype:{SKYPE.value}?call" title="{SKYPE.name}">{SKYPE.value}</a><!-- END: item --></li><!-- END: skype -->
<!-- BEGIN: viber --><li><em class="icon-viber"></em>&nbsp;<!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><span title="{VIBER.name}">{VIBER.value}</span><!-- END: item --></li><!-- END: viber -->i><!-- END: icq -->
<!-- BEGIN: whatsapp --><li><em class="fa fa-whatsapp"></em>&nbsp;<!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a data-android="intent://send/{WHATSAPP.value}#Intent;scheme=smsto;package=com.whatsapp;action=android.intent.action.SENDTO;end" title="{WHATSAPP.name}">{WHATSAPP.value}</a><!-- END: item --></li><!-- END: whatsapp -->
<!-- BEGIN: other --><li>{OTHER.name}:&nbsp; {OTHER.value}</li><!-- END: other -->
</ul>
</div>
<!-- END: main -->
