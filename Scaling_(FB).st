FUNCTION_BLOCK ANALOG_SCALING
VAR_INPUT
    X_IN : REAL; // Digital Analog Scaled Input value

    // Digital Analog PLC Raw values
    X_MIN : REAL; // Minimum X PLC Raw values
    X_MAX : REAL; // Maximum X PLC Raw values

    // Digital Analog Instrument values
    Y_MIN : REAL; // Minimum Y Instrument values
    Y_MAX : REAL; // Maximum Y Instrument values
END_VAR

VAR_OUTPUT
    Y_OUT : REAL; // Digital Analog Scaled output value
END_VAR
END_FUNCTION_BLOCK

// Function to scale the input value from PLC raw values to instrument values
Y_OUT := ((X_IN - X_MIN) * (Y_MAX - Y_MIN)) / (X_MAX - X_MIN) + Y_MIN;