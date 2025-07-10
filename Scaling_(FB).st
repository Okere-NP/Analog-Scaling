FUNCTION_BLOCK ANALOG_SCALING
VAR_INPUT
    INPUT: REAL; // Digital Analog Scaled Input value

    // Digital Analog PLC Raw values
    X_MIN_INPUT: REAL; // Minimum X PLC Raw values
    X_MAX_INPUT: REAL; // Maximum X PLC Raw values

    // Digital Analog Instrument values
    Y_MIN_OUTPUT: REAL; // Minimum Y Instrument values
    Y_MAX_OUTPUT: REAL; // Maximum Y Instrument values
END_VAR

VAR_OUTPUT
    OUTPUT: REAL; // Digital Analog Scaled output value
END_VAR
END_FUNCTION_BLOCK

// Function to scale the input value from PLC raw values to instrument values
OUTPUT := ((INPUT - X_MIN_INPUT) * (Y_MAX_OUTPUT - Y_MIN_OUTPUT)) / (X_MAX_INPUT - X_MIN_INPUT) + Y_MIN_OUTPUT;