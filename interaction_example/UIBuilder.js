//CORE UI WIDGET
var UIWidget = function (container, data, character_data){
	//root vars
	this.container = container || null;//the root html element
	this.data = data || null;//we should be able to reinit at any time - this is a json object
	this.character_data = character_data || null;
	//panels
	this.display_panel = null;
	this.edit_panel = null;

	//widget instances
	this.input_widget = null;//this will be an instance of UIInputField

	//generic vars
	this.mode = 'display';
	this.modified_value = null;
	this.calculated_bonus = null;

	//ui vars
	this.click_count = 0;

	if (this.container && this.data) {
		this.init()
	};
}

UIWidget.prototype.init = function(){
	//get html elements
	this.display_panel = this.container.querySelector('.display_layer')
	this.edit_panel = this.container.querySelector('.edit_layer')
	this.input_field = this.container.querySelector('.input_field')
	//hack to easily catch input field change,but still keep scope
	this.input_widget = new UIInputField(this.container.querySelector('.input_field'), function(){
		//sae to data source for syncing as needed
		this.data.value = this.input_field.value;
		//turn off input widget
		this.input_widget.deactivate()
		//save data
		this.save_data(true)
		//toggle_display mode
		this.toggle_mode()
	}.bind(this))
	//get data chunks
	this.edit_panel.querySelector('.input_field').value = this.data.value

	//if we have custom formulas for caluclating binsues and modifiers, set them
	if (this.data.meta && this.data.meta.bonuses) {
		this.calculate_bonus = this.data.meta.bonuses
	};
	if (this.data.meta && this.data.meta.modifiers) {
		this.modify_input = this.data.meta.modifiers
	};

	this.update_display();

	this.activate();
}


UIWidget.prototype.save_data = function(){
	//save data attributes
	//save data to local storage
	//save data to web
}

//switches GUI to edit mode or display mode
//will activate interaction as needed
UIWidget.prototype.toggle_mode = function(){

	if (this.container.dataset.mode == 'display') {
		//change mode attribute
		this.container.dataset.mode = 'edit'
		//animate to new mode
		TweenMax.to(this.display_panel, .4, { rotation:-900, scale:3, alpha:0})
		//disable unused things
		//trigger any setup needed for mode
		this.input_widget.activate()
	}else{
		this.container.dataset.mode = 'display'

		TweenMax.to(this.display_panel, .3, { rotation:0, scale:1, alpha:1, onComplete:this.update_display, onCompleteScope:this})
	};
}

UIWidget.prototype.update_display = function(){
	//calculate modifiers
	this.modified_value = this.modify_input(this.data.value, this.character_data)
	//claculate bonuses
	this.calculated_bonus = this.calculate_bonus(this.data.value)
	//animate new values
	this.display_panel.querySelector('.value').innerHTML = this.modified_value
	this.display_panel.querySelector('.bonus').innerHTML = this.calculated_bonus.prettyPrint()
	this.display_panel.querySelector('.abbreviation').innerHTML = this.data.abbreviation
	
}

UIWidget.prototype.calculate_bonus = function(input){
	return 0
}

UIWidget.prototype.modify_input = function(input, character_data){
	return input
}

UIWidget.prototype.was_clicked = function(){
	console.log(this)
	this.click_count++;
	if (this.click_count >= 2) {
		this.click_count = 0;
		this.toggle_mode()
	};
	setTimeout(function(){
		console.log(this.click_count)
		this.click_count = 0;
		console.log(this.click_count)
	}.bind(this), 300)
}

UIWidget.prototype.activate = function(){
	this.container.onclick = this.was_clicked.bind(this)
}

UIWidget.prototype.deactivate = function(){
	this.container.onclick = null;
}




//ALL INPUT FIELDS SHOULD BEHAVE THE SAME WAY
//in the future we will make custom Inpur widgets for different types,
//like number ranges, text input, etc
UIInputField = function(container, completion_callback){
	this.container = container || null;//keep reference to html
	this.callback = completion_callback || null;//this callback exepects the final value

	this.input_timeout = null;//used for tracking when user has stopped changing input field
	this.debounce_time = 100;
	this.max_wait_time = 2000;
}

UIInputField.prototype.updateTimeout = function(){
	this.timeout = setTimeout(this.get_final_value.bind(this), this.max_wait_time)
}

UIInputField.prototype.activate = function(){
	this.container.focus()
	//this.container.onchange = this.get_final_value()
	this.container.onkeyup = function(){
		if(this.timeout) clearTimeout(this.timeout);
		this.updateTimeout()
	}.bind(this)
	this.updateTimeout()
}

UIInputField.prototype.deactivate = function(){
	if(this.timeout) clearTimeout(this.timeout);
	this.input_timeout = null;
	this.container.onchange = null;
	this.container.onkeyup = null;
	this.container.blur()
}

UIInputField.prototype.get_final_value = function(){
	//any preprocessing before submitting final result
	this.callback()
}




//UTILITY FUNCTION
Number.prototype.prettyPrint = function(){
	if (this > 0) {
		return "+" + this.toString();
	}else{
		return this.toString()
	};
}






