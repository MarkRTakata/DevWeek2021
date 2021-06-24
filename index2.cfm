<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Example 2</title>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
<button hx-post="api/example2?id=1" hx-target="#viewport">Betty White</button>
<br /><br />
<button hx-post="api/example2?id=2" hx-target="#viewport">Puppies</button>
<br /><br />
<button hx-post="api/example2?id=3" hx-target="#viewport">Surfing Shark</button>
<br /><br />
<div id="viewport">
</div>	
<!--- scripts --->
	<!--- JQuery --->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<!--- HTMX --->
	<script src="https://unpkg.com/htmx.org@1.4.1"></script>
	<!--- Bootstrap --->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	
</body>
</html>