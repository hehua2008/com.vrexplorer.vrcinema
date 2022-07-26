.class public interface abstract Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject;
.super Ljava/lang/Object;
.source "SubtitleObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;
    }
.end annotation


# virtual methods
.method public abstract getCues()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleCue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProperties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProperty(Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;)Ljava/lang/Object;
.end method

.method public abstract hasProperty(Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject$Property;)Z
.end method
