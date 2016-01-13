<script type="text/javascript">
	$(document).ready(function (){
		var $inp = $('input');
		$inp.bind('keydown', function (e) {
			var key = e.which;
			if (key == 13) {
				e.preventDefault();
				var nxtIdx = $inp.index(this) + 1;
				$("input:eq(" + nxtIdx + ")").focus();
				$("input:eq(" + nxtIdx + ")").select();
			}
        });
		var $inputlast = $('input:last');
		$inputlast.bind('keydown', function (e) {
			var key = e.which;
			if (key == 13) {
				e.preventDefault();
				$("#submit").trigger("click");
			}
        });
	});
</script>