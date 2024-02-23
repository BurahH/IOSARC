class Viewer {

    func seeMovie() {
        print("Уважаемые зрители!\nНапоминаем вам. Во время киносеанса\nиспользование звуко- и видеозаписывающей\nаппаратуры, в том числе фотоаппаратов\nи телефонов, строго запрещено")
    }
}

func see() -> () -> Void {
    let ivan = Viewer()

    let movie = {
        ivan.seeMovie()
        return
    }

    return movie
}

let seeFunction = see()
seeFunction()