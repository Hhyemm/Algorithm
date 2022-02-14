
import Foundation

/*
 1. 키패드에서 왼손과 오른손의 엄지손가락만을 이용하여 숫자를 입력한다. 왼손 엄지손가락은 *에서 시작하며 오른손 엄지손가락은 #에서 시작한다.
 2. 엄지손가락은 상하좌우 4가지 방향으로만 이동할 수 있으며 키패드 이동 한 칸은 거리로 1에 해당한다.
 3. 1,4,7을 입력할 때는 왼손 엄지손가락을 사용한다. 3,6,9를 입력할 때는 오른손 엄지손가락을 사용한다. 2,5,8,0을 입력할 때는 두 엄지손가락의 현재 키패드의 위치에서 더 가까운 엄지손가락을 사용한다. 만약 두 엄지손가락의 거리가 같다면 오른손잡이는 오른손 엄지손가락, 왼손잡이는 왼손 엄지손가락을 사용한다.
 4. number은 순서대로 누를 번호가 담긴 배열을 의미하며, hand는 왼손잡이인지 오른손잡이인지를 나타낸다. 번호를 누른 손가락이 왼손인지 오른손인지를 나타내는 문자열을 return 한다.
 - leftHand와 rightHand는 각각 왼쪽 엄지손가락과 오른쪽 엄지손가락의 위치를 저장한다. leftHand는 *에서 시작하므로 초기값을 10으로, rightHand는 #에서 시작하므로 초기값을 12로 한다.
 - for문으로 numbers의 범위를 돌며 범위값 n이 1,4,7이면 leftHand에 n을 저장하고 왼손으로 누르기 때문에 result에 "L"을 저장한다. 마찬가지로 n이 3,6,9이면 rightHand에 n을 저장하고 오른손으로 누르기 때문에 result에 "R"을 저장한다.
 - n이 2,5,8,0이면 n에서 leftHand를 3으로 나눈 값+나머지지 값과 n에서 rightHand를 3으로 나눈 값+나머지 값을 비교한다. 마이너스가 나올 수 있으므로 abs()를 사용하여 절대값 처리를하며 더 적은 값이 가까운 거리에 해당한다. 거리가 같은 경우에는  매개변수로 입력받은 hand에 따라 result에 "L" 또는 "R"을 저장한다.
 */


func solution(_ numbers:[Int], _ hand:String) -> String {
    var leftHand = 10
    var rightHand = 12
    var result = ""
    for i in numbers {
        var n = i
        if n == 0 {
            n = 11
        }
        switch n {
        case 1, 4, 7 :
            leftHand = n
            result += "L"
            break
        case 3, 6, 9 :
            rightHand = n
            result += "R"
            break
        default:
            if abs((n-leftHand)/3) + abs((n-leftHand)%3) < abs((n-rightHand)/3) + abs((n-rightHand)%3) {
                leftHand = n
                result += "L"
            } else if abs((n-leftHand)/3) + abs((n-leftHand)%3) > abs((n-rightHand)/3) + abs((n-rightHand)%3) {
                rightHand = n
                result += "R"
            } else {
                if hand == "right" {
                    rightHand = n
                    result += "R"
                } else {
                    leftHand = n
                    result += "L"
                }
            }
        }
    }
    return result
}

