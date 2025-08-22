# rc-system
This repository contains a MATLAB implementation of the mathematical model of an RC (resistor-capacitor) circuit, solving its differential equation and plotting the capacitor voltage response over time.
---

## Mathematical Model  

The RC circuit is described by the following differential equation:

$$
V_s = R \cdot C \cdot \frac{dV_c}{dt} + V_c
$$

Where:  

- $V_s$ = supply voltage (Volts)  
- $R$ = resistance ($\Omega$)  
- $C$ = capacitance (Farads)  
- $V_c$ = capacitor voltage (Volts)  

---

## Features  

- Symbolic definition and **general solution** of the differential equation.  
- **Particular solution** with initial condition (discharged capacitor).  
- **Numerical evaluation** of the solution over a defined time interval.  
- Plot of the capacitor **charging curve**.  

---

## Requirements  

- MATLAB  
- **Symbolic Math Toolbox**  

---

## Response:

<img width="827" height="572" alt="image" src="https://github.com/user-attachments/assets/c5587603-5fba-401f-9d9a-827d7a5ecae2" />
