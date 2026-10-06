public static List<List<Integer>> threeSum(List<Integer> nums) {
    List<List<Integer>> result = new List<List<Integer>>();

    if (nums == null || nums.size() < 3) {
        return result;
    }

    List<Integer> sorted = nums.clone();
    sorted.sort();

    Integer n = sorted.size();

    for (Integer i = 0; i < n - 2; i++) {
        if (sorted[i] > 0) {
            break;
        }

        if (i > 0 && sorted[i] == sorted[i - 1]) {
            continue;
        }

        Integer left = i + 1;
        Integer right = n - 1;

        while (left < right) {
            Integer sum = sorted[i] + sorted[left] + sorted[right];

            if (sum == 0) {
                result.add(new List<Integer>{ sorted[i], sorted[left], sorted[right] });

                while (left < right && sorted[left] == sorted[left + 1]) {
                    left++;
                }
                while (left < right && sorted[right] == sorted[right - 1]) {
                    right--;
                }
                left++;
                right--;
            } else if (sum < 0) {
                left++;
            } else {
                right--;
            }
        }
    }

    return result;
}
