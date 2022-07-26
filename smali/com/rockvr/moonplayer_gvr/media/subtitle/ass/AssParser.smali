.class public Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;
.super Ljava/lang/Object;
.source "AssParser.java"

# interfaces
.implements Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParser;


# static fields
.field private static EndColumn:Ljava/lang/String;

.field private static EventLine:Ljava/lang/String;

.field private static Separator:Ljava/lang/String;

.field private static StartColumn:Ljava/lang/String;

.field private static TextColumn:Ljava/lang/String;

.field private static htmlTag:Ljava/util/regex/Pattern;

.field private static newLineTag:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "\\\\N"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->newLineTag:Ljava/util/regex/Pattern;

    .line 32
    const-string v0, "(<[^>]+>)|(\\{.*\\})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->htmlTag:Ljava/util/regex/Pattern;

    .line 34
    const-string v0, "[Events]"

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->EventLine:Ljava/lang/String;

    .line 35
    const-string v0, ","

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->Separator:Ljava/lang/String;

    .line 37
    const-string v0, "Start"

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->StartColumn:Ljava/lang/String;

    .line 38
    const-string v0, "End"

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->EndColumn:Ljava/lang/String;

    .line 39
    const-string v0, "Text"

    sput-object v0, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->TextColumn:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseTimeCode(Ljava/lang/String;)Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;
    .locals 11
    .param p1, "timeCodeString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParsingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 120
    :try_start_0
    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "times":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 122
    .local v1, "hour":I
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 123
    .local v3, "minute":I
    const/4 v7, 0x2

    aget-object v7, v6, v7

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "secondAndMills":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 125
    .local v4, "second":I
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 126
    .local v2, "millisecond":I
    new-instance v7, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    invoke-direct {v7, v1, v3, v4, v2}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 127
    .end local v1    # "hour":I
    .end local v2    # "millisecond":I
    .end local v3    # "minute":I
    .end local v4    # "second":I
    .end local v5    # "secondAndMills":[Ljava/lang/String;
    .end local v6    # "times":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParsingException;

    const-string v8, "Unable to parse time code: %s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleParsingException;-><init>(Ljava/lang/String;)V

    throw v7
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
    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->parse(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleObject;
    .locals 25
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
    .line 49
    new-instance v3, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssObject;

    invoke-direct {v3}, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssObject;-><init>()V

    .line 52
    .local v3, "assObject":Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssObject;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 53
    .local v4, "br":Ljava/io/BufferedReader;
    const-string v18, ""

    .line 54
    .local v18, "textLine":Ljava/lang/String;
    const/4 v7, 0x0

    .line 56
    .local v7, "cue":Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssCue;
    const/4 v13, 0x1

    .line 58
    .local v13, "lineNumber":I
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 59
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 60
    sget-object v20, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->EventLine:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 66
    :cond_0
    if-eqz v18, :cond_6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_6

    .line 67
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 68
    .local v11, "headerLine":Ljava/lang/String;
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_5

    .line 69
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    const-string v21, " "

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 70
    sget-object v20, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->Separator:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 71
    .local v5, "columnHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v20, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->StartColumn:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v15

    .line 72
    .local v15, "startIndexColumn":I
    sget-object v20, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->EndColumn:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 73
    .local v9, "endIndexColumn":I
    sget-object v20, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->TextColumn:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v17

    .line 75
    .local v17, "textIndexColumn":I
    if-lez v15, :cond_4

    if-lez v9, :cond_4

    if-lez v17, :cond_4

    .line 76
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_7

    .line 77
    new-instance v7, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssCue;

    .end local v7    # "cue":Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssCue;
    invoke-direct {v7}, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssCue;-><init>()V

    .line 79
    .restart local v7    # "cue":Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssCue;
    sget-object v20, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->Separator:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "columns":[Ljava/lang/String;
    aget-object v20, v6, v15

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 81
    .local v16, "startText":Ljava/lang/String;
    aget-object v20, v6, v9

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 82
    .local v10, "endText":Ljava/lang/String;
    aget-object v20, v6, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 84
    .local v19, "textText":Ljava/lang/String;
    sget-object v20, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->htmlTag:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 85
    sget-object v20, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->htmlTag:Ljava/util/regex/Pattern;

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 87
    :cond_1
    sget-object v20, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->newLineTag:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 88
    sget-object v20, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->newLineTag:Ljava/util/regex/Pattern;

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 91
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->parseTimeCode(Ljava/lang/String;)Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    move-result-object v14

    .line 92
    .local v14, "start":Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->parseTimeCode(Ljava/lang/String;)Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;

    move-result-object v8

    .line 94
    .local v8, "end":Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;
    invoke-virtual {v7, v14}, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssCue;->setStartTime(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;)V

    .line 95
    invoke-virtual {v7, v8}, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssCue;->setEndTime(Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;)V

    .line 96
    new-instance v12, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTextLine;

    invoke-direct {v12}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTextLine;-><init>()V

    .line 97
    .local v12, "line":Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTextLine;
    new-instance v20, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitlePlainText;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitlePlainText;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTextLine;->addText(Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleText;)V

    .line 98
    invoke-virtual {v7, v12}, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssCue;->addLine(Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleLine;)V

    .line 99
    invoke-virtual {v3, v7}, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssObject;->addCue(Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleCue;)V

    goto/16 :goto_1

    .line 63
    .end local v5    # "columnHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "columns":[Ljava/lang/String;
    .end local v8    # "end":Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;
    .end local v9    # "endIndexColumn":I
    .end local v10    # "endText":Ljava/lang/String;
    .end local v11    # "headerLine":Ljava/lang/String;
    .end local v12    # "line":Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTextLine;
    .end local v14    # "start":Lcom/rockvr/moonplayer_gvr/media/subtitle/util/SubtitleTimeCode;
    .end local v15    # "startIndexColumn":I
    .end local v16    # "startText":Ljava/lang/String;
    .end local v17    # "textIndexColumn":I
    .end local v19    # "textText":Ljava/lang/String;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 102
    .restart local v5    # "columnHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "endIndexColumn":I
    .restart local v11    # "headerLine":Ljava/lang/String;
    .restart local v15    # "startIndexColumn":I
    .restart local v17    # "textIndexColumn":I
    :cond_4
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "Couldn\'t find all the necessary columns headers %s,%s,%s in header line %s"

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    sget-object v24, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->StartColumn:Ljava/lang/String;

    aput-object v24, v22, v23

    const/16 v23, 0x1

    sget-object v24, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->EndColumn:Ljava/lang/String;

    aput-object v24, v22, v23

    const/16 v23, 0x2

    sget-object v24, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->TextColumn:Ljava/lang/String;

    aput-object v24, v22, v23

    const/16 v23, 0x3

    aput-object v11, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 105
    .end local v5    # "columnHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "endIndexColumn":I
    .end local v15    # "startIndexColumn":I
    .end local v17    # "textIndexColumn":I
    :cond_5
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "The header line after the line %s was null -> no need to continue parsing"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v18, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 108
    .end local v11    # "headerLine":Ljava/lang/String;
    :cond_6
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "We reached line %s with lin number %s without finding to Event section %s "

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v18, v22, v23

    const/16 v23, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    sget-object v24, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssParser;->EventLine:Ljava/lang/String;

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 111
    .restart local v5    # "columnHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "endIndexColumn":I
    .restart local v11    # "headerLine":Ljava/lang/String;
    .restart local v15    # "startIndexColumn":I
    .restart local v17    # "textIndexColumn":I
    :cond_7
    if-eqz v7, :cond_8

    .line 112
    invoke-virtual {v3, v7}, Lcom/rockvr/moonplayer_gvr/media/subtitle/ass/AssObject;->addCue(Lcom/rockvr/moonplayer_gvr/media/subtitle/model/SubtitleCue;)V

    .line 115
    :cond_8
    return-object v3
.end method
