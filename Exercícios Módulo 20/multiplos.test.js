const { multiplos } = require('./multiplos')

describe('soma de todos os números múltiplos de outros dois números abaixo de 1000', () => {
    it('soma dos múltiplos de 5 ou 7', () => {
        expect(multiplos(5,7)).toBe(156361)
    });
    it('soma dos múltiplos de 3 ou 5', () => {
        expect(multiplos(3,5)).toBe(233168)
    });
    it('soma dos múltiplos de 7 ou 9', () => {
        expect(multiplos(7,9)).toBe(119455)
    });
});