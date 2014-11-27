{TITLE}

{$REQUIRE_CSS,messages}

{+START,IF,{$NEQ,{TEXT},{!MISSING_RESOURCE}}}
	{+START,IF_PASSED,WEBSERVICE_RESULT}
		<div class="alert alert-danger alert-warn-screen">
			<i class="fa fa-warning fa-lg"></i> {TEXT*}
		</div>

		<div class="ssm_warn expanded_advice">
			<h2>Expanded advice</h2>

			{WEBSERVICE_RESULT}
		</div>
	{+END}
	{+START,IF_NON_PASSED,WEBSERVICE_RESULT}
		<div class="site_special_message ssm_warn" role="alert">
			<div class="site_special_message_inner">
				<div class="alert alert-danger alert-warn-screen">
					<i class="fa fa-warning fa-lg"></i> {TEXT*}
				</div>
			</div>
		</div>
	{+END}
{+END}
{+START,IF,{$EQ,{TEXT},{!MISSING_RESOURCE}}}
	<p class="alert alert-danger alert-dismissible" role="error"><i class="fa fa-warning fa-lg"></i> {!MISSING_RESOURCE}</p>

	<h2>{!SITE_MAP}</h2>

	{$BLOCK,block=main_sitemap,quick_cache=1}

	{+START,IF,{$ADDON_INSTALLED,search}}
		<h2>{!SEARCH}</h2>

		{$BLOCK,block=main_search,failsafe=1}
	{+END}
{+END}

{+START,IF,{PROVIDE_BACK}}{+START,IF,{$JS_ON}}{+START,IF,{$NOT,{$RUNNING_SCRIPT,preview}}}
	<p class="back_button">
		<a href="#" onclick="history.back(); return false;"><img title="{!_NEXT_ITEM_BACK}" alt="{!_NEXT_ITEM_BACK}" src="{$IMG*,bigicons/back}" /></a>
	</p>
{+END}{+END}{+END}

<script>	add_event_listener_abstract(window,'load',function () {
		if ((typeof window.trigger_resize!='undefined') && (window.top!=window)) trigger_resize();
	} );
</script>
