package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import web.AppListener;

public class GamesIndie {

    private long rowId;
    private String gameTitle;
    private String gameGenre;
    private String gamePlatform;
    private String gameDeveloper;
    private String gamePublisher;
    private Date releaseDate;
    private double gamePrice;

    public static String getCreateStatement() {
        return "CREATE TABLE IF NOT EXISTS games_indie(\n"
                + "    rowid INTEGER PRIMARY KEY AUTOINCREMENT,\n"
                + "    game_title varchar(100) not null,\n"
                + "    game_genre varchar(50) not null,\n"
                + "    game_platform varchar(50) not null,\n"
                + "    game_developer varchar(100) not null,\n"
                + "    game_publisher varchar(100) not null,\n"
                + "    release_date date not null,\n"
                + "    game_price numeric(10,2)\n"
                + ")";
    }

    public GamesIndie(long rowId, String gameTitle, String gameGenre, String gamePlatform, String gameDeveloper,
            String gamePublisher, Date releaseDate, double gamePrice) {
        this.rowId = rowId;
        this.gameTitle = gameTitle;
        this.gameGenre = gameGenre;
        this.gamePlatform = gamePlatform;
        this.gameDeveloper = gameDeveloper;
        this.gamePublisher = gamePublisher;
        this.releaseDate = releaseDate;
        this.gamePrice = gamePrice;
    }

    public static GamesIndie getGame(long rowId) throws Exception {
        GamesIndie game = null;
        String SQL = "SELECT rowid, * FROM games_indie WHERE rowid=?";
        Connection con = AppListener.getConnection();
        PreparedStatement s = con.prepareStatement(SQL);
        s.setLong(1, rowId);
        ResultSet rs = s.executeQuery();
        if (rs.next()) {
            game = new GamesIndie(
                    rs.getInt("rowid"),
                    rs.getString("game_title"),
                    rs.getString("game_genre"),
                    rs.getString("game_platform"),
                    rs.getString("game_developer"),
                    rs.getString("game_publisher"),
                    rs.getDate("release_date"),
                    rs.getDouble("game_price")
            );
        }
        rs.close();
        s.close();
        con.close();
        return game;
    }

    public static ArrayList<GamesIndie> getList() throws Exception {
        ArrayList<GamesIndie> list = new ArrayList<>();
        Connection con = AppListener.getConnection();
        Statement s = con.createStatement();
        ResultSet rs = s.executeQuery("SELECT rowid, * FROM games_indie");
        while (rs.next()) {
            GamesIndie game = new GamesIndie(
                    rs.getLong("rowid"),
                    rs.getString("game_title"),
                    rs.getString("game_genre"),
                    rs.getString("game_platform"),
                    rs.getString("game_developer"),
                    rs.getString("game_publisher"),
                    rs.getDate("release_date"),
                    rs.getDouble("game_price")
            );
            list.add(game);
        }
        rs.close();
        s.close();
        con.close();
        return list;
    }

    public static ArrayList<GamesIndie> getHistoryList() throws Exception {
        ArrayList<GamesIndie> list = new ArrayList<>();
        String SQL = "SELECT rowid, * FROM games_indie";
        Connection con = AppListener.getConnection();
        PreparedStatement s = con.prepareStatement(SQL);
        ResultSet rs = s.executeQuery();
        while (rs.next()) {
            GamesIndie game = new GamesIndie(
                    rs.getLong("rowid"),
                    rs.getString("game_title"),
                    rs.getString("game_genre"),
                    rs.getString("game_platform"),
                    rs.getString("game_developer"),
                    rs.getString("game_publisher"),
                    rs.getDate("release_date"),
                    rs.getDouble("game_price")
            );
            list.add(game);
        }
        rs.close();
        s.close();
        con.close();
        return list;
    }

    public static void addGamesIndie(String gameTitle, String gameGenre, String gamePlatform, String gameDeveloper,
            String gamePublisher, Date releaseDate, double gamePrice) throws Exception {
        String SQL = "INSERT INTO games_indie (game_title, game_genre, game_platform, game_developer, game_publisher, release_date, game_price) VALUES (?, ?, ?, ?, ?, ?, ?)";
        Connection con = AppListener.getConnection();
        PreparedStatement s = con.prepareStatement(SQL);
        s.setString(1, gameTitle);
        s.setString(2, gameGenre);
        s.setString(3, gamePlatform);
        s.setString(4, gameDeveloper);
        s.setString(5, gamePublisher);
        s.setDate(6, new java.sql.Date(releaseDate.getTime()));
        s.setDouble(7, gamePrice);
        s.execute();
        s.close();
        con.close();
    }


    public long getRowId() {
        return rowId;
    }

    public void setRowId(long rowId) {
        this.rowId = rowId;
    }

    public String getGameTitle() {
        return gameTitle;
    }

    public void setGameTitle(String gameTitle) {
        this.gameTitle = gameTitle;
    }

    public String getGameGenre() {
        return gameGenre;
    }

    public void setGameGenre(String gameGenre) {
        this.gameGenre = gameGenre;
    }

    public String getGamePlatform() {
        return gamePlatform;
    }

    public void setGamePlatform(String gamePlatform) {
        this.gamePlatform = gamePlatform;
    }

    public String getGameDeveloper() {
        return gameDeveloper;
    }

    public void setGameDeveloper(String gameDeveloper) {
        this.gameDeveloper = gameDeveloper;
    }

    public String getGamePublisher() {
        return gamePublisher;
    }

    public void setGamePublisher(String gamePublisher) {
        this.gamePublisher = gamePublisher;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public double getGamePrice() {
        return gamePrice;
    }

    public void setGamePrice(double gamePrice) {
        this.gamePrice = gamePrice;
    }
}
