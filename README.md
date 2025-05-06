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


```
