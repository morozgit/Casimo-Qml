#include"roulette.h"



bool Roulette::Check_result()
{
    std::cout << "Check_result Raulette" << std::endl;
    return 0;
}

std::pair<const int, std::string> Roulette::Create_cell()
{
    auto it = m_bet.find((rand() % 37));
    return *it;
}

bool Roulette::Do_you_want_to_contine(const char non_stop)
{

    if (non_stop == 'y')
    {
        return true;
    }
    else if (non_stop == 'n')
    {
        return false;
    }
    else {
        return false;
    }

}



void Roulette::Logic_game(Player &player)
{
    std::cout << "Choice your bet" << std::endl;
    for (auto &cell : m_bet)
    {
        std::cout << '\t' << cell.first << ' ' << cell.second << std::endl;
    }
    int player_bet_num;
    std::string player_bet_color;
    std::cin >> player_bet_num >> player_bet_color;
    if (player_bet_num == Create_cell().first && player_bet_color == Create_cell().second)
    {
        player.Plus_money();
        std::cout << "Congratulation! Your balanse is " << player.Get_balanse() << std::endl;
    }
    else
    {
        std::cout << "Your balanse is " << player.Get_balanse() << std::endl;
    }
    //std::cout << Create_cell().first << " " << Create_cell().second << std::endl;
}


