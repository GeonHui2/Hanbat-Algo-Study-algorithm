class Solution {
    public String solution(int a, int b) {
        String[] week = {"THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"};
        int[] days = {31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        int cnt = b;
        
        for (int i = 0 ; i < a - 1; i++) {
            cnt += days[i];
        }
    return week[cnt % 7];
    }
}
