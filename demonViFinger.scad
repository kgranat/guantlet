


scale([1,1,1])
{
    for(b= [0:1:96])
    {
        scale([1,b/100,b/100])translate([b/6,0,4])
        {
            rotate(a=[0,270,0])pentagon(5);
        }
    }
}



scale([1,1,1])
{
    for(b= [0:1:80])
    {
        scale([1,1+(b/100),1+(b/100)])translate([b/5,0,0])
        {
           2sect();

        }
    }
}

scale([1,1,1])
{
    for(b= [0:1:16])
    {
        scale([1,1+(b/100),1+(b/100)])translate([b/1,0,0])
        {
         3sect();

        }
    }
}


scale([1,1,1])
{
    for(b= [0:1:12])
    {
        scale([1,1-(b/100),1-(b/100)])translate([b/1,0,0])
        {
         4sect();

        }
    }
}








module 2sect()
{

translate([16,0,4])rotate(a=[0,270,0])color([1,0,0])pentagon(5);
}



module 3sect()
{

scale([1,1.8,1.8])translate([32,0,4])rotate(a=[0,270,0])color([0,1,0])pentagon(5);
}

module 4sect()
{

scale([1,2.1,2.1])translate([49,0,4])rotate(a=[0,270,0])color([0,0,1])pentagon(5);
}




module reg_polygon(sides,radius)
{
  function dia(r) = sqrt(pow(r*2,2)/2);  //sqrt((r*2^2)/2) if only we had an exponention op
  if(sides<2) square([radius,0]);
  if(sides==4) square([dia(radius),dia(radius)],center=true);
  if(sides>4) cylinder(r=radius,$fn=sides);
}

module pentagon(radius)
{
  reg_polygon(5,radius);
}

     