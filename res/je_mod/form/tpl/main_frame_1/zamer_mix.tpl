<!--
        form.tpl
        
        Copyright 2011 Жлобенцев Владимир <dnclive@gmail.com>
        
        шаблон формы расчета стоимости   
-->

<div style="overflow:hidden;padding: 10px;border-radius: 10px;background_:#ff9" class="pay_calc_form">
	<div class="">
		
		<!--Окна-->
		[[f:tpl^tpl_path:tpl/order/form/form_item_text_val_input.tpl&node_class_query:&rooted:true&parse_arr:false&label:Окна&val_key:form.zamer.count_ok&label_w:60&val_w:30]]
		
		<!--Балк. Двери-->
		[[f:tpl^tpl_path:tpl/order/form/form_item_text_val_input.tpl&node_class_query:&rooted:true&parse_arr:false&label:Балк. двери&val_key:form.zamer.count_bdv&label_w:60&val_w:30]]
		
		<!--Двери-->
		[[f:tpl^tpl_path:tpl/order/form/form_item_text_val_input.tpl&node_class_query:&rooted:true&parse_arr:false&label:Двери&val_key:form.zamer.count_dv&label_w:60&val_w:30]]
		
		<!--Балконы-->
		[[f:tpl^tpl_path:tpl/order/form/form_item_text_val_input.tpl&node_class_query:&rooted:true&parse_arr:false&label:Балконы&val_key:form.zamer.count_bal&label_w:60&val_w:30]]
		
		<!--Лоджи-->
		[[f:tpl^tpl_path:tpl/order/form/form_item_text_val_input.tpl&node_class_query:&rooted:true&parse_arr:false&label:Лоджии&val_key:form.zamer.count_lodj&label_w:60&val_w:30]]
		
		<!--Доп. мат.-->
		[[f:tpl^tpl_path:tpl/order/form/form_item_text_val_input.tpl&node_class_query:&rooted:true&parse_arr:false&label:Балк. двери&val_key:form.zamer.count_dop&label_w:60&val_w:30]]
		
		<!--Прочее-->
		[[f:tpl^tpl_path:tpl/order/form/form_item_text_val_input.tpl&node_class_query:&rooted:true&parse_arr:false&label:Прочее&val_key:form.zamer.count_other&label_w:60&val_w:30]]

	</div>
	<div class="width:100%;overflow:hidden">
		<div 	class="green_btn_div btn_div payments_by_order"
				style_="border: 3px solid white;background:white"
				data-josi-ev-stop=true 
				data-josi-ev-resp="click"
				data-josi-kvl-str="f:waiter_show>

				f:form_popup_list_hide>
				
				f:ev_emit^ev_type:change_val>

				f:waiter_hide">
			<div class="btn_label ">
				Ок
			</div>
		</div>
	</div>
</div>
	
