.class public interface abstract Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParser;
.super Ljava/lang/Object;
.source "SubtitleParser.java"


# virtual methods
.method public abstract parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParsingException;
        }
    .end annotation
.end method

.method public abstract parse(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParsingException;
        }
    .end annotation
.end method
