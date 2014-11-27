<section class="panel panel-default panel-block_side_news">
	{+START,IF_NON_EMPTY,{TITLE}}<div class="panel-heading"><h3 class="panel-title">{TITLE}</h3></div>{+END}
	<div class="panel-body">
	{+START,IF_EMPTY,{CONTENT}}
		<p class="nothing_here">{$?,{BLOG},{!BLOG_NO_NEWS},{!NO_NEWS}}</p>
	{+END}
	{+START,IF_NON_EMPTY,{CONTENT}}
		{CONTENT}
	{+END}

	{+START,IF_NON_EMPTY,{ARCHIVE_URL}{SUBMIT_URL}}
		<ul class="list-inline">
			{+START,IF_NON_EMPTY,{ARCHIVE_URL}}
				<li><a rel="archives" href="{ARCHIVE_URL*}">{!VIEW_ARCHIVE}</a></li>
			{+END}
			{+START,IF_NON_EMPTY,{SUBMIT_URL}}
				<li><a rel="add" href="{SUBMIT_URL*}">{$?,{BLOG},{!ADD_NEWS_BLOG},{!ADD_NEWS}}</a></li>
			{+END}
		</ul>
	{+END}
	</div>
</section>
