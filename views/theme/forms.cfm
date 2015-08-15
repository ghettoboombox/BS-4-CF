<cfimport prefix="b" taglib="../../bootstrap">



<!-- Forms
      ================================================== -->
<b:row>
	<b:column span="12">
     	<div class="page-header">
          	<b:h1 id="forms">Forms</b:h1>
          </div>
	</b:column>
</b:row>

<b:row>
	<b:column span="6">
     	<div class="well bs-component">
			<form class="form-horizontal">
				<b:fieldset legend="Legend">
                  		<b:formGroup>
						<label for="inputEmail" class="col-lg-2 control-label">Email</label>
						<div class="col-lg-10">
							<input type="text" class="form-control" id="inputEmail" placeholder="Email">
						</div>
					</b:formGroup>
                  
					<b:formGroup>	
						<label for="inputPassword" class="col-lg-2 control-label">Password</label>
						<div class="col-lg-10">
							<input type="password" class="form-control" id="inputPassword" placeholder="Password">
								
							<b:checkbox id="checkbox" look="success" checked="true">Checkbox</b:checkbox>
						</div>
					</b:formGroup>
					
	                 
                  
                  <div class="form-group">
                    <label for="textArea" class="col-lg-2 control-label">Textarea</label>
                    <div class="col-lg-10">
                      <textarea class="form-control" rows="3" id="textArea"></textarea>
                      <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>
                    </div>
                  </div>
					<b:formGroup>
						<label class="col-lg-2 control-label">Radios</label>
						<b:column span="10">
							<b:radio name="OptionRadios" id="auto" look="primary">This is primary option</b:radio>
							<b:radio name="OptionRadios" id="auto" look="danger" checked="true">This dangerous</b:radio>
						</b:column>
					</b:formGroup>
                 	
					<b:formGroup>
						<label for="select" class="col-md-2 control-label">Select one</label>
                    	
                    	
                    		<b:selectOneMenu name="select" span="10">
                    			<b:selectItem display="1" />
                    			<b:selectItem display="2" />
                    			<b:selectItem display="3" />
                    			<b:selectItem display="4" />
                    			<b:selectItem display="5" />
						</b:selectOneMenu>
	
                    	</b:formGroup>

					<b:formGroup>	
						<label for="select" class="col-lg-2 control-label">Select Multiple</label>
						
						<b:selectMultiMenu name="select" span="10">
                    			<b:selectItem display="1" />
                    			<b:selectItem display="2" />
                    			<b:selectItem display="3" />
                    			<b:selectItem display="4" />
                    			<b:selectItem display="5" />
						</b:selectMultiMenu>
  					</b:formGroup>
					
                  <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                      <button type="reset" class="btn btn-default">Cancel</button>
                      <b:commandButton look="primary" value="Submit" />
                    </div>
                  </div>
                </b:fieldset>
              </form>
            </div>
          </b:column>
          <b:column span="4" offset="1">

              <form class="bs-component">
                <div class="form-group">
                  <label class="control-label" for="focusedInput">Focused input</label>
                  <input class="form-control" id="focusedInput" type="text" value="This is focused...">
                </div>

                <div class="form-group">
                  <label class="control-label" for="disabledInput">Disabled input</label>
                  <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input here..." disabled="">
                </div>

                <div class="form-group has-warning">
                  <label class="control-label" for="inputWarning">Input warning</label>
                  <input type="text" class="form-control" id="inputWarning">
                </div>

                <div class="form-group has-error">
                  <label class="control-label" for="inputError">Input error</label>
                  <input type="text" class="form-control" id="inputError">
                </div>

                <div class="form-group has-success">
                  <label class="control-label" for="inputSuccess">Input success</label>
                  <input type="text" class="form-control" id="inputSuccess">
                </div>

                <div class="form-group">
                  <label class="control-label" for="inputLarge">Large input</label>
                  <input class="form-control input-lg" type="text" id="inputLarge">
                </div>

                <div class="form-group">
                  <label class="control-label" for="inputDefault">Default input</label>
                  <input type="text" class="form-control" id="inputDefault">
                </div>

                <div class="form-group">
                  <label class="control-label" for="inputSmall">Small input</label>
                  <input class="form-control input-sm" type="text" id="inputSmall">
                </div>

                <div class="form-group">
                  <label class="control-label">Input addons</label>
                  <div class="input-group">
                    <span class="input-group-addon">$</span>
                    <input type="text" class="form-control">
                    <span class="input-group-btn">
                      <b:button value="Button" />
                    </span>
                  </div>
                </div>
		</form>

	</b:column>
</b:row>
