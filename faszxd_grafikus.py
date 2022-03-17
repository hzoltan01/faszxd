import sys, pygame, math
from pygame.locals import*

width=1000
height=500
Color_screen=(255,255,255)
Color_line=(0,0,0)
PI = math.pi

def main():
    screen=pygame.display.set_mode((width,height))
    screen.fill(Color_screen)
    pygame.display.flip()
    # F
    pygame.draw.line(screen,Color_line,(60,80),(60,180))
    pygame.draw.line(screen,Color_line,(60,80),(110,80))
    pygame.draw.line(screen,Color_line,(60,130),(85,130))
    # A
    pygame.draw.line(screen,Color_line,(120,180),(150,80))
    pygame.draw.line(screen,Color_line,(180,180),(150,80))
    pygame.draw.line(screen,Color_line,(135,130),(165,130))
    # S
    pygame.draw.arc(screen,Color_line,[190,80,50,50],PI/2,3*PI/2,1)
    pygame.draw.arc(screen,Color_line,[190,130,50,50],3*PI/2,PI/2,1)
    pygame.draw.line(screen,Color_line,(190,180),(215,180))
    pygame.draw.line(screen,Color_line,(240,80),(215,80))
    # Z
    pygame.draw.line(screen,Color_line,(250,80),(300,80))
    pygame.draw.line(screen,Color_line,(250,180),(300,80))
    pygame.draw.line(screen,Color_line,(250,180),(300,180))
    # X
    pygame.draw.line(screen,Color_line,(350,80),(400,180))
    pygame.draw.line(screen,Color_line,(350,180),(400,80))

    # D
    pygame.draw.line(screen,Color_line,(410,80),(410,180))
    pygame.draw.arc(screen,Color_line,[370,80,80,100],3*PI/2,PI/2,1)
    
    pygame.display.flip()
    while True:
        for events in pygame.event.get():
            if events.type == QUIT:

                sys.exit(0)
main()