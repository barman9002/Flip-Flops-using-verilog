# ⚙️ Flip-Flops in Verilog (Vivado Simulation)

This project demonstrates the design and simulation of **basic flip-flops** using **Verilog HDL**.  
All modules are simulated in **Xilinx Vivado**, with **waveform and schematic verification** for each flip-flop.

---

## 🧩 Overview

A **flip-flop** is a bistable circuit that stores one bit of data. It changes state according to the input and clock signal.  
This project covers the implementation of all fundamental flip-flops:

1. **SR Flip-Flop**
2. **D Flip-Flop**
3. **JK Flip-Flop**
4. **T Flip-Flop**
5. **Master-Slave JK Flip-Flop**

Each design is provided with:
- Verilog module
- Corresponding testbench
- Simulation output (waveform)
- RTL schematic (Vivado-generated)

---

## 🧠 Flip-Flop Descriptions

### 1️⃣ SR Flip-Flop
**Inputs:** S (Set), R (Reset), CLK  
**Output:** Q  

| S | R | Q(next) | Description |
|:-:|:-:|:-:|:-|
| 0 | 0 | Q | No change |
| 0 | 1 | 0 | Reset |
| 1 | 0 | 1 | Set |
| 1 | 1 | X | Invalid |

---

### 2️⃣ D Flip-Flop
**Inputs:** D, CLK  
**Output:** Q  

| D | Q(next) |
|:-:|:-:|
| 0 | 0 |
| 1 | 1 |

📝 *Stores the value of D on the rising edge of CLK.*

---

### 3️⃣ JK Flip-Flop
**Inputs:** J, K, CLK  
**Output:** Q  

| J | K | Q(next) | Description |
|:-:|:-:|:-:|:-|
| 0 | 0 | Q | No change |
| 0 | 1 | 0 | Reset |
| 1 | 0 | 1 | Set |
| 1 | 1 | ~Q | Toggle |

---

### 4️⃣ T Flip-Flop
**Inputs:** T, CLK  
**Output:** Q  

| T | Q(next) | Description |
|:-:|:-:|:-|
| 0 | Q | No change |
| 1 | ~Q | Toggle |

---

### 5️⃣ Master-Slave JK Flip-Flop
**Inputs:** J, K, CLK  
**Output:** Q  

This is built using two JK flip-flops (Master + Slave).  
The **Master** is triggered on the **positive edge**,  
and the **Slave** is triggered on the **negative edge** of the clock.

| J | K | Q(next) | Description |
|:-:|:-:|:-:|:-|
| 0 | 0 | Q | No change |
| 0 | 1 | 0 | Reset |
| 1 | 0 | 1 | Set |
| 1 | 1 | ~Q | Toggle |

---


---

## 🧪 Simulation Environment

- **Tool Used:** Xilinx Vivado  
- **Language:** Verilog HDL  
- **Verification:**  
  - Linter check (no errors)  
  - RTL schematic view  
  - Behavioral simulation (waveform analysis)

---

## 🧰 How to Run

1. Open **Vivado** → Create a new project → Add all `.v` and `_tb.v` files.  
2. Set the testbench as the **Top Module**.  
3. Click on **Run Simulation → Run Behavioral Simulation**.  
4. View waveforms under the **Simulation** tab.  
5. To check the schematic:  
   - Go to **Flow Navigator → RTL Analysis → Elaborated Design → Schematic**.

---

## 📸 Outputs

- ✅ Verified Waveforms  
- ✅ RTL Schematics  
- ✅ Correct Timing and Behavior for all Flip-Flops

---

## 📚 Conclusion

This project helps in understanding:
- The behavior of all basic flip-flops.
- How to implement them in **Verilog HDL**.
- How to simulate and analyze them in **Vivado** using waveform and schematic tools.

---

## 👨‍💻 Developed By

**Abhisekh Barman**  
💻 Electronics & Communication Engineering  
📍 Simulated using Xilinx Vivado

---

⭐ *If you found this project helpful, give it a star on GitHub!*


