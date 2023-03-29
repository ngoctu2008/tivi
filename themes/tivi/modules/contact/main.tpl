<!-- BEGIN: main -->


    <!-- BEGIN: bodytext -->
    <div class="well">{CONTENT.bodytext}</div>
    <!-- END: bodytext -->
    <div style="display:flex;">
        <div class="col medium-12 small-12 large-5" data-animate="fadeInLeft" data-animated="true">
            <!-- BEGIN: dep -->
            <div class="col-inner">
                <h1> <span style="color: #3d50b6; text-transform: uppercase;"> {DEP.full_name} </span></h1>
                <!-- BEGIN: image -->
                <div class="margin-bottom"><img src="{DEP.image}" srcset="{DEP.srcset}" class="img-thumbnail" alt="{DEP.full_name}" /></div>
                <!-- END: image -->
                <!-- BEGIN: note -->
                <div class="margin-bottom">{DEP.note}</div>
                <!-- END: note -->
                <!-- BEGIN: address -->
                <p>
                    <em class="fa fa-map-marker fa-horizon margin-right"></em>{LANG.address}: <span>{DEP.address}</span>
                </p>
                <!-- END: address -->


                <!-- BEGIN: phone -->
                <div class="icon-box featured-box icon-box-left text-left">
                    <em class="fa fa-phone fa-horizon margin-right"></em>{LANG.phone}: <span>
                        <!-- BEGIN: item -->
                        <!-- BEGIN: comma -->&nbsp; <!-- END: comma -->
                        <!-- BEGIN: href -->
                        <a href="tel:{PHONE.href}" class="black">
                            <!-- END: href -->{PHONE.number}<!-- BEGIN: href2 -->
                    </a>
                    <!-- END: href2 -->
                        <!-- END: item -->
                    </span>
                </div>
                <!-- END: phone -->
                <!-- BEGIN: fax -->
                <div class="icon-box featured-box icon-box-left text-left">
                    <em class="fa fa-fax fa-horizon margin-right"></em>{LANG.fax}: <span>{DEP.fax}</span>
                </div>
                <!-- END: fax -->
                <!-- BEGIN: email -->
                <div class="icon-box featured-box icon-box-left text-left">
                    <em class="fa fa-envelope fa-horizon margin-right"></em>{LANG.email}: <span>
                        <!-- BEGIN: item -->
                        <!-- BEGIN: comma -->&nbsp; <!-- END: comma -->
                        <a href="mailto:{EMAIL}" class="black">{EMAIL}</a>
                    <!-- END: item -->
                    </span>
                </div>
                <!-- END: email -->

                <!-- BEGIN: viber -->
                <div class="icon-box featured-box icon-box-left text-left">
                    <em class="icon-viber fa-horizon margin-right"></em>{VIBER.name}: <span>
                        <!-- BEGIN: item -->
                        <!-- BEGIN: comma -->&nbsp; <!-- END: comma -->{VIBER.value}<!-- END: item -->
                    </span>
                </div>
                <!-- END: viber -->
                <!-- BEGIN: other -->
                <div class="icon-box featured-box icon-box-left text-left">
                    <!-- BEGIN: text -->
                    <span>{OTHER.name}: </span> <span>{OTHER.value}</span>
                    <!-- END: text -->
                    <!-- BEGIN: url -->
                    <em class="fa fa-globe fa-horizon margin-right"></em>{OTHER.name}: <span><a href="{OTHER.value}" title="">{OTHER.value}</a></span>
                    <!-- END: url -->
                </div>
                <!-- END: other -->
            </div>
            <!-- END: dep -->
        </div>
        <div class="col medium-12 small-12 large-7">
            {FORM}
        </div>
        </div>

<!-- END: main -->
