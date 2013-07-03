
<!--
        order_form.tpl
        
        Copyright 2012 Жлобенцев Владимир <dnclive@gmail.com>
        
        Форма работы с заказами.
-->
<div style="
			top:-50%;
			overflow: hidden;
			width: 40%;
			
			background: white;
			margin: 0 auto;
			-moz-box-shadow: 0 0 10px rgba(0,0,0,0.5);
			-webkit-box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
			box-shadow: 0 0 100px 0px black;
			border-radius: 10px;">
	<div>
		<div class="popup_caption_div">
			<div class="div_right">
				<div 	class="red_btn_div btn_div btn_close_div popup_close_btn"
						data-josi-ev-resp="click"
						data-josi-kvl-str="f:popup.close^node_class_query:.popup_div_1_1">
					<div>
						&nbspX&nbsp
					</div>
				</div>
			</div>
		</div>

		<div class="josi_store_div" style="width: 100%;height: 60%;">
			<div class="josi_store_main_div">
				
				<div class="josi_store_get_div status_form div_left" style="width: 100%;height: 100%;">
					
					<!--Результат замера-->
					[[
						f:tpl
						^
						tpl_path:			tpl/order/form/form_item_list.tpl&
						node_class_query:	&
						rooted:				true&
						parse_arr:			false&
						tab_key:			tab_status&
						label:				Результат&
						val_key:			form.[[f:kvl_1_mix_val^mix_key:service_name]]
											.status_name&
						label_w:			25&
						val_w:				60
					]]

					<div style="height: 10%;overflow: hidden;"></div>

					<!--Комментарий-->
					[[
						f:tpl
						^
						tpl_path:			tpl/order/form/form_item_text_val_3.tpl&
						node_class_query:	&
						rooted:				true&
						parse_arr:			false&
						label:				Причина&
						val_key:			form.[[f:kvl_1_mix_val^mix_key:service_name]].reason&
						label_w:			25&
						val_w:				60&
						val_h:				100px
					]]
					
					<div style="height: 30%;overflow: hidden;"></div>
					
					<div 	class="div_left"
							style="width:100%">
						<div 	class="gray_btn_div btn_div search_btn"
								style="width: 30%;float: left;"
								data-josi-ev-resp="click"
								data-josi-ev-stop="true"
								data-josi-context-kvl-str="[[f:kvl_1_mix_str]]"
								data-josi-kvl-str="f:waiter_show>
								f:form_popup_list_hide>
								f:struct_drop^struct_res_key:struct_put_arr.tab_org_unit>
								f:clear_node^class_name:.josi_store_item_arr_div>
							
								f:res_struct_req^req_res_name:res/where/tab_org_unit&place_from:tab_org_unit&place_to:where.tab_org_unit&replace:false>
								
								f:fill_item_by_form_val_arr^class_name:.josi_store_get_div&struct_key:where.tab_org_unit.0>
								
								f:josi_store_trans^place_to:struct_get_arr.tab_org_unit&get_dot_key:where.tab_org_unit&replace:true>
								f:inject_item_if_empty^if_empty:struct_get_arr.tab_org_unit.0.tab_order.0&place_to:struct_put_arr.tab_org_unit&place_from:tab_org_unit&req_res_name:res/item/tab_org_unit>
								
								f:tpl_struct_arr^tpl_path:tpl/order_item_list.tpl&node_class_query:.josi_store_item_arr_div&struct_res_key:struct_get_arr.tab_org_unit.0.tab_order&replace:true&append:false>
								
								f:item_list_alt^item_class_query:.josi_store_item_div&alt_class:josi_store_item_div_alt>
								f:fill_item_by_form_val_arr^class_name:.josi_store_get_div&struct_key:struct_put_arr.tab_org_unit.0>
								
								f:item_list_alt^item_class_query:.josi_store_item_div&alt_class:josi_store_item_div_alt>
								f:tpl_struct_arr^tpl_path:tpl/order_new_item.tpl&node_class_query:.josi_store_item_arr_div&struct_res_key:struct_put_arr.tab_org_unit.0.tab_order&replace:false&append:true>
								
								f:waiter_hide">
							<div class="btn_label">
								Отмена
							</div>
						</div>
						<div 	class="green_btn_div btn_div save_btn_"
								style="width: 30%;float: right;"
								data-josi-ev-resp="click"
								data-josi-context-kvl-str=
								"
									service_name:[[f:kvl_1_mix_val^mix_key:service_name]]&
									service_res_name:[[f:kvl_1_mix_val^mix_key:service_res_name]]&
									item_list_node_class_query:
									[[
										f:kvl_1_mix_val
										^
										mix_key:item_list_node_class_query&
										def_val:.josi_store_item_arr_div
									]]
								"
								data-josi-kvl-str=
								"
									f:waiter_show>
								
									f:form_popup_list_hide^popup_class_name:.popup_cmd_div>
								
									f:form_popup_list_hide^popup_class_name:.save_btn>
								
									f:node_visible^class_query:.search_btn>
								
								<!-- формируем запрос и отправляем данные на сервер 
									[[f:tpl^tpl_path:tpl/[[f:kvl_1_mix_val^mix_key:service_name]]/put_item.scl&drop_comment:true&context_res_key:struct_put_query_arr&node_class_query:]]
								-->
								
								
								<!--
									f:struct_drop^struct_res_key:form.[[f:kvl_1_mix_val^mix_key:service_name]]>
								
								<!-- формируем запрос на выборку что бы отобразить добавленный элемент и отправляем данные на сервер 
									[[f:tpl^tpl_path:tpl/[[f:kvl_1_mix_val^mix_key:service_name]]/get_item.scl&drop_comment:true&context_res_key:struct_get_query_arr&node_class_query:]]
								
								-->
								
								<!--удаляем связанных людей. нужно если заказ редактируется. временное решение-->
									{{f:tpl^page_path:tpl/zamer/drop_concerned_people.scl&drop_comment:true}}
								
								<!--создаем или отправляем измененный замер на сервер
								{{f:tpl^page_path:tpl/zamer/put_item.scl&drop_comment:true}}-->
								
								<!--формируем запрос и отправляем данные на сервер-->
									[[
										f:tpl
										^
										tpl_path:			tpl/[[f:kvl_1_mix_val^mix_key:service_name]]/put_item.scl&
										drop_comment:		true&
										context_res_key:	struct_put_query_arr&
										node_class_query:	&
										service_name:		zamer&
										service_res_name:	tab_zamer
									]]
								
								<!--берем сохраненную форму запроса-->
									f:struct_rel
									^
									place_from:			get_form.[[f:kvl_1_mix_val^mix_key:service_name]]&
									place_to:			form.[[f:kvl_1_mix_val^mix_key:service_name]]&
									replace:			true&
									copy:				true
								
									>
									
								<!--перепоказываем данные-->
									[[
										f:tpl
										^
										tpl_res:			&
										tpl_path:			tpl/
															[[f:kvl_1_mix_val^mix_key:service_name]]/
															get_item.scl&
										
										drop_comment:		false&
										context_res_key:	struct_get_query_arr&
										node_class_query:	&
										item_list_node_class_query:
										[[
											f:kvl_1_mix_val
											^
											mix_key:item_list_node_class_query&
											def_val:.josi_store_item_arr_div
										]]&
										service_name:		zamer&
										service_res_name:	tab_zamer
									]]
								
								
								
									f:popup.close^node_class_query:.popup_div_1_1>
								
									f:clear_node^class_name:.text_val>
								
									f:clear_node^class_name:.text_val_>
									
									f:clear_node^class_name:.text_val_dt>
								
									f:waiter_hide
								">
							<div class="btn_label">
								Сохранить
							</div>
						</div>
					</div>
					
					
				</div>
				
			</div>
		</div>
	</div>
</div>
