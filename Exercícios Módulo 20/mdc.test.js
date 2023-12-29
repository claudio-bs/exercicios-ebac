const { calcularMDC } = require('./mdc');

describe('calcular MDC de dois números', () => {
    it('MDC', () => {
        expect(calcularMDC(752, 850)).toBe(2)
    });
    it('MDC', () => {
        expect(calcularMDC(963, 147)).toBe(3)
    });
});