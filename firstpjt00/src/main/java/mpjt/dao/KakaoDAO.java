package mpjt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import mpjt.common.JDBCConnect;
import mpjt.dto.KakaoDTO;

public class KakaoDAO {
	   
	   public KakaoDTO kakaologin(String kakao_id) {
		    Connection conn = null;
		    PreparedStatement pstmt = null;
		    ResultSet rs = null;

		    String checkSQL = "SELECT * FROM kakao WHERE kakao_id = ?";
		    String insertSQL = "INSERT INTO kakao (kakao_id) VALUES (?)";

		    try {
		        // 데이터베이스 연결
		        conn = JDBCConnect.getConnection();

		        // 존재하는지 확인하는 쿼리 실행
		        pstmt = conn.prepareStatement(checkSQL);
		        pstmt.setString(1, kakao_id);
		        rs = pstmt.executeQuery();

		        if (rs.next()) {
		            // 로그인 성공
		            KakaoDTO kto = new KakaoDTO();
		            kto.setKakao_id(kakao_id); // 필요한 경우, 다른 정보를 추가로 설정
		            return kto;
		        } else {
		            // 존재하지 않으면 새로운 카카오 ID 삽입
		            pstmt = conn.prepareStatement(insertSQL);
		            pstmt.setString(1, kakao_id);
		            int rowsAffected = pstmt.executeUpdate();
		            if (rowsAffected > 0) {
		                // 삽입 성공
		                KakaoDTO kto = new KakaoDTO();
		                kto.setKakao_id(kakao_id); // 필요한 경우, 다른 정보를 추가로 설정
		                return kto;
		            }
		        }
		        return null; // 아이디가 없고 삽입도 실패한 경우
		    } catch (Exception e) {
		        e.printStackTrace();
		    } finally {
		        // 자원 정리
		        try {
		            if (rs != null) rs.close();
		            if (pstmt != null) pstmt.close();
		            if (conn != null) conn.close();
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
		    }
		    return null; // 데이터베이스 오류
		}
}
