PImage a=loadImage("o_ard.jpg");
size(600,400);


loadPixels();
a.loadPixels();

float[][] sobel_1={{-1,0,1},    
                   {-2,0,2},
                   {-1,0,1}
                   };
                   
float[][] sobel_2={{-1,-2,-1},
                   {0,0,0},
                   {1,2,1}
                   };
float [][] mat2_1=new float[81][8];


for(int y=1;y<a.height-1;y++){
 for(int x=1;x<a.width-1;x++){
   float e0=0.0,e1=0.0,e2=0.0,e3=0.0,e4=0.0,e5=0.0,e6=0.0,e7=0.0;
    float gx=0.0; 
     float gy=0.0;
     float g=0.0;
     float t=0.0;
   for(int ky=-1;ky<=1;ky++){
     for(int kx=-1;kx<=1;kx++){
       int iI=(y+ky)*a.width+(x+kx);
      float r= brightness(a.pixels[iI]);
      gx+=sobel_1[ky+1][kx+1]*r;  //ky=-1,0,1 kx=-1,0,1
      gy+=sobel_2[ky+1][kx+1]*r;  //kx=-1,0,1 ky=-1,0,1
      
     }
   }
      
      g=sqrt(gx*gx+gy*gy);
      // to calculate angle
      if(gx>0)
      {
        t= atan(gy/gx);
      //  println(t);
      }
      if(gx<0)
      {
        t= atan(gy/gx)+PI;
        //println(t);
      }
      if(gx==0)
      {
        if(gy>0)
        t=PI/2;
        //println(t);
      }
      if(gy<0)
      {
        
      t=-PI/2;
      //println(t);
      }
      else
      {
      t=0;
      //println(t);
      }
      if(t<0)
      {
        t+=2*PI;
       // println(t);
      }
      
    //divide the circle considering n=8//
    if(t>=0 && t<PI/4)
    {
      e0=g;
    }
    if(t>=PI/4 && t<PI/2)
    {
      e1=g;
    }
    if(t>=PI/2 && t<(3*PI)/4)
    {
      e2=g;
    }
        if(t>=(3*PI)/4 && t<PI)
    {
      e3=g;
    }
        if(t>=PI && t<(5*PI)/4)
    {
      e4=g;
    }
        if(t>=(5*PI)/4 && t<(3*PI)/2)
    {
      e5=g;
    }
        if(t>=(3*PI)/2 && t<(7*PI)/4)
    {
      e6=g;
    }
        if(t>=(7*PI)/4 && t<2*PI)
    {
      e7=g;
    }
    int p=(9*x)/a.width;   
    int q=(9*y)/a.height;
    int ind=q*9+p;
    
    
    mat2_1[ind][0]+=e0;
    mat2_1[ind][1]+=e1;
    mat2_1[ind][2]+=e2;
    mat2_1[ind][3]+=e3;
    mat2_1[ind][4]+=e4;
    mat2_1[ind][5]+=e5;
    mat2_1[ind][6]+=e6;
    mat2_1[ind][7]+=e7;
 } 
}


//2nd image//
PImage b=loadImage("o_ard.jpg");
b.resize(600,300);
size(600,400);
//a.resize(500,0); //resize the image

loadPixels();
b.loadPixels();

float[][] sobel_2_1={{-1,0,1},
                   {-2,0,2},
                   {-1,0,1}
                   };
                   
float[][] sobel_2_2={{-1,-2,-1},
                   {0,0,0},
                   {1,2,1}
                   };
float [][] mat2_2=new float[81][8];
//PImage b = createImage(a.width, a.height, RGB); prof
//b.loadPixels(); prof

for(int y_2=1;y_2<b.height-1;y_2++)
 for(int x_2=1;x_2<b.width-1;x_2++){
   float e0_2=0.0,e1_2=0.0,e2_2=0.0,e3_2=0.0,e4_2=0.0,e5_2=0.0,e6_2=0.0,e7_2=0.0;
    float gx_2=0.0; 
     float gy_2=0.0;
     float g_2=0.0;
     float t_2=0.0;
   for(int ky_2=-1;ky_2<=1;ky_2++){
     for(int kx_2=-1;kx_2<=1;kx_2++){
       int iI=(y_2+ky_2)*b.width+(x_2+kx_2);
      float r_2= brightness(b.pixels[iI]);
      gx_2+=sobel_1[ky_2+1][kx_2+1]*r_2;  //ky=-1,0,1 kx=-1,0,1
      gy_2+=sobel_2[ky_2+1][kx_2+1]*r_2;  //kx=-1,0,1 ky=-1,0,1
  
     }
   }
      
      g_2=sqrt(gx_2*gx_2+gy_2*gy_2);
      // to calculate angle
      if(gx_2>0)
      {
        t_2= atan(gy_2/gx_2);
      //  println(t);
      }
      if(gx_2<0)
      {
        t_2= atan(gy_2/gx_2)+PI;
        //println(t);
      }
      if(gx_2==0)
      {
        if(gy_2>0)
        t_2=PI/2;
        //println(t);
      }
      if(gy_2<0)
      {
        
      t_2=-PI/2;
      //println(t);
      }
      else
      {
      t_2=0;
      //println(t);
      }
      if(t_2<0)
      {
        t_2+=2*PI;
       // println(t);
      }
      
    //divide the circle considering n=8//
    if(t_2>=0 && t_2<PI/4)
    {
      e0_2=g_2;
    }
    if(t_2>=PI/4 && t_2<PI/2)
    {
      e1_2=g_2;
    }
    if(t_2>=PI/2 && t_2<(3*PI)/4)
    {
      e2_2=g_2;
    }
        if(t_2>=(3*PI)/4 && t_2<PI)
    {
      e3_2=g_2;
    }
        if(t_2>=PI && t_2<(5*PI)/4)
    {
      e4_2=g_2;
    }
        if(t_2>=(5*PI)/4 && t_2<(3*PI)/2)
    {
      e5_2=g_2;
    }
        if(t_2>=(3*PI)/2 && t_2<(7*PI)/4)
    {
      e6_2=g_2;
    }
        if(t_2>=(7*PI)/4 && t_2<2*PI)
    {
      e7_2=g_2;
    }
    int p_2=(9*x_2)/b.width;
    int q_2=(9*y_2)/b.height;
    int ind_2=q_2*9+p_2;
    
    
    mat2_2[ind_2][0]+=e0_2;
    mat2_2[ind_2][1]+=e1_2;
    mat2_2[ind_2][2]+=e2_2;
    mat2_2[ind_2][3]+=e3_2;
    mat2_2[ind_2][4]+=e4_2;
    mat2_2[ind_2][5]+=e5_2;
    mat2_2[ind_2][6]+=e6_2;
    mat2_2[ind_2][7]+=e7_2;
    
    
    
   
  
}

float num=0.0,den=0.0,sim=0.0;
for(int i=0;i<81;i++)
for(int j=0;j<8;j++)
{
  num+=mat2_1[i][j]*mat2_2[i][j];
  den+=sqrt(mat2_1[i][j]*mat2_1[i][j])*sqrt(mat2_1[i][j]*mat2_1[i][j]);
}
sim=num/den;
println("The similarity between 2 images is:%.2f",sim);
