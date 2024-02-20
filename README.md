# Generation-Of-Pn-Sequence-With-Internal-555-Timer-Based-Clock-Using-eSim-And-SKY130
# Abstract
This project focuses on the generation of Pseudo-Noise (PN) sequences utilizing an internal 555 timer-based clock system, implemented through eSim simulation software and SKY Water 130 nm technology. PN sequences play a crucial role in various communication and digital signal processing applications, including spread spectrum communication, encryption, and channel estimation. The proposed approach leverages the versatility of the 555 timer IC, a widely-used integrated circuit for timing applications, to generate PN sequences efficiently.

# Reference Circuit Diagram
![image](https://github.com/ashwini0921/Generation-Of-Pn-Sequence-With-Internal-555-Timer-Based-Clock-Using-eSim-And-SKY130/assets/111654188/9fcce6e5-4026-458d-ad66-009a9fd8d6ee)

# Software Used
## eSim

It is an Open Source EDA developed by FOSSEE, IIT Bombay. It is used for electronic circuit simulation. It is made by the combination of two software namely NgSpice and KiCAD.
For more details refer:
https://esim.fossee.in/home

## NgSpice

It is an Open Source Software for Spice Simulations. For more details refer:
http://ngspice.sourceforge.net/docs.html

## Makerchip

It is an Online Web Browser IDE for Verilog/System-verilog/TL-Verilog Simulation. Refer
https://www.makerchip.com/

## Verilator

It is a tool which converts Verilog code to C++ objects. Refer: https://www.veripool.org/verilator/eSim

# Circuit Diagram in eSim

![image](https://github.com/ashwini0921/Generation-Of-Pn-Sequence-With-Internal-555-Timer-Based-Clock-Using-eSim-And-SKY130/assets/111654188/c5a2e950-871d-45dc-80ef-0dba7fd61c45)

# Verilog Code

  
    module DFF_SKY(D, clk, rst, Q, Qn);    
    input D, clk, rst;    
    output reg Q, Qn;    
    always @(posedge clk, negedge rst)     
    begin      
      if (rst)      
    begin      
    Q  <= 1;      
    Qn <= 0;    
    end     
    else     
    begin      
      Q  <= D;      
      Qn <= ~D;    
    end  
    end 
    endmodule

# Steps to run generate NgVeri Model


1. Open eSim
2. Run NgVeri-Makerchip
3. Add top level verilog file in Makerchip Tab
4. Click on NgVeri tab
5. Add dependency files
6. Click on Run Verilog to NgSpice Converter
7. Debug if any errors
8. Model created successfully

# Steps to run this project


1. Open a new terminal
2. Change directory:

       cd eSim-Workspace
3. Clone this project using the following command:

       git clone https://github.com/ashwini0921/Generation-Of-Pn-Sequence-With-Internal-555-Timer-Based-Clock-Using-eSim-And-SKY130.git
4. Run ngspice:

        ngspice PN_Generation_ASHWINI.cir.out
5. To run the project in eSim:

1)  Run eSim
2)  Load the project named PN_Generation_ASHWINI
3)  Open eeSchema

# Acknowlegdements

1. FOSSEE, IIT Bombay
2. Steve Hoover, Founder, Redwood EDA
3. Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd. - kunalpghosh@gmail.com
4. Sumanto Kar, eSim Team, FOSSEE
5. Google
6. https://spoken-tutorial.org/
7. https://vlsisystemdesign.com/
8. https://www.c2s.gov.in/

# References

1. Ahmad, Nabihah & Hasan, Rezaul. (2011). A new design of XOR-XNOR gates for low power application. 10.1109/ICEDSA.2011.5959039.
2. K. Ravali, N. R. Vijay, S. Jaggavarapu and R. Sakthivel, "Low power XOR gate design and its applications," 2017 Fourth International Conference on Signal Processing, Communication and Networking (ICSCN), 2017, pp. 1-4, doi: 10.1109/ICSCN.2017.8085699.
3. https://github.com/Eyantra698Sumanto/Two-in-One-Low-power-XOR-XNOR-Gate.git
4. https://github.com/Eyantra698Sumanto/XOR-XNOR-Gate.git
5. Linear Integrated Circuit by D ROY CHOUDHURY, SHAIL BALA JAIN
