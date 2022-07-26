.class public Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser;
.super Ljava/lang/Object;
.source "SrtParser.java"

# interfaces
.implements Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;
    }
.end annotation


# static fields
.field private static htmlPattern:Ljava/util/regex/Pattern;

.field private static pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "\\{.*\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser;->pattern:Ljava/util/regex/Pattern;

    .line 30
    const-string v0, "<([^>]*)>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser;->htmlPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseTimeCode(Ljava/lang/String;)Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;
    .locals 13
    .param p1, "timeCodeString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParsingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 138
    :try_start_0
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "split":[Ljava/lang/String;
    array-length v7, v5

    if-eq v7, v8, :cond_0

    .line 141
    new-instance v7, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParsingException;

    const-string v8, "Unable to parse time code: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParsingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v5    # "split":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParsingException;

    const-string v8, "Unable to parse time code: %s"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object p1, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 145
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "split":[Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    :try_start_1
    aget-object v7, v5, v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "split1":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    .line 147
    new-instance v7, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParsingException;

    const-string v8, "Unable to parse time code: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 151
    :cond_1
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 152
    .local v1, "hour":I
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 153
    .local v3, "minute":I
    const/4 v7, 0x2

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 154
    .local v4, "second":I
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 156
    .local v2, "millisecond":I
    new-instance v7, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    invoke-direct {v7, v1, v3, v4, v2}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;-><init>(IIII)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v7
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParsingException;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser;->parse(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject;
    .locals 13
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParsingException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v7, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtObject;

    invoke-direct {v7}, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtObject;-><init>()V

    .line 51
    .local v7, "srtObject":Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtObject;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/UnicodeReader;

    invoke-direct {v9, p1, p2}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/UnicodeReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 52
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v8, ""

    .line 53
    .local v8, "textLine":Ljava/lang/String;
    sget-object v2, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->NONE:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    .line 54
    .local v2, "cursorStatus":Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;
    const/4 v1, 0x0

    .line 56
    .local v1, "cue":Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtCue;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 58
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 60
    sget-object v9, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->NONE:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    if-ne v2, v9, :cond_1

    .line 61
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 66
    new-instance v1, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtCue;

    .end local v1    # "cue":Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtCue;
    invoke-direct {v1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtCue;-><init>()V

    .line 70
    .restart local v1    # "cue":Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtCue;
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    invoke-virtual {v1, v8}, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtCue;->setId(Ljava/lang/String;)V

    .line 78
    sget-object v2, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->CUE_ID:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    .line 79
    goto :goto_0

    .line 71
    :catch_0
    move-exception v3

    .line 72
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParsingException;

    const-string v10, "Unable to parse cue number: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParsingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 84
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    sget-object v9, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->CUE_ID:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    if-ne v2, v9, :cond_3

    .line 85
    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 86
    .local v4, "index1":I
    const/16 v9, 0x3e

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    add-int/lit8 v5, v9, 0x1

    .line 87
    .local v5, "index2":I
    invoke-virtual {v8, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "-->"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 88
    new-instance v9, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParsingException;

    const-string v10, "Timecode textLine is badly formated: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParsingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 92
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser;->parseTimeCode(Ljava/lang/String;)Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtCue;->setStartTime(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;)V

    .line 93
    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser;->parseTimeCode(Ljava/lang/String;)Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtCue;->setEndTime(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;)V

    .line 94
    sget-object v2, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->CUE_TIMECODE:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    .line 95
    goto/16 :goto_0

    .line 99
    .end local v4    # "index1":I
    .end local v5    # "index2":I
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    sget-object v9, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->CUE_TIMECODE:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    if-eq v2, v9, :cond_4

    sget-object v9, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->CUE_TEXT:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    if-ne v2, v9, :cond_7

    .line 100
    :cond_4
    sget-object v9, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 101
    sget-object v9, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 103
    :cond_5
    sget-object v9, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser;->htmlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 104
    sget-object v9, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser;->htmlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 106
    :cond_6
    new-instance v6, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTextLine;

    invoke-direct {v6}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTextLine;-><init>()V

    .line 107
    .local v6, "line":Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTextLine;
    new-instance v9, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitlePlainText;

    invoke-direct {v9, v8}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitlePlainText;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTextLine;->addText(Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleText;)V

    .line 108
    invoke-virtual {v1, v6}, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtCue;->addLine(Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleLine;)V

    .line 109
    sget-object v2, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->CUE_TEXT:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    .line 110
    goto/16 :goto_0

    .line 113
    .end local v6    # "line":Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTextLine;
    :cond_7
    sget-object v9, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->CUE_TIMECODE:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    if-ne v2, v9, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 117
    :cond_8
    sget-object v9, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->CUE_TEXT:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    if-ne v2, v9, :cond_9

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 118
    invoke-virtual {v7, v1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtObject;->addCue(Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleCue;)V

    .line 119
    const/4 v1, 0x0

    .line 120
    sget-object v2, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;->NONE:Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtParser$CursorStatus;

    .line 121
    goto/16 :goto_0

    .line 124
    :cond_9
    new-instance v9, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParsingException;

    const-string v10, "Unexpected line: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParsingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 128
    :cond_a
    if-eqz v1, :cond_b

    .line 129
    invoke-virtual {v7, v1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/srt/SrtObject;->addCue(Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleCue;)V

    .line 132
    :cond_b
    return-object v7
.end method
