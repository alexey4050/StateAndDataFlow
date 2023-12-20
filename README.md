# Работа с зависимостями данных
* Основные принципы
* Обертки над свойствами
* @State
* @Binding
* @StateObject and @EnvironmentObject

## Домашнее задание: 
1. Необходимо доработать проект из лекции. При вводе имени справа от него должно отображаться количество внесенных символов. Если имя валидно, то количество должно быть зеленого цвета, иначе — красного. Кнопка ОК так же должна быть доступна только при валидном значении имени. Имя считается валидным, если в нем от трех символов и выше.

2. Имя пользователя и статус его регистрации необходимо хранить в UserDefaults. Для этого можно реализовать классический синглтон StorageManager или воспользоваться оберткой @AppStorage, которая позволяет работать с UserDefaults напрямую.

3. Реализуйте кнопку Logout, для возврата на экран логина.