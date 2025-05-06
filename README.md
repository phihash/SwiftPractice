# SwiftPractice

## 1 Color

### repeat while
```
var j = 0

repeat {
    print(j)
    j += 1
} while j < 3

if let color = colors.randomElement() {
    print(color) // "赤"とか"緑"
} else {
    print("nilだった場合")
}

## if let 使わない
let colors = ["赤", "青", "緑"]
let color = colors.randomElement()!  // ← ! をつける
print(color)
if let newName = randomNames.randomElement() {
    // newName使えるのはこのifの中だけ
}
if let は中でしか使えない
guard let は外でも使える

## guard
 guard let color = colors.randomElement() else {
        print("nilだった場合")
        return
    }

    print(color)

```
