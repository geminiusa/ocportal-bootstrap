<div><img title="{+START,IF,{IS_LEADER}}{!ocf:MEMBER_LEADS_GROUP,{USERNAME*},{GROUP_NAME*}}{+END}{+START,IF,{$NOT,{IS_LEADER}}}{!ocf:MEMBER_IS_IN_GROUP,{USERNAME*},{GROUP_NAME*}}{+END}" alt="{+START,IF,{IS_LEADER}}{!ocf:MEMBER_LEADS_GROUP,{USERNAME*},{GROUP_NAME*}}{+END}{+START,IF,{$NOT,{IS_LEADER}}}{!ocf:MEMBER_IS_IN_GROUP,{USERNAME*},{GROUP_NAME*}}{+END}" src="{$IMG*,{IMG},1}" /></div>