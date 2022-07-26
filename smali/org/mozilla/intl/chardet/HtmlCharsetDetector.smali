.class public Lorg/mozilla/intl/chardet/HtmlCharsetDetector;
.super Ljava/lang/Object;
.source "HtmlCharsetDetector.java"


# static fields
.field public static found:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lorg/mozilla/intl/chardet/HtmlCharsetDetector;->found:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 14
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 53
    array-length v11, p0

    if-eq v11, v12, :cond_1

    array-length v11, p0

    if-eq v11, v13, :cond_1

    .line 55
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Usage: HtmlCharsetDetector <url> [<languageHint>]"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Where <url> is http://..."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "For optional <languageHint>. Use following..."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "\t\t1 => Japanese"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "\t\t2 => Chinese"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "\t\t3 => Simplified Chinese"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "\t\t4 => Traditional Chinese"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "\t\t5 => Korean"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "\t\t6 => Dont know (default)"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void

    .line 73
    :cond_1
    array-length v11, p0

    if-ne v11, v13, :cond_4

    aget-object v11, p0, v12

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 75
    .local v6, "lang":I
    :goto_0
    new-instance v1, Lorg/mozilla/intl/chardet/nsDetector;

    invoke-direct {v1, v6}, Lorg/mozilla/intl/chardet/nsDetector;-><init>(I)V

    .line 80
    .local v1, "det":Lorg/mozilla/intl/chardet/nsDetector;
    new-instance v11, Lorg/mozilla/intl/chardet/HtmlCharsetDetector$1;

    invoke-direct {v11}, Lorg/mozilla/intl/chardet/HtmlCharsetDetector$1;-><init>()V

    invoke-virtual {v1, v11}, Lorg/mozilla/intl/chardet/nsDetector;->Init(Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;)V

    .line 87
    new-instance v9, Ljava/net/URL;

    aget-object v11, p0, v10

    invoke-direct {v9, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 88
    .local v9, "url":Ljava/net/URL;
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 90
    .local v4, "imp":Ljava/io/BufferedInputStream;
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 92
    .local v0, "buf":[B
    const/4 v2, 0x0

    .line 93
    .local v2, "done":Z
    const/4 v5, 0x1

    .line 95
    .local v5, "isAscii":Z
    :cond_2
    :goto_1
    array-length v11, v0

    invoke-virtual {v4, v0, v10, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    .local v7, "len":I
    const/4 v11, -0x1

    if-eq v7, v11, :cond_5

    .line 98
    if-eqz v5, :cond_3

    .line 99
    invoke-virtual {v1, v0, v7}, Lorg/mozilla/intl/chardet/nsDetector;->isAscii([BI)Z

    move-result v5

    .line 102
    :cond_3
    if-nez v5, :cond_2

    if-nez v2, :cond_2

    .line 103
    invoke-virtual {v1, v0, v7, v10}, Lorg/mozilla/intl/chardet/nsDetector;->DoIt([BIZ)Z

    move-result v2

    goto :goto_1

    .end local v0    # "buf":[B
    .end local v1    # "det":Lorg/mozilla/intl/chardet/nsDetector;
    .end local v2    # "done":Z
    .end local v4    # "imp":Ljava/io/BufferedInputStream;
    .end local v5    # "isAscii":Z
    .end local v6    # "lang":I
    .end local v7    # "len":I
    .end local v9    # "url":Ljava/net/URL;
    :cond_4
    move v6, v10

    .line 73
    goto :goto_0

    .line 105
    .restart local v0    # "buf":[B
    .restart local v1    # "det":Lorg/mozilla/intl/chardet/nsDetector;
    .restart local v2    # "done":Z
    .restart local v4    # "imp":Ljava/io/BufferedInputStream;
    .restart local v5    # "isAscii":Z
    .restart local v6    # "lang":I
    .restart local v7    # "len":I
    .restart local v9    # "url":Ljava/net/URL;
    :cond_5
    invoke-virtual {v1}, Lorg/mozilla/intl/chardet/nsDetector;->DataEnd()V

    .line 107
    if-eqz v5, :cond_6

    .line 108
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "CHARSET = ASCII"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    sput-boolean v12, Lorg/mozilla/intl/chardet/HtmlCharsetDetector;->found:Z

    .line 112
    :cond_6
    sget-boolean v10, Lorg/mozilla/intl/chardet/HtmlCharsetDetector;->found:Z

    if-nez v10, :cond_0

    .line 113
    invoke-virtual {v1}, Lorg/mozilla/intl/chardet/nsDetector;->getProbableCharsets()[Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, "prob":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v10, v8

    if-ge v3, v10, :cond_0

    .line 115
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Probable Charset = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v8, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
