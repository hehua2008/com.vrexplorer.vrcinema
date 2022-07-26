.class public Lcn/xddai/chardet/CharsetDetector;
.super Ljava/lang/Object;
.source "CharsetDetector.java"


# instance fields
.field private found:Z

.field private lang:I

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/xddai/chardet/CharsetDetector;->found:Z

    return-void
.end method

.method static synthetic access$002(Lcn/xddai/chardet/CharsetDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/xddai/chardet/CharsetDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcn/xddai/chardet/CharsetDetector;->found:Z

    return p1
.end method

.method static synthetic access$102(Lcn/xddai/chardet/CharsetDetector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/xddai/chardet/CharsetDetector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcn/xddai/chardet/CharsetDetector;->result:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public detectAllCharset(Ljava/io/InputStream;)[Ljava/lang/String;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcn/xddai/chardet/CharsetDetector;->lang:I

    .line 83
    invoke-virtual {p0, p1}, Lcn/xddai/chardet/CharsetDetector;->detectChineseCharset(Ljava/io/InputStream;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    throw v0
.end method

.method public detectChineseCharset(Ljava/io/InputStream;)[Ljava/lang/String;
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 23
    const/4 v6, 0x2

    iput v6, p0, Lcn/xddai/chardet/CharsetDetector;->lang:I

    .line 26
    new-instance v1, Lorg/mozilla/intl/chardet/nsDetector;

    iget v6, p0, Lcn/xddai/chardet/CharsetDetector;->lang:I

    invoke-direct {v1, v6}, Lorg/mozilla/intl/chardet/nsDetector;-><init>(I)V

    .line 30
    .local v1, "det":Lorg/mozilla/intl/chardet/nsDetector;
    new-instance v6, Lcn/xddai/chardet/CharsetDetector$1;

    invoke-direct {v6, p0}, Lcn/xddai/chardet/CharsetDetector$1;-><init>(Lcn/xddai/chardet/CharsetDetector;)V

    invoke-virtual {v1, v6}, Lorg/mozilla/intl/chardet/nsDetector;->Init(Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;)V

    .line 39
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    .local v2, "imp":Ljava/io/BufferedInputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 42
    .local v0, "buf":[B
    const/4 v3, 0x1

    .line 43
    .local v3, "isAscii":Z
    :cond_0
    array-length v6, v0

    invoke-virtual {v2, v0, v7, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    .local v4, "len":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    .line 46
    if-eqz v3, :cond_1

    .line 47
    invoke-virtual {v1, v0, v4}, Lorg/mozilla/intl/chardet/nsDetector;->isAscii([BI)Z

    move-result v3

    .line 49
    :cond_1
    if-nez v3, :cond_0

    .line 51
    invoke-virtual {v1, v0, v4, v7}, Lorg/mozilla/intl/chardet/nsDetector;->DoIt([BIZ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 55
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 56
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 57
    invoke-virtual {v1}, Lorg/mozilla/intl/chardet/nsDetector;->DataEnd()V

    .line 58
    if-eqz v3, :cond_3

    .line 60
    iput-boolean v8, p0, Lcn/xddai/chardet/CharsetDetector;->found:Z

    .line 61
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "ASCII"

    aput-object v6, v5, v7

    .line 75
    .local v5, "prob":[Ljava/lang/String;
    :goto_0
    return-object v5

    .line 65
    .end local v5    # "prob":[Ljava/lang/String;
    :cond_3
    iget-boolean v6, p0, Lcn/xddai/chardet/CharsetDetector;->found:Z

    if-eqz v6, :cond_4

    .line 67
    new-array v5, v8, [Ljava/lang/String;

    iget-object v6, p0, Lcn/xddai/chardet/CharsetDetector;->result:Ljava/lang/String;

    aput-object v6, v5, v7

    .restart local v5    # "prob":[Ljava/lang/String;
    goto :goto_0

    .line 73
    .end local v5    # "prob":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Lorg/mozilla/intl/chardet/nsDetector;->getProbableCharsets()[Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "prob":[Ljava/lang/String;
    goto :goto_0
.end method
