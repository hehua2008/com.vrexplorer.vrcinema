.class public Lcom/rockvr/moonplayer_gvr/media/subtitle/SubParser;
.super Ljava/lang/Object;
.source "SubParser.java"


# static fields
.field private static subFormatToParser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;",
            "Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubParser;->subFormatToParser:Ljava/util/Map;

    .line 22
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubParser;->subFormatToParser:Ljava/util/Map;

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;->SrtFormat:Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

    new-instance v2, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser;

    invoke-direct {v2}, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubParser;->subFormatToParser:Ljava/util/Map;

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;->SubStaionAlphaFormat:Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

    new-instance v2, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;

    invoke-direct {v2}, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubParser;->subFormatToParser:Ljava/util/Map;

    sget-object v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;->AdvancedSSAFormat:Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

    new-instance v2, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;

    invoke-direct {v2}, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyByteToInputStream([B)Ljava/io/InputStream;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 28
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method private static copyInputStreamToByte(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 33
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 34
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 36
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 37
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v3    # "len":I
    :catch_0
    move-exception v2

    .line 42
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 44
    const/4 v4, 0x0

    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v4

    .line 39
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "len":I
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 40
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1
.end method

.method public static parseStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 49
    :try_start_0
    invoke-static {p0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubParser;->copyInputStreamToByte(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 50
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubParser;->copyByteToInputStream([B)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubParser;->copyByteToInputStream([B)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/rockvr/moonplayer_gvr/util/CodeUtil;->codeString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubParser;->parseStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 53
    .end local v0    # "bytes":[B
    :goto_0
    return-object v2

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static parseStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject;
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "extension"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 58
    sget-object v6, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubParser;->subFormatToParser:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;

    .line 59
    .local v2, "format":Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;
    invoke-virtual {v2}, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;->getExtension()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "formatExtension":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "fileExtension":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 62
    :cond_1
    sget-object v6, Lcom/rockvr/moonplayer_gvr/media/subtitle/SubParser;->subFormatToParser:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParser;

    .line 64
    .local v4, "parser":Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParser;
    :try_start_0
    invoke-interface {v4, p0, p2}, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParsingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 71
    .end local v1    # "fileExtension":Ljava/lang/String;
    .end local v2    # "format":Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;
    .end local v3    # "formatExtension":Ljava/lang/String;
    .end local v4    # "parser":Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParser;
    :cond_2
    :goto_0
    return-object v5

    .line 65
    .restart local v1    # "fileExtension":Ljava/lang/String;
    .restart local v2    # "format":Lcom/rockvr/moonplayer_gvr/media/subtitle/SubtitlesFormat;
    .restart local v3    # "formatExtension":Ljava/lang/String;
    .restart local v4    # "parser":Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParser;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method
