<div class="well well-pointstore_banners_upgrade"><div class="box_inner">
	<h2>{!UPGRADE_ACCOUNT}</h2>

	<p>
		{!BANNERS_D}
	</p>

	{+START,IF_NON_EMPTY,{UPGRADE_URL}}
		<ul class="list-inline">
			<li><a href="{UPGRADE_URL*}">{!UPGRADE_ACCOUNT}</a></li>
		</ul>
	{+END}
</div></div>

