import Quick
import Nimble

class MathSpec: QuickSpec {
    override func spec() {
        describe("clamp") {
            it("should return the number to clamp given if it's within the bounds") {
                expect(clamp(0, -1, 1) == 0).to(beTruthy())
            }

            it("should return the upper bound if the number to clamp is above the upper bound") {
                expect(clamp(2, -1, 1) == 1).to(beTruthy())
            }

            it("should return the lower bound if the number to clamp is below the lower bound") {
                expect(clamp(-2, -1, 1) == -1).to(beTruthy())
            }
        }
    }
}
