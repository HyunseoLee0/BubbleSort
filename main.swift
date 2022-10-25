var words = [String]()
let newWords: [String]

func swap(strings:inout [String],firstIndex:Int,secondIndex:Int)
{
    strings.swapAt(firstIndex,secondIndex)
}
func whetherStringIsGreater(string1:String,string2:String) -> Bool
{
    return string1.count > string2.count
}
func sort(unsortedStrings:[String]) -> [String]
{
    var tempCount = 0
    var totalCount = 0
    var functionInvoke = true
    var unsortedArray = unsortedStrings
    while(functionInvoke)
    {
        for i in 0 ..< unsortedArray.count
        {
            for j in 1 ..< unsortedArray.count - i
            {
                if(whetherStringIsGreater(string1:unsortedArray[j-1],string2:unsortedArray[j]))
                {
                    functionInvoke = true
                    tempCount += 1
                    totalCount += 1
                    swap(strings:&unsortedArray,firstIndex:j,secondIndex:j-1)
                }
            }
            if(tempCount == 0)
            {
                functionInvoke = false
                break
            }
            tempCount = 0
        }
    }
    return unsortedArray
}
while let word = readLine()
{
    if word == ""
    {
        break
    }
    else
    {
        words.append(word)
    }
}
newWords = sort(unsortedStrings:words)
print("========== The Result ==========")
for word in newWords
{
    print(word)
}
