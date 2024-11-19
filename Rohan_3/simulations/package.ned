package rohan_3.simulations;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;


@license(LGPL);
//
// TODO documentation
//
network Rohan_3
{
    @display("bgb=743,405");
    submodules:
        server: StandardHost {
            @display("p=198,113");
        }
        client1: StandardHost {
            @display("p=480,51");
        }
        client2: StandardHost {
            @display("p=561,145");
        }
        client3: StandardHost {
            @display("p=513,261");
        }
        client4: StandardHost {
            @display("p=336,307");
        }
        client5: StandardHost {
            @display("p=86,252");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=102,28");
        }
    connections:
        server.ethg++ <--> Eth100M <--> client1.ethg++;
        server.ethg++ <--> Eth100M <--> client2.ethg++;
        server.ethg++ <--> Eth100M <--> client3.ethg++;
        server.ethg++ <--> Eth100M <--> client4.ethg++;
        server.ethg++ <--> Eth100M <--> client5.ethg++;
}

