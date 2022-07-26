.class public Lcom/rockvr/moonplayer_gvr/media/subtitle/util/UnicodeReader;
.super Ljava/io/Reader;
.source "UnicodeReader.java"


# static fields
.field private static final BOM_SIZE:I = 0x4


# instance fields
.field defaultEnc:Ljava/lang/String;

.field internalIn:Ljava/io/PushbackInputStream;

.field internalIn2:Ljava/io/InputStreamReader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "defaultEnc"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    .line 47
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/UnicodeReader;->internalIn:Ljava/io/PushbackInputStream;

    .line 48
    iput-object p2, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/UnicodeReader;->defaultEnc:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/UnicodeReader;->init()V

    .line 113
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 114
    return-void
.end method

.method public getDefaultEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/UnicodeReader;->defaultEnc:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected init()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    iget-object v4, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    if-eqz v4, :cond_0

    .line 109
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 74
    .local v0, "bom":[B
    iget-object v4, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/UnicodeReader;->internalIn:Ljava/io/PushbackInputStream;

    array-length v5, v0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v2

    .line 76
    .local v2, "n":I
    aget-byte v4, v0, v6

    if-nez v4, :cond_2

    aget-byte v4, v0, v7

    if-nez v4, :cond_2

    aget-byte v4, v0, v10

    if-ne v4, v8, :cond_2

    const/4 v4, 0x3

    aget-byte v4, v0, v4

    if-ne v4, v9, :cond_2

    .line 78
    const-string v1, "UTF-32BE"

    .line 79
    .local v1, "encoding":Ljava/lang/String;
    add-int/lit8 v3, v2, -0x4

    .line 101
    .local v3, "unread":I
    :goto_1
    if-lez v3, :cond_1

    iget-object v4, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/UnicodeReader;->internalIn:Ljava/io/PushbackInputStream;

    sub-int v5, v2, v3

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 104
    :cond_1
    if-nez v1, :cond_7

    .line 105
    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/UnicodeReader;->internalIn:Ljava/io/PushbackInputStream;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    goto :goto_0

    .line 80
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v3    # "unread":I
    :cond_2
    aget-byte v4, v0, v6

    if-ne v4, v9, :cond_3

    aget-byte v4, v0, v7

    if-ne v4, v8, :cond_3

    aget-byte v4, v0, v10

    if-nez v4, :cond_3

    const/4 v4, 0x3

    aget-byte v4, v0, v4

    if-nez v4, :cond_3

    .line 82
    const-string v1, "UTF-32LE"

    .line 83
    .restart local v1    # "encoding":Ljava/lang/String;
    add-int/lit8 v3, v2, -0x4

    .restart local v3    # "unread":I
    goto :goto_1

    .line 84
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v3    # "unread":I
    :cond_3
    aget-byte v4, v0, v6

    const/16 v5, -0x11

    if-ne v4, v5, :cond_4

    aget-byte v4, v0, v7

    const/16 v5, -0x45

    if-ne v4, v5, :cond_4

    aget-byte v4, v0, v10

    const/16 v5, -0x41

    if-ne v4, v5, :cond_4

    .line 86
    const-string v1, "UTF-8"

    .line 87
    .restart local v1    # "encoding":Ljava/lang/String;
    add-int/lit8 v3, v2, -0x3

    .restart local v3    # "unread":I
    goto :goto_1

    .line 88
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v3    # "unread":I
    :cond_4
    aget-byte v4, v0, v6

    if-ne v4, v8, :cond_5

    aget-byte v4, v0, v7

    if-ne v4, v9, :cond_5

    .line 89
    const-string v1, "UTF-16BE"

    .line 90
    .restart local v1    # "encoding":Ljava/lang/String;
    add-int/lit8 v3, v2, -0x2

    .restart local v3    # "unread":I
    goto :goto_1

    .line 91
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v3    # "unread":I
    :cond_5
    aget-byte v4, v0, v6

    if-ne v4, v9, :cond_6

    aget-byte v4, v0, v7

    if-ne v4, v8, :cond_6

    .line 92
    const-string v1, "UTF-16LE"

    .line 93
    .restart local v1    # "encoding":Ljava/lang/String;
    add-int/lit8 v3, v2, -0x2

    .restart local v3    # "unread":I
    goto :goto_1

    .line 96
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v3    # "unread":I
    :cond_6
    iget-object v1, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/UnicodeReader;->defaultEnc:Ljava/lang/String;

    .line 97
    .restart local v1    # "encoding":Ljava/lang/String;
    move v3, v2

    .restart local v3    # "unread":I
    goto :goto_1

    .line 107
    :cond_7
    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/UnicodeReader;->internalIn:Ljava/io/PushbackInputStream;

    invoke-direct {v4, v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    goto/16 :goto_0
.end method

.method public read([CII)I
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/UnicodeReader;->init()V

    .line 118
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/media/subtitle/util/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v0

    return v0
.end method
