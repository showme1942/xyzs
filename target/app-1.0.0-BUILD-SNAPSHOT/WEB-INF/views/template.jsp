
<!-- project info Template -->
<script type="text/x-kendo-template" id="projectInfoTemplate">
	<div class="progress">
		<div class="progress-bar progress-bar-success" style="width: #:taskCompleteNumber/taskNumber*100#%" data-role="tooltip" data-auto-hide="true" data-placement="bottom" title="<spring:message code="project.into.task.complete.number" />#:taskCompleteNumber#">
			<span>#if(taskCompleteNumber!=0){# #:taskCompleteNumber # #}#</span>
		</div>
		<div class="progress-bar progress-bar-warning" style="width: #:taskBeyondCompleteNumber/taskNumber*100#%" data-role="tooltip" data-auto-hide="true" data-placement="bottom" title="<spring:message code="project.into.task.beyond.complete.number" />#:taskBeyondCompleteNumber#">
			<span>#if(taskBeyondCompleteNumber!=0){# #:taskBeyondCompleteNumber # #}#</span>
		</div>
		<div class="progress-bar progress-bar-info progress-bar-striped active" style="width: #:taskOngoingNumber/taskNumber*100#%" data-role="tooltip" data-auto-hide="true" data-placement="bottom" title="<spring:message code="project.into.task.ongoing.number" />#:taskOngoingNumber#">
			<span>#if(taskOngoingNumber!=0){# #:taskOngoingNumber # #}#</span>
		</div>
		<div class="progress-bar progress-bar-danger progress-bar-striped active" style="width: #:taskBeyondOngoingNumber/taskNumber*100#%" data-role="tooltip" data-auto-hide="true" data-placement="bottom" title="<spring:message code="project.into.task.beyond.ongoing.number" />#:taskBeyondOngoingNumber#">
			<span>#if(taskBeyondOngoingNumber!=0){# #:taskBeyondOngoingNumber # #}#</span>
		</div>
	</div>
</script>

<!-- departmentDropDown Template -->
<script type="text/x-kendo-template" id="departmentDropDownTemplate">
	<div class="gridToolbar">
		<em><spring:message code="info.department.select" /></em>
		<input data-role="dropdownlist" data-auto-bind="true" data-text-field="depname" data-value-field="depid" data-bind="source: departmentDataSource,events: {change: departmentChange,dataBound: departmentDataBound}" style="width: 300px"/>
	</div>
</script>

<!-- statsPerformance Template -->
<script type="text/x-kendo-template" id="statsPerformanceDropDownTemplate">
	<div class="gridToolbar">
		<em><spring:message code="info.year.select" /></em>
		<input data-role="dropdownlist" data-auto-bind="true" data-text-field="yearname" data-value-field="year" data-bind="source: yearList,events: {change: yearChange,dataBound: yearDataBound}" style="width: 100px"/>
		<em><spring:message code="info.department.select" /></em>
		<input data-role="dropdownlist" data-auto-bind="true" data-text-field="depname" data-value-field="depid" data-bind="source: departmentList,events: {change: departmentChange,dataBound: departmentDataBound}" style="width: 220px"/> 
		<a class="k-button" data-bind="click:stats"><spring:message code="button.stats" /></a>
	</div>
</script>

<!-- task View Template -->
<script type="text/x-kendo-template" id="taskDetailTemplate">
	<div data-role="tabstrip">

		<ul>
			<li class="k-state-active"><spring:message code="task.info.describe" /></li>
			<li>New York</li>
			<li>London</li>
			<li>Moscow</li>
			<li>Sydney</li>
		</ul>
		<div class="tabpage">
			<div class="tabpage-content">
				<div class="tabpage-col">
					<div class="tabpage-label">
						<label for="name"><spring:message code="task.field.name" /></label>
					</div>
					<div class="tabpage-field">
						<input value=#:name# id="name" class="k-input k-textbox" type="text" />
					</div>
					<div class="tabpage-label">
						<label for="type"><spring:message code="task.field.type" /></label>
					</div>
					<div class="tabpage-field">
						<input data-role="dropdownlist" name="type" value=#:type# data-auto-bind="false" data-text-field="text" data-value-field="value" data-bind="source: tasktype" />
					</div>
					<div class="tabpage-label">
						<label for="type"><spring:message code="task.field.describe" /></label>
					</div>
					<div class="tabpage-field">
						<textarea name="describe" class="k-textbox" style="height: 100px;resize:none;">#:describe#</textarea>
					</div>
					<div class="tabpage-label">
						<label for="startDate"><spring:message code="task.field.start.date" /></label>
					</div>
					<div class="tabpage-field">
						<input data-role="datepicker" value=#:kendo.format("{0:yyyy-MM-dd}", startDate)# />
					</div>
					<div class="tabpage-label">
						<label for="startDate"><spring:message code="task.field.end.date" /></label>
					</div>
					<div class="tabpage-field">
						<input data-role="datepicker" value=#:kendo.format("{0:yyyy-MM-dd}", endDate)# />
					</div>
				</div>
				<div class="tabpage-col">
					
				</div>
			</div>
			<div class="tabpage-button">
				<button type="button" class="btn btn-success" data-bind="click : save"><span class="glyphicon glyphicon-edit"></span> <spring:message code="button.save" /></button>
				<button type="button" class="btn btn-danger" data-bind="click : destroy"><span class="glyphicon glyphicon-remove"></span> <spring:message code="button.delete" /></button>
			</div>
		</div>
		<div>
			<div class="weather">
				<dl class="dl-horizontal">
	  				<dt><label for="name"><spring:message code="task.field.name" /></label></dt>
  					<dd><input value=#:name# id="name" class="k-input k-textbox" type="text" /></dd>
  					<dt>...</dt>
  					<dd>...</dd>
  					<dt>...</dt>
  					<dd>...</dd>
				</dl>
				<dl class="dl-horizontal">
	  				<dt>....</dt>
  					<dd>....</dd>
  					<dt>....</dt>
  					<dd>....</dd>
  					<dt>....</dt>
  					<dd>....</dd>
				</dl>
			</div>
		</div>
		<div>
			<div class="weather">
				<h2>21<span>&ordm;C</span></h2>
				<p>Sunny weather in London.</p>
			</div>
			<span class="sunny">&nbsp;</span>
		</div>
		<div>
			<div class="weather">
				<h2>16<span>&ordm;C</span></h2>
				<p>Cloudy weather in Moscow.</p>
			</div>
			<span class="cloudy">&nbsp;</span>
		</div>
		<div>
			<div class="weather">
				<h2>17<span>&ordm;C</span></h2>
				<p>Rainy weather in Sydney.</p>
			</div>
			<span class="rainy">&nbsp;</span>
		</div>
	</div>
</script>

