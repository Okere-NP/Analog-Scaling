# 📈 ANALOG_SCALING Function Block

This `FUNCTION_BLOCK` performs **linear scaling** of an analog input signal from a PLC’s raw digital range to the desired instrument engineering range. Useful for interpreting analog sensor values like temperature, pressure, or flow in human-readable units.

---

## 🔧 Overview

This block scales an analog `INPUT` from the raw range `[X_MIN_INPUT, X_MAX_INPUT]` to the output engineering range `[Y_MIN_OUTPUT, Y_MAX_OUTPUT]`.

---

## 📥 Inputs

| Variable         | Type  | Description                                 |
|------------------|--------|---------------------------------------------|
| `INPUT`          | `REAL` | Raw analog input value to be scaled         |
| `X_MIN_INPUT`    | `REAL` | Minimum PLC raw value (e.g., 0)             |
| `X_MAX_INPUT`    | `REAL` | Maximum PLC raw value (e.g., 27648)         |
| `Y_MIN_OUTPUT`   | `REAL` | Minimum instrument output (e.g., 0.0 °C)    |
| `Y_MAX_OUTPUT`   | `REAL` | Maximum instrument output (e.g., 100.0 °C)  |

---

## 📤 Output

| Variable     | Type  | Description                               |
|--------------|--------|-------------------------------------------|
| `OUTPUT`     | `REAL` | Scaled value in engineering units         |

---

## 🧮 Scaling Formula

```plaintext
OUTPUT = ((INPUT - X_MIN_INPUT) * (Y_MAX_OUTPUT - Y_MIN_OUTPUT)) 
         / (X_MAX_INPUT - X_MIN_INPUT) 
         + Y_MIN_OUTPUT

---
