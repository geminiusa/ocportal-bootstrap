{+START,IF,{$NOT,{$VALUE_OPTION,no_frames}}}<div class="boxless_space global_side_panel">{+END}
	{MESSAGES}

	<form title="{!SHOUTBOX}" onsubmit="if (check_field_for_blankness(this.elements['shoutbox_message'],event)) { disable_button_just_clicked(this); return true; } return false;" target="_self" action="{URL*}" method="post">
		{$INSERT_SPAMMER_BLACKHOLE}

		<div>
			<p class="sr-only"><label for="shoutbox_message">{!MESSAGE}</label></p>
			<p class="constrain_field"><input autocomplete="off" value="" type="text" id="shoutbox_message" name="shoutbox_message" alt="{!MESSAGE}" class="form-control" /></p>
		</div>

		<p class="constrain_field">
			<input type="submit" value="{!SEND_MESSAGE}" class="btn btn-primary btn-block btn-send-message" />
		</p>
	</form>
{+START,IF,{$NOT,{$VALUE_OPTION,no_frames}}}</div>{+END}
