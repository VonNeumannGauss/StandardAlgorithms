//
//  main.swift
//  StandardAlgorithms
//
//  Created by Zachary Marinov on 11/11/20.
//  Copyright © 2020 VonNeumannGauss. All rights reserved.
//

import Foundation

print("""
This application contains the following algorithms:
Searches:
1) Linear Search
2) Binary Search
Sorts:
3) Bubble Sort
4) Merge Sort
5) Quick Sort
6) Insertion Sort
""")
print("Please input the number corresponding to the algorithm you would like to learn more about.")
if let string = readLine() {
    if let number = Int(string) {
        if (number >= 0) || (number <= 6) {
            let nameArray = ["Linear Search", "Binary Search", "Bubble Sort", "Merge Sort", "Quick Sort", "Insertion Sort"]
            let descriptionArray = [
                    "Linear search passes across an array from left to right, and checks each item to see if it is equal to a particular value. If it is, it returns 'true'. Otherwise, it returns 'false', indicating that the value is not present.",
                    "Binary search is a 'divide and conquer' algorithm. It goes straight to the middle of the array, and compares the value of the item there (item) to the one it needs to find (itemToFind). If item = itemToFind, it finishes. If item > itemToFind, then it will repeat this process for the left half of the array. If item < itemToFind, it will repeat this process on the right half of the array. \n One thing to note is that binary search REQUIRES a sorted array in order to work (as it can only afford to consider halves if it knows that they will definitively contain the item, which is only true if they are sorted in some order).",
                    "Bubble sort makes linear passes through the array, swapping adjacent items every time the left one exceeds the right one. After n passes, the largest n items in the array will have been sorted. It knows that the array is sorted only it makes a pass without swaps.",
                    "Merge sort is a 'divide and conquer' algorithm. It recursively splits the array into smaller and smaller halves, until these sections contain only one element each. It then merges them together pairwise in the exact same order that it divided them.",
                    "Quick sort sets a pivot and then compares all items in the array to that pivot, placing them into a 'left' (for items smaller than the pivot) and a 'right' (for items larger than or equal to the pivot) subarray. This is recursively performed on the subarrays, which are then pieced back together as 'left + pivot + right'",
                    "Insertion sort considers the first item in the array 'sorted'. Then it iteratively compares each of the remaining items to all of the items in the 'sorted' section until the item being 'inserted' is sandwiched between two values, at which point it is inserted."
                ]
            let bigOArray = [
                """
                Best case: O(1) time complexity (the item is at the beginning of the array), O(1) space complexity
                Worst case: O(N) time complexity (the item is at the end of the array), O(1) space complexity
                Average case: O(N) time complexity (the item is at the middle of the array, but this value still linearly grows with N, so it's O(N)), O(1) space complexity
                """,
                """
                Note: this implementation of binary search is recursive. However, there are iterative implementations with better space complexity.
                Best case: O(1) time complexity (the item is at the middle of the array), O(1) space complexity
                Worst case: O(log(N)) time complexity (the item is at the beginning/end of the array), O(log(N)) space complexity
                Average case: O(log(N)) time complexity, O(log(N)) space complexity
                """,
                """
                Best case: O(N) time complexity (the array is sorted, but it has to check), O(1) space complexity
                Worst case: O(N^2) time complexity (the array is reverse sorted, so N(choose)2 = N(N-1)/2 swaps needed), O(1) space complexity
                Average case: O(N^2) time complexity, O(1) space complexity
                """,
                """
                Best case: O(Nlog(N)) time complexity, O(N) space complexity
                Worst case: O(Nlog(N)) time complexity, O(N) space complexity
                Average case: O(Nlog(N)) time complexity (always the same as it must split the array and then merge linearly), O(N) space complexity (O(N) for the N arrays (where N is the length of the input array))
                """,
                """
                Note: this implementation of quick sort is recursive. However, there are iterative implementations with better space complexity (O(1) space complexity)
                Best case: O(Nlog(N)) time complexity, O(log(N)) space complexity
                Worst case: O(Nlog(N)) time complexity, O(log(N)) space complexity
                Average case: O(Nlog(N)) time complexity (NlogN as every sweep to create left/right subarrays is O(N) and you do this O(log(N)) times for each of the 2log(N) subarrays), O(log(N)) space complexity (as log(N) subarrays created - 2 at every step)
                """,
                """
                Best case: O(N) time complexity (already sorted), O(1) space complexity
                Worst case: O(N^2) time complexity (completely reversed), O(1) space complexity
                Average case: O(N^2) time complexity (half sorted, half reversed), O(1) space complexity (it doesn't create any additional arrays)
                """
            ]
            let algorithmName = nameArray[number-1]
            print("The name of this algorithm is: \(algorithmName)")
            print(descriptionArray[number-1])
            print(bigOArray[number-1])
            let searching = Searching()
            let sorting = Sorting()
            switch number {
                case 1:
                    var data = [Int]()
                    for _ in 1...Int.random(in:5...20) {
                        data.append(Int.random(in:1...100))
                    }
                    let input = (data: data, itemToFind: Int.random(in:1...100))
                    let output = searching.linearSearch(data: input.data, itemToFind: input.itemToFind)
                    print("Input: \(input)")
                    print("Output: \(output)")
                case 2:
                    var data = [Int]()
                    for _ in 1...Int.random(in:5...20) {
                        data.append(Int.random(in:1...100))
                    }
                    //this is Apple's call, which runs in O(nlogn). It's probably merge sort
                    data.sort()
                    let input = (data: data, itemToFind: Int.random(in:1...100))
                    let output = searching.binarySearch(data: input.data, itemToFind: input.itemToFind)
                    print("Input: \(input)")
                    print("Output: \(output)")
                case 3:
                    var input = [Int]()
                    for _ in 1...Int.random(in:5...20) {
                        input.append(Int.random(in:1...100))
                    }
                    let output = sorting.bubbleSort(data: input)
                    print("Input: \(input)")
                    print("Output: \(output)")
                case 4:
                    var input = [Int]()
                    for _ in 1...Int.random(in:5...20) {
                        input.append(Int.random(in:1...100))
                    }
                    let output = sorting.mergeSort(data: input)
                    print("Input: \(input)")
                    print("Output: \(output)")
                case 5:
                    var input = [Int]()
                    for _ in 1...Int.random(in:5...20) {
                        input.append(Int.random(in:1...100))
                    }
                    let output = sorting.quickSort(data: input)
                    print("Input: \(input)")
                    print("Output: \(output)")
                case 6:
                    var input = [Int]()
                    for _ in 1...Int.random(in:5...20) {
                        input.append(Int.random(in:1...100))
                    }
                    let output = sorting.insertionSort(data: input)
                    print("Input: \(input)")
                    print("Output: \(output)")
                default:
                    print("Thanks for using this application. Have a good day/night!")
                }
            }
        }
    }
