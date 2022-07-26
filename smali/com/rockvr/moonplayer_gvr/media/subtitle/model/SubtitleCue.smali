.class public interface abstract Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleCue;
.super Ljava/lang/Object;
.source "SubtitleCue.java"


# virtual methods
.method public abstract getEndTime()Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLines()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleLine;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStartTime()Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;
.end method

.method public abstract getText()Ljava/lang/String;
.end method
