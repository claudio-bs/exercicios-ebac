const { maior, menor } = require('./indices');

describe('indíces númericos de maior e menor valor', () => {
    it('maior valor', () => {
        expect(maior(9, 8, 7)).toBe(9);
    });
    it('menor valor', () => {
        expect(menor(9, 8, 7)).toBe(7);
    });
});