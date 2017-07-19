
var timerid = 0;
/*var images = new Array(	"hotel.jpg",
			"hotel1.jpg",
			"images.jpg");*/
			var images=new Array();
			images[0]="images/bAM-25-discount.jpg";
			images[1] = "images/books1.jpg";
			images[2] = "images/images1.jpg";

			var countimages = 0;
function startTime()
{
	if(timerid)
	{
		timerid = 0;
	}
	var tDate = new Date();
	
	if(countimages == images.length)
	{
		countimages = 0;
	}
	if(tDate.getSeconds() % 5 == 0)
	{
		document.getElementById("img1").src = images[countimages];
	}
	countimages++;
	
	timerid = setTimeout("startTime()", 1000);
}
