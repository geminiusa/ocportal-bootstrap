<div class="pointstore_item">
	<div class="well well-pointstore_highlight_name"><div class="box_inner">
		<h2>{!NAME_HIGHLIGHTING}</h2>

		<p>
			{!NAME_HIGHLIGHTING_DESCRIPTION}
		</p>

		{+START,IF_NON_EMPTY,{NEXT_URL}}
			<ul class="list-inline">
				<li><a title="{!ENTER}: {!NAME_HIGHLIGHTING}" href="{NEXT_URL*}">{!ENTER}</a></li>
			</ul>
		{+END}
	</div></div>
</div>
