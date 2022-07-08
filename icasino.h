#ifndef ICASINO_H
#define ICASINO_H
#include"QObject"
#include<iostream>
#include <conio.h>
#include<memory>
#include"player.h"
#include<random>

// KE: интерфейс всегда иммеет формат ICasino и название файла тоже ICasino.h
class ICasino
{
private:

public:
    ICasino() = default;
    virtual bool Check_result() = 0;
    virtual void Logic_game(Player &player) = 0;

    virtual ~ICasino() = default;

};


#endif // ICASINO_H
