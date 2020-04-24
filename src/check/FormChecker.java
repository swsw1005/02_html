package check;

//데이터 유효성 체크
public class FormChecker {

	public static boolean isNull(String m) {

		if (m == null || m.trim().length() == 0) {
			return true;// null 이면(입력하지 않았으면)
		}
		return false;
	}// isNull end

	// ---------------------------------
	// isNumber
	// ---------------------------------
	public static boolean isNumber(String m) {
		if (isNull(m)) {
			return false;// 입력하지 않았으면
		}
		m = m.trim();// 공백제거
		int n = m.length();

		for (int i = 0; i < n; i++) {

			char c = m.charAt(i);

			// 0~9 사이가 아니면, 숫자가 아니면
			if (!('0' <= c && '9' >= c)) {
				return false;
			}
		} // for
		return true;
	}// isNumber end

	// ---------------------------------
	// 암호 체크
	// ---------------------------------
	public static boolean isSame(String m, String n) {
		if (isNull(m) || isNull(n)) {
			return false;// 입력하지 않았으면
		} // if
		m = m.trim();
		n = n.trim();

		if (m.equals(n)) {
			return true;// 암호가 일치하면
		} // if
		return false;
	}// isSame end

	// ---------------------------------
	// ID 체크
	// ---------------------------------
	public static boolean isID(String m) {
		if (isNull(m)) {
			return false;// 입력하지 않았으면
		} // if
		m = m.trim();
		m = m.toUpperCase();// 대문자로 변환

		char c = m.charAt(0);// 첫글자는 영문자 인지를 체크하려고
		if (!('A' <= c && 'Z' >= c)) {
			return false;
		} // if

		for (int i = 1; i < m.length(); i++) {
			c = m.charAt(i);

			if (!(('A' <= c && c <= 'Z') || ('0' <= c && c <= '9') || (c == '_'))) {
				return false;
			}
		} // for
		return true;
	}// isID end

	// ---------------------------------
	// card 체크
	// ---------------------------------
	public static boolean isCardNumber(String m) {
		if (isNull(m)) {
			return false;
			// 카드번호를 입력하시요
		} // if

		m = m.trim();
		if (m.length() != 16) {
			return false;
		} // if

		if (isNumber(m)) {// 숫자 이면
			return true;
			// 숫자만 입력하시요
		} // if
		return false;
	}// isCardNumber end

	// ---------------------------------
	// email 체크
	// ---------------------------------
	public static boolean isEmail(String m) {
		if (isNull(m)) {
			return false;// 입력하지 않았으면
		} // if

		int n = m.indexOf("@");
		if (n < 0) {
			return false;
		} // if

		n = m.indexOf(".");
		if (n < 0) {
			return false;
		} // if
		return true;
	}// isEmail end
		// ---------------------------------
		// 주민번호 체크
		// ---------------------------------

	public static boolean isSSN(String s1, String s2) {
		if (isNull(s1) || isNull(s2)) {
			return false;
		} // if

		if (!isNumber(s1) || !isNumber(s2)) {
			return false;
		}

		s1 = s1.trim();
		s2 = s2.trim();

		if (s1.length() != 6) {
			return false;
		}
		if (s2.length() != 7) {
			return false;
		}

		int hap = 0;

		for (int i = 0; i < 6; i++) {
			hap += (s1.charAt(i) - '0') * (i + 2);
		} // for

		/*
		 * '0''1''2' '8''9' 48 49 50 51 52 53 54 55 56 57 ---ASCII Code 값 0 1 2 3 4 5 6
		 * 7 8 9
		 */
		int n0 = s2.charAt(0) - '0';// 설명 '8'-'0' (56-48=8)
		int n1 = s2.charAt(1) - '0';
		int n2 = s2.charAt(2) - '0';
		int n3 = s2.charAt(3) - '0';
		int n4 = s2.charAt(4) - '0';
		int n5 = s2.charAt(5) - '0';
		int n6 = s2.charAt(6) - '0';

		hap += (n0 * 8) + (n1 * 9) + (n2 * 2) + (n3 * 3) + (n4 * 4) + (n5 * 5);
		int na = hap % 11;// 나머지 구함
		int nn = 11 - na;// 11-나머지
		int na2 = nn % 10;// 주민번호 끝 자리 계산

		if (na2 != n6) {// 끝자리 비교
			return false;
		}
		return true;
	}// isSSN end

}// class end
