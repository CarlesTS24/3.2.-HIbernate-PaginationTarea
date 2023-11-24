package Model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "players")
public class Player {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "player_id")
    private int playerId;

    @Column(name = "birth_date")
    private Date birthDate;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    @Enumerated(EnumType.STRING)
    @Column(name = "gender")
    private Gender gender;

    @Column(name = "join_date")
    private Date joinDate;

    @Column(name = "nick")
    private String nick;

    @Column(name = "game_played")
    private String gamePlayed;

    @Column(name = "team")
    private String team;

    // Constructors

    public Player() {
    }

    public Player(Date birthDate, String firstName, String lastName, Gender gender, Date joinDate, String nick, String gamePlayed, String team) {
        this.birthDate = birthDate;
        this.firstName = firstName;
        this.lastName = lastName;
        this.gender = gender;
        this.joinDate = joinDate;
        this.nick = nick;
        this.gamePlayed = gamePlayed;
        this.team = team;
    }

    // Getters and Setters

    public int getPlayerId() {
        return playerId;
    }

    public void setPlayerId(int playerId) {
        this.playerId = playerId;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public Date getJoinDate() {
        return joinDate;
    }

    public void setJoinDate(Date joinDate) {
        this.joinDate = joinDate;
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public String getGamePlayed() {
        return gamePlayed;
    }

    public void setGamePlayed(String gamePlayed) {
        this.gamePlayed = gamePlayed;
    }

    public String getTeam() {
        return team;
    }

    public void setTeam(String team) {
        this.team = team;
    }

    // Enum for Gender

    public enum Gender {
        M,
        F
    }
    
    @Override
    public String toString() {
        return "Player{" + playerId + " " + birthDate + " " + firstName + " " + lastName + " " + gender + " " + joinDate + " " + nick + " " + gamePlayed + " " + team + "}";
    }
}
