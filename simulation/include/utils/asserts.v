`define ASSERT(expr) \
    if (expr !== 1) \
    begin \
        $display("ASSERTION FAILED IN %m:%0d: `expr` is false", `__LINE__); \
        $finish; \
    end
