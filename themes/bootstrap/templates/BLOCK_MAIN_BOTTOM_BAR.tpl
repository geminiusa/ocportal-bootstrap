<section class="panel panel-default panel-block_main_bottom_bar pale_box">
	<div class="panel-heading">
		<h2 class="panel-title">{!_STATISTICS}</h2>
	</div>

	<div class="panel-body">
		<table summary="{!MAP_TABLE}" class="table ocf-stats-table">
			{+START,IF,{$NOT,{$MOBILE}}}
				<colgroup>
					<col class="ocf_bottom_bar_left_column">
					<col class="ocf_bottom_bar_right_column">
				</colgroup>
			{+END}

			<tbody>
				{+START,IF_NON_EMPTY,{USERS_ONLINE}}
					<tr>
						<th class="de_th ocf_stats_usersonline_1">
							<p class="field_name">{!USERS_ONLINE}:</p>
							{+START,IF_NON_EMPTY,{USERS_ONLINE_URL}}<p class="associated-link associated_links_block_group"><a href="{USERS_ONLINE_URL*}" title="{!USERS_ONLINE}">{!DETAILS}</a></p>{+END}
						</th>

						<td class="ocf_stats_usersonline_2">
							<p class="users_online ocf_group_colours">{USERS_ONLINE}</p>

							{+START,IF_NON_EMPTY,{GROUPS}}
								<div class="usergroups ocf_group_colours">
									<p>
										<span class="field_name">{!USERGROUPS}:</span>
									</p>
									<ul class="list-inline">
										{+START,LOOP,GROUPS}
											<li><a class="{GCOLOUR*}" href="{$PAGE_LINK*,_SEARCH:groups:view:{GID}}">{GTITLE*}</a></li>
										{+END}
									</ul>
								</div>
							{+END}
						</td>
					</tr>
				{+END}

				<tr>
					<th class="de_th ocf_stats_main_1">
						<span class="field_name">{!FORUM_STATISTICS}:</span>
					</th>

					<td class="ocf_stats_main_2">
						<ul class="meta-details-list">
							<li>{!FORUM_NUM_TOPICS,{NUM_TOPICS*}}, {!FORUM_NUM_POSTS,{NUM_POSTS*}}, {!FORUM_NUM_MEMBERS,{NUM_MEMBERS*}}</li>
							<li>{!NEWEST_MEMBER,<a href="{NEWEST_MEMBER_PROFILE_URL*}">{NEWEST_MEMBER_USERNAME*}</a>}</li>
						</ul>

						{BIRTHDAYS}
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</section>
