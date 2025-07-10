# 📈 ANALOG_SCALING Function Block

This `FUNCTION_BLOCK` performs **linear scaling** of an analog input signal from one range (PLC raw values) to another (instrument output values). It is particularly useful in PLC programs to convert raw ADC values to engineering units like temperature, pressure, flow rate, etc.

---

## 🔧 Overview

The block takes a raw analog input value (e.g., from a sensor or transmitter), and scales it from a specified input range (`X_MIN_INPUT` to `X_MAX_INPUT`) to a desired output range (`Y_MIN_OUTPUT` to `Y_MAX_OUTPUT`).

---

## 📥 Inputs

| Variable         | Type  | Description                                |
|------------------|--------|--------------------------------------------|
| `INPUT`          | `REAL` | Raw analog input to be scaled              |
| `X_MIN_INPUT`    | `REAL` | Minimum raw input value (e.g., 0)          |
| `X_MAX_INPUT`    | `REAL` | Maximum raw input value (e.g., 27648)      |
| `Y_MIN_OUTPUT`   | `REAL` | Minimum engineering unit output (e.g., 0.0 °C)  |
| `Y_MAX_OUTPUT`   | `REAL` | Maximum engineering unit output (e.g., 100.0 °C)|

---

## 📤 Output

| Variable     | Type  | Description                     |
|--------------|--------|---------------------------------|
| `OUTPUT`     | `REAL` | Scaled output in engineering units |

---

## 🧮 Scaling Formula

The scaling formula used in this block is:

\[
\text{OUTPUT} = \left( \frac{\text{INPUT} - \text{X\_MIN\_INPUT}}{\text{X\_MAX\_INPUT} - \text{X\_MIN\_INPUT}} \right) \times (\text{Y\_MAX\_OUTPUT} - \text{Y\_MIN\_OUTPUT}) + \text{Y\_MIN\_OUTPUT}
\]

This maps the `INPUT` value proportionally from the PLC raw range to the instrument value range.

---
