#include <cstdlib>
#include <iostream>

int main(int argc, char* argv[])
{
    while (true)
    {
        std::cout << "git> ";
        std::cout.flush();
        std::string command;
        std::getline(std::cin, command);
        if (command == "exit")
        {
            break;
        }
        std::string full_command{"git " + command};
        std::system(full_command.c_str());
    }

    return 0;
}
