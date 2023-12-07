#ifdef __linux__
    #include <unistd.h>
    #include <arpa/inet.h>
#elif __WIN32
    #include <winsock2.h>
#else
    #warning "net.h: platform not suppoerted"
#endif

#if defined(__linux__) || defined(__WIN32)

#include "net.h"
