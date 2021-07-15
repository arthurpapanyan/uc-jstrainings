
function getData(data){
    return data
}
let p = new Promise((resolve, reject) => {resolve("SomeValue")})



test('Expects functionalites', () => {
    expect(getData("null")).not.toBeNull()
    expect(getData(undefined)).toBeFalsy()

    expect(getData("Lorem Ipsum dolor sit amet consectetur")).toContain("d")
    expect(getData({a:1})).toEqual({a:1})
    expect(getData("SomeValue")).toBe("SomeValue")
    // expect(getData(5+"str")).toBeNaN()

    

    expect(Promise.resolve("SomeValue")).resolves.toBe("SomeValue")
    expect(Promise.reject("Error: 128")).rejects.toContain("Error")


});


/**
 * toBeNull()
 * toBeTruthy()
 * toContain()
 * toEqual()
 * toBeFalsy
 * toBe()
 * toBeNan()
 * .resolves()
 * .rejects()
 * .not()
**/
 
