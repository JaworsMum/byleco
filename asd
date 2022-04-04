import pygame
import random
import waz
import jablko

iloscJablek=5
def main():
    ObiektWaz1=waz.Waz()
    ObiektWaz2=waz.Waz()
    obiektJablko=[]
    for nrJablka in range(0, iloscJablek):
        obiektJablko.append(jablko.Jablko())

    
    pygame.init()
    Oknogry=pygame.display.set_mode((300,300),0,32)
    run=True

    
    while(run):
        glowa=ObiektWaz1.getHeadPosition()
        glowaWaz1X=glowa[0]
        glowawaz1Y=glowa[1]
        glowa2=ObiektWaz2.getHeadPosition()
        glowaWaz2X=glowa2[0]
        glowaWaz2Y=glowa2[1]
        Oknogry.fill((0,0,0))
        pygame.time.delay(100)
        

        
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                run = False
            #sterowanie weża
            elif event.type == pygame.KEYDOWN:
                if event.key == pygame.K_LEFT:
                    ObiektWaz1.setDirection((-1,0))
                elif event.key == pygame.K_RIGHT:
                    ObiektWaz1.setDirection((1,0))
                elif event.key == pygame.K_UP:
                    ObiektWaz1.setDirection((0,-1))
                elif event.key == pygame.K_DOWN:
                    ObiektWaz1.setDirection((0,1))
                elif event.key == pygame.K_a:
                    ObiektWaz2.setDirection((-1,0))
                elif event.key == pygame.K_d:
                    ObiektWaz2.setDirection((1,0))
                elif event.key == pygame.K_w:
                    ObiektWaz2.setDirection((0,-1))
                elif event.key == pygame.K_s:
                    ObiektWaz2.setDirection((0,1))
                #sprawdzanie czy waz nie zjada siebie
                
        ObiektWaz1.snakeMove()
        ObiektWaz2.snakeMove()
                
        #rysowanie węża
        ObiektWaz1.drawSnake(Oknogry)
        ObiektWaz2.drawSnake(Oknogry)
            
            #zjedzenie jablka
        #rysowanie jabłka
        for nrJablka in obiektJablko[::]:
            pozycjaJablka=nrJablka.getPosition()
            if glowaWaz1X==pozycjaJablka[0]-10 and glowawaz1Y==pozycjaJablka[1]-10:
                ObiektWaz1.snakeEat()
        
                #dlugosc=dlugosc+1
                #losowanie pozycji jablka
                nrJablka.randPosition()

        for nrJablka in obiektJablko[::]:
            pozycjaJablka=nrJablka.getPosition()
            
            if glowaWaz2X==pozycjaJablka[0]-10 and glowaWaz2Y==pozycjaJablka[1]-10:
                ObiektWaz2.snakeEat()
                #dlugosc=dlugosc+1
                #losowanie pozycji jablka
                nrJablka.randPosition()
            #rysowanie jabłka
            nrJablka.drawApple(Oknogry)

        
        czcionka=pygame.font.SysFont('comicsans',20)
        tekst=czcionka.render("Punkty {0}".format(ObiektWaz1.punkty),1,(255,255,0))
        Oknogry.blit(tekst,(10,10))
        czcionka=pygame.font.SysFont('comicsans',20)
        tekst=czcionka.render("Punkty {0}".format(ObiektWaz2.punkty),1,(255,255,0))
        Oknogry.blit(tekst,(10,30))
       
        pygame.display.update()

main()
