#include <iostream>
#include "crow.h"

#define APP_PORT 8080

int main() {
    crow::SimpleApp app;

    CROW_ROUTE(app, "/")([](){
        return "Hello from sillybird";
    });

    app.port(APP_PORT).multithreaded().run();
    
    return 0;
}
