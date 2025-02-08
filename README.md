# 🧮 Calculadora Smart Contract

## 📝 Overview

The **Calculadora** smart contract provides basic arithmetic operations directly on the Ethereum blockchain. This contract allows users to **add, subtract, multiply, divide, and calculate percentages** securely and transparently.

Designed in **Solidity 0.8.24**, it includes built-in checks to prevent invalid operations and ensures smooth execution.

---

## ✨ Features

✔️ Supports basic mathematical operations:

- ➕ **Addition**
- ➖ **Subtraction**
- ✖️ **Multiplication**
- ➗ **Division**
- 📊 **Percentage Calculation**

✔️ Implements **modifiers** to ensure:

- Only **positive numbers** are used in operations
- The first number is **greater than or equal** to the second in subtraction and division

✔️ Emits **events** for key operations (**Addition, Subtraction, Multiplication**)

✔️ Uses **internal and private functions** for optimized logic execution

---

## ⚙️ How to Use

### 🛠 Tools and Environment

✅ **Remix IDE** ([Remix Ethereum](https://remix.ethereum.org/))  
✅ **Solidity 0.8.24 compiler**

### 🚀 Deploying the Smart Contract

1. **Open Remix IDE** ([Remix Ethereum](https://remix.ethereum.org/))
2. **Create a new Solidity file**
   - Click on **File Explorers** > "Create New File"
   - Name it **Calculadora.sol**
3. **Copy & Paste** the contract code into the file
4. **Select Solidity Compiler**
   - Navigate to the **"Solidity Compiler"** tab
   - Choose **0.8.24** as the compiler version
   - Click **Compile Calculadora.sol**
5. **Deploy the Contract**
   - Go to the **"Deploy & Run Transactions"** tab
   - Select a **test network** (e.g., **Remix VM (Cancun)**)
   - Click **🚀 Deploy**

---

### ✅ Interacting & Testing

Once deployed, test the functions. Here you have some examples:

#### ➕ **Addition**

- Call **addition(num1, num2)**
- Check the emitted event **Addition(result)**
- Confirm that the `result` variable updates correctly

#### ✖️ **Multiplication**

- Call **multiplier(num1, num2)**
- Check the emitted event **Multiplier(result)**
- Ensure the `result` updates correctly

#### ➗ **Division**

- Call **division(num1, num2)** (num1 must be **≥** num2)
- Ensure the `result` updates correctly

---

## 📜 License

This project is licensed under **LGPL-3.0-only**
