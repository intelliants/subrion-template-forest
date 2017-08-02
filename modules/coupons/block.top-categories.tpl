{if !empty($coupon_blocks.top_categories)}
	<ul class="cat-nav">
		{foreach $coupon_blocks.top_categories as $coupon_category}
			<li class="{if !empty($current_category) && $current_category.id == $coupon_category.id}active{/if}">{ia_url type='link' item='ccats' data=$coupon_category text="{$coupon_category.title}"} <span>{$coupon_category.num_all_coupons}</span></li>
		{/foreach}
	</ul>
{/if}