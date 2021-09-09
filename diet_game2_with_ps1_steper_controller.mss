#include "lambda.h"

#define	SPR_W	640
#define	SPR_H	480
#define	ADD_X	1
#define	ADD_Y	2

/*
@‰æ–Ê“à‚ð”½ŽË‚µ‚È‚ª‚ç“®‚­ƒTƒ“ƒvƒ‹
*/
main()
{
	var back, move, sz[2], x, y, x1, y1, a1, addx, addy, txt;
	var flag1, c1, c2, c3, x2, y2, x3, y3, score1;
	var ani1,ani2,ani3;
	var c4,x4,y4,score2;
	sprSetLevel(66);
	timeSetFPS(30);
	txt = imgCreate(640,16,4,0);
	back = imgLoad("bg.bmp", 1, 0);
	imgSetCurrent(back);
	x1=260;y1=300.2;
	x2=30;y2=160;
	x3=460;y3=160;
	x4=100;y4=300;
	score1=0;
	score2=0.1;
	ani3=3;
	c1 = imgLoad("player.png", 2, 0);
	c2 = imgLoad("enemy_003.bmp", 3, 0);
	c3 = imgLoad("tenemy_003.bmp", 4, 0);
	imgSetCurrent(c1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	imgSetCurrent(c3);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x3, y3);
		imgSetCurrent(txt);
		txtSetColor(255, 255, 255);
		txtSetPos(300, 0);
		txtOut("SCORE:"+score1);
	inpSetCurrent(inpGetDevice(1));
	sprRenderScreen();

	while(true)
	{
		imgSetCurrent(c1);
		inpClear();
		if(inpGetState(INP_RIGHT) == INP_PUSH)
		{
				if(flag1==1){
				flag1=0;
				score1+=1;
				y2+=6;
				if(y2>480){
				y2=0;
				}
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
				}
			
		}
		if(inpGetState(INP_LEFT) == INP_PUSH)
		{
				if(flag1==0){
				flag1=1;
				score1+=1;
				y2+=6;
				if(y2>480){
				y2=0;
				}
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
				}
		}
		ani2+=1;
		ani3+=1;
						if((ani2>496)&&(ani2<503)){
	c2 = imgLoad("enemy_002.bmp", 3, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	ani2+=1;
	}else if((ani2>502)&&(ani2<509)){
	c2 = imgLoad("enemy_001.bmp", 3, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	ani2+=1;
	}else if((ani2>508)&&(ani2<515)){
	c2 = imgLoad("enemy_000.bmp", 3, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	ani2+=1;
			if((x2 < (x1 + 100)) && (x1 < (x2 + 400)) && (y2 < (y1 + 100)) && (y1 < (y2 + 100))){
		score1-=2;
		}
	}else if((ani2>514)){
	c2 = imgLoad("enemy_003.bmp", 3, 0);
	imgSetCurrent(c2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	ani2=0;
		}
		score2+=0.1;
		imgSetCurrent(txt);
		imgFill(0, 0, 0);
		txtSetPos(0, 0);
		txtOut("You play with Step controller.");
		txtSetPos(300, 0);
		txtOut("SCORE:"+score1);
		sprRenderWait();
	}
}
