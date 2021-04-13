let weapons = {
    tank: 40,
    smerch: 60,
    akm: 10,
    grad: 2000
}
class Player{
    constructor(username, health, lives, currentPosition, initialDamage, weapon){
        this.username = username
        this.health = health
        this.lives = lives
        this.currentPosition = currentPosition
        this.initialDamage = initialDamage
        this.weapon = weapon
    }

    attack(target){
        target.health -=this.initialDamage + this.weapon
        dragon.attack(player)
    }
    run(destination){
        this.currentPosition = destination
    }
}

class Dragon{
    constructor(name, health, initialDamage, weapon){
        this.name = name,
        this.health = health
        this.initialDamage = initialDamage
        this.weapon=weapon
    }
    initialDamage = 50

   
    attack(target){
        target.health -=this.initialDamage+this.weapon
    }
}

let player = new Player("Josh Smith", 200, 3, "Paris",50, weapons.akm)
let dragon = new Dragon("Toyota", 4000, 100,weapons.grad)


let userHealthbar = document.querySelector(".user-healthbar")
let dragonHealthbar = document.querySelector(".dragon-healthbar")
let playerName = document.querySelector(".player-name")
let dragonName = document.querySelector(".dragon-name")
let attackButton = document.querySelector(".attack")
attackButton.addEventListener('click', function(){
    player.attack(dragon)

})
playerName.innerHTML = player.username
dragonName.innerHTML = dragon.name


setInterval(function(){
    userHealthbar.innerHTML = `User Health: ${player.health}`
    dragonHealthbar.innerHTML = `Dragon Health: ${dragon.health}`

},500)

// Comment




