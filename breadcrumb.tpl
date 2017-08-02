{if $core.page.breadcrumb|count}
	<div class="breadcrumbs">
		<div class="container-fluid">
			<ol class="breadcrumb" xmlns:v="http://rdf.data-vocabulary.org/#">
				{foreach $core.page.breadcrumb as $entry}
					{if $entry.url && !$entry@last}
						<li typeof="v:Breadcrumb">
							<a href="{$entry.url}"{if !empty($entry.no_follow) && $entry.no_follow} rel="nofollow"{/if} rel="v:url" property="v:title">{$entry.caption}</a>
						</li>
					{else}
						<li class="active">{$entry.caption}</li>
					{/if}
				{/foreach}
			</ol>

			{if isset($core.page.info.actions)}
				<div class="action-buttons">
					{section action $core.page.info.actions max=2}
						<a href="{$core.page.info.actions[action].url}" class="btn btn-xs {if isset($core.page.info.actions[action].classes)} {$core.page.info.actions[action].classes}{else}btn-success{/if}"><span class="fa fa-{$core.page.info.actions[action].icon}"></span> {$core.page.info.actions[action].title}</a> 
					{/section}

					{if count($core.page.info.actions) > 2}
						<a class="btn btn-xs dropdown-toggle" data-toggle="dropdown" href="#">
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu pull-right">
							{section action $core.page.info.actions start=2}
								{if !empty($core.page.info.actions[action].divider) && $core.page.info.actions[action].divider == '1'}
									<li class="divider"></li>
								{/if}
								<li>
									<a href="{$core.page.info.actions[action].url}"{if isset($core.page.info.actions[action].classes)} class="{$core.page.info.actions[action].classes}{/if}"><i class="{$core.page.info.actions[action].icon}"></i> {$core.page.info.actions[action].title}</a>
								</li>
							{/section}
						</ul>
					{/if}
				</div>
			{/if}
		</div>
	</div>
{/if}