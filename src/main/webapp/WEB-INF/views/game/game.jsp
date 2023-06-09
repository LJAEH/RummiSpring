<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="${contextPath}/resources/css/game/game.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/game/button.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/game/comment.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/game/popup.css">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <title>RummiKub</title>
</head>

<body>
    <!-- nav -->
    <div class="nav">
        <!-- player -->
        <div class="nav-player">
            <div class="players">
                <p class="player player1">ME</p>
                <p class="player1-tile">14</p>
            </div>
            <div class="players">
                <p class="player player2">ROBOT</p>
                <p class="player2-tile">14</p>
            </div>
        </div>
        <!-- time/tile -->
        <div class="info">
            <div class="time-text">제한 시간 01:00</div>
            <div class="remaining-tile-text">남은 타일 개수 76</div>
        </div>
        <div id="comment">comment</div>
    </div>
    <script type="text/javascript" src="${contextPath}/resources/js/game/comment.js"></script>
    <!-- robot board -->
    <div class="board-body">
        <div class="robot-board">
        </div>
        <div class="board-body-btn">
            <button class="btn tile-refresh" onclick="main_board_refresh_click()" title="게임 중 오류가 날 경우 사용해주세요">main board<br>refresh</button>
        </div>
    </div>
    
    <!-- main board -->
    <div class="board-body">
        <div class="main-board" onclick="set_board_click(clickTile)" id="tile-set">
            <!-- <div class="set-main-board" onclick="set_board_click(clickTile)"><img src="image/set.svg" class="tile-set" id="tile-set1"></div> -->
        </div>
        <div class="board-body-btn main-body-before-btn">
            <button class="btn main-before-btn skip-btn" onclick="skip_turn_click()">skip<br>turn</button>
        </div>
        <div class="board-body-btn main-body-after-btn">
            <button class="btn main-after-btn reset-btn" onclick="refresh_click()">reset</button><br>
            <button class="btn main-after-btn pass-btn" onclick="pass_click()">pass</button>
        </div>
    </div>
    <!-- player board -->
    <div class="board-body">
        <div class="player-board">
            <div class="set-player-board" onclick="player_click()"><img src="${contextPath}/resources/images/game/set.svg" class="tile-set" id="tile-set2"></div>
        </div>
        <div class="board-body-btn">
            <button class="btn player-btn r-to-b" onclick="r_to_b_click()"></button><br>
            <button class="btn player-btn a-to-z" onclick="a_to_z_click()"></button>
        </div>
    </div>
    <script type="text/javascript" src="${contextPath}/resources/js/game/robot.js"></script>
    <script type="text/javascript" src="${contextPath}/resources/js/game/game.js"></script>

    <!-- finish popup -->
    <div class="modal">
        <div class="popup">
            <h1 class="popup-title">승리</h1>
            <div class="popup-table">
                <table>
                    <tr>
                        <td class="td-player">Me</td>
                        <td class="td-score" id="me_score">0</td>
                        <td id="me_win">승</td>
                    </tr>
                    <tr>
                        <td class="td-player">Robot</td>
                        <td class="td-score" id="robot_score">-14</td>
                        <td id="robot_win">패</td>
                    </tr>
                </table>
            </div>
            <div class="popup-btn-body">
                <button class="btn popup-btn" onclick="goMain()">메인 화면</button>
                <button class="btn popup-btn" onclick="restart()">한 번 더 플레이</button>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="${contextPath}/resources/js/game/finish.js"></script>
</body>

</html>