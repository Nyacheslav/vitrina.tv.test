# vitrina.tv.test
Тестовое задание для vitrina.tv

Необходимо реализовать простейшее приложение, которое будет отображать список случайной длины от 10 до 100 элементов.
При тапе по элементу, открывать новый экран с отображением подробной информации об элементе.
Список формируется случайным способом из объектов трех типов:

struct Notice {
  var flightDate: Date?
  var gate: String?
}

class Event {
  var startTime: Date?
  var endTime: Date?
  var name: String!
}

class Move {
  var fromPlace: String?
  var toPlace: String?
  var estimateTime: TimeInterval?
}
