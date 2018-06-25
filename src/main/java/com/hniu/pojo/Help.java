package com.hniu.pojo;

public class Help {
    private Integer id;

    private String title;

    private String type;

    private String contentlink;

    private Integer turnout;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getContentlink() {
        return contentlink;
    }

    public void setContentlink(String contentlink) {
        this.contentlink = contentlink == null ? null : contentlink.trim();
    }

    public Integer getTurnout() {
        return turnout;
    }

    public void setTurnout(Integer turnout) {
        this.turnout = turnout;
    }
}