.class public Lcom/rockvr/moonplayer/utils/io/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IOUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LoadFile(Ljava/lang/String;)[B
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v1, 0x0

    .line 16
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v2}, Lcom/rockvr/moonplayer/utils/io/IOUtils;->readBytesToByteArray(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v1, v2

    .line 20
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 20
    const/4 v3, 0x0

    goto :goto_0

    .line 18
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private static readBytesToByteArray(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 25
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 27
    .local v3, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 28
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 31
    .local v2, "len":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 32
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 42
    :goto_1
    if-eqz p0, :cond_0

    .line 44
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 50
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 38
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 42
    :goto_3
    if-eqz p0, :cond_0

    .line 44
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 45
    :catch_1
    move-exception v1

    .line 46
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 39
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 40
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 39
    :catch_3
    move-exception v1

    .line 40
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 45
    :catch_4
    move-exception v1

    .line 46
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 37
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 38
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 42
    :goto_4
    if-eqz p0, :cond_2

    .line 44
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 47
    :cond_2
    :goto_5
    throw v4

    .line 39
    :catch_5
    move-exception v1

    .line 40
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 45
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 46
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method
