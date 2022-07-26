.class final Lcom/mcxiaoke/packer/support/walle/PayloadReader;
.super Ljava/lang/Object;
.source "PayloadReader.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method private static readAllBlocks(Ljava/io/File;)Ljava/util/Map;
    .locals 6
    .param p0, "apkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, "blocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    const/4 v3, 0x0

    .line 35
    .local v3, "raf":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 37
    .local v2, "fc":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .local v4, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 39
    invoke-static {v2}, Lcom/mcxiaoke/packer/support/walle/ApkUtil;->findApkSigningBlock(Ljava/nio/channels/FileChannel;)Lcom/mcxiaoke/packer/support/walle/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcxiaoke/packer/support/walle/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 40
    .local v0, "apkSigningBlock":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Lcom/mcxiaoke/packer/support/walle/ApkUtil;->findIdValues(Ljava/nio/ByteBuffer;)Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 42
    invoke-static {v2}, Lcom/mcxiaoke/packer/support/walle/V2Utils;->close(Ljava/io/Closeable;)V

    .line 43
    invoke-static {v4}, Lcom/mcxiaoke/packer/support/walle/V2Utils;->close(Ljava/io/Closeable;)V

    .line 45
    return-object v1

    .line 42
    .end local v0    # "apkSigningBlock":Ljava/nio/ByteBuffer;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v5

    :goto_0
    invoke-static {v2}, Lcom/mcxiaoke/packer/support/walle/V2Utils;->close(Ljava/io/Closeable;)V

    .line 43
    invoke-static {v3}, Lcom/mcxiaoke/packer/support/walle/V2Utils;->close(Ljava/io/Closeable;)V

    throw v5

    .line 42
    .end local v3    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_0
.end method

.method public static readBlock(Ljava/io/File;I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {p0}, Lcom/mcxiaoke/packer/support/walle/PayloadReader;->readAllBlocks(Ljava/io/File;)Ljava/util/Map;

    move-result-object v0

    .line 24
    .local v0, "blocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    if-nez v0, :cond_0

    .line 25
    const/4 v1, 0x0

    .line 27
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static readBytes(Ljava/io/File;I)[B
    .locals 2
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-static {p0, p1}, Lcom/mcxiaoke/packer/support/walle/PayloadReader;->readBlock(Ljava/io/File;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 18
    .local v0, "buf":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/mcxiaoke/packer/support/walle/V2Utils;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    goto :goto_0
.end method
