.class final Lcom/mcxiaoke/packer/support/walle/PayloadWriter;
.super Ljava/lang/Object;
.source "PayloadWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcxiaoke/packer/support/walle/PayloadWriter$ApkSigningBlockHandler;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static writeApkSigningBlock(Ljava/io/File;Lcom/mcxiaoke/packer/support/walle/PayloadWriter$ApkSigningBlockHandler;)V
    .locals 26
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "handler"    # Lcom/mcxiaoke/packer/support/walle/PayloadWriter$ApkSigningBlockHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const/16 v19, 0x0

    .line 60
    .local v19, "raf":Ljava/io/RandomAccessFile;
    const/4 v11, 0x0

    .line 62
    .local v11, "fc":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v20, Ljava/io/RandomAccessFile;

    const-string v22, "rw"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .local v20, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    .line 64
    invoke-static {v11}, Lcom/mcxiaoke/packer/support/walle/ApkUtil;->findZipCommentLength(Ljava/nio/channels/FileChannel;)J

    move-result-wide v14

    .line 65
    .local v14, "commentLength":J
    invoke-static {v11, v14, v15}, Lcom/mcxiaoke/packer/support/walle/ApkUtil;->findCentralDirStartOffset(Ljava/nio/channels/FileChannel;J)J

    move-result-wide v12

    .line 67
    .local v12, "centralDirStartOffset":J
    invoke-static {v11, v12, v13}, Lcom/mcxiaoke/packer/support/walle/ApkUtil;->findApkSigningBlock(Ljava/nio/channels/FileChannel;J)Lcom/mcxiaoke/packer/support/walle/Pair;

    move-result-object v7

    .line 68
    .local v7, "apkSigningBlockAndOffset":Lcom/mcxiaoke/packer/support/walle/Pair;, "Lcom/mcxiaoke/packer/support/walle/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    invoke-virtual {v7}, Lcom/mcxiaoke/packer/support/walle/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 69
    .local v6, "apkSigningBlock2":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Lcom/mcxiaoke/packer/support/walle/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 71
    .local v8, "apkSigningBlockOffset":J
    const-wide/16 v22, 0x0

    cmp-long v22, v12, v22

    if-eqz v22, :cond_0

    const-wide/16 v22, 0x0

    cmp-long v22, v8, v22

    if-nez v22, :cond_1

    .line 72
    :cond_0
    new-instance v22, Ljava/io/IOException;

    const-string v23, "No APK Signature Scheme v2 block in APK Signing Block"

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .end local v6    # "apkSigningBlock2":Ljava/nio/ByteBuffer;
    .end local v7    # "apkSigningBlockAndOffset":Lcom/mcxiaoke/packer/support/walle/Pair;, "Lcom/mcxiaoke/packer/support/walle/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    .end local v8    # "apkSigningBlockOffset":J
    .end local v12    # "centralDirStartOffset":J
    .end local v14    # "commentLength":J
    :catchall_0
    move-exception v22

    move-object/from16 v19, v20

    .end local v20    # "raf":Ljava/io/RandomAccessFile;
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    :goto_0
    invoke-static {v11}, Lcom/mcxiaoke/packer/support/walle/V2Utils;->close(Ljava/io/Closeable;)V

    .line 123
    invoke-static/range {v19 .. v19}, Lcom/mcxiaoke/packer/support/walle/V2Utils;->close(Ljava/io/Closeable;)V

    throw v22

    .line 75
    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "apkSigningBlock2":Ljava/nio/ByteBuffer;
    .restart local v7    # "apkSigningBlockAndOffset":Lcom/mcxiaoke/packer/support/walle/Pair;, "Lcom/mcxiaoke/packer/support/walle/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    .restart local v8    # "apkSigningBlockOffset":J
    .restart local v12    # "centralDirStartOffset":J
    .restart local v14    # "commentLength":J
    .restart local v20    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    :try_start_2
    invoke-static {v6}, Lcom/mcxiaoke/packer/support/walle/ApkUtil;->findIdValues(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object v18

    .line 77
    .local v18, "originIdValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    const v22, 0x7109871a

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 79
    .local v4, "apkSignatureSchemeV2Block":Ljava/nio/ByteBuffer;
    if-nez v4, :cond_2

    .line 80
    new-instance v22, Ljava/io/IOException;

    const-string v23, "No APK Signature Scheme v2 block in APK Signing Block"

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 83
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/mcxiaoke/packer/support/walle/PayloadWriter$ApkSigningBlockHandler;->handle(Ljava/util/Map;)Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;

    move-result-object v5

    .line 85
    .local v5, "apkSigningBlock":Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;
    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 86
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v22

    sub-long v22, v22, v12

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v10, v0, [B

    .line 87
    .local v10, "centralDirBytes":[B
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/io/RandomAccessFile;->read([B)I

    .line 89
    invoke-virtual {v11, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 91
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;->writeTo(Ljava/io/DataOutput;)J

    move-result-wide v16

    .line 94
    .local v16, "length":J
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/io/RandomAccessFile;->write([B)V

    .line 96
    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 111
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v22

    sub-long v22, v22, v14

    const-wide/16 v24, 0x6

    sub-long v22, v22, v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 114
    const/16 v22, 0x4

    invoke-static/range {v22 .. v22}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 115
    .local v21, "temp":Ljava/nio/ByteBuffer;
    sget-object v22, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 116
    add-long v22, v12, v16

    const-wide/16 v24, 0x8

    add-long v22, v22, v24

    sub-long v24, v12, v8

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 119
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    invoke-static {v11}, Lcom/mcxiaoke/packer/support/walle/V2Utils;->close(Ljava/io/Closeable;)V

    .line 123
    invoke-static/range {v20 .. v20}, Lcom/mcxiaoke/packer/support/walle/V2Utils;->close(Ljava/io/Closeable;)V

    .line 125
    return-void

    .line 122
    .end local v4    # "apkSignatureSchemeV2Block":Ljava/nio/ByteBuffer;
    .end local v5    # "apkSigningBlock":Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;
    .end local v6    # "apkSigningBlock2":Ljava/nio/ByteBuffer;
    .end local v7    # "apkSigningBlockAndOffset":Lcom/mcxiaoke/packer/support/walle/Pair;, "Lcom/mcxiaoke/packer/support/walle/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    .end local v8    # "apkSigningBlockOffset":J
    .end local v10    # "centralDirBytes":[B
    .end local v12    # "centralDirStartOffset":J
    .end local v14    # "commentLength":J
    .end local v16    # "length":J
    .end local v18    # "originIdValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    .end local v20    # "raf":Ljava/io/RandomAccessFile;
    .end local v21    # "temp":Ljava/nio/ByteBuffer;
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v22

    goto/16 :goto_0
.end method

.method public static writeBlock(Ljava/io/File;ILjava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "id"    # I
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    .local v0, "idValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {p0, v0}, Lcom/mcxiaoke/packer/support/walle/PayloadWriter;->writeValues(Ljava/io/File;Ljava/util/Map;)V

    .line 33
    return-void
.end method

.method public static writeBlock(Ljava/io/File;I[B)V
    .locals 3
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "id"    # I
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    array-length v1, p2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 22
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 23
    const/4 v1, 0x0

    array-length v2, p2

    invoke-virtual {v0, p2, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 25
    invoke-static {p0, p1, v0}, Lcom/mcxiaoke/packer/support/walle/PayloadWriter;->writeBlock(Ljava/io/File;ILjava/nio/ByteBuffer;)V

    .line 26
    return-void
.end method

.method private static writeValues(Ljava/io/File;Ljava/util/Map;)V
    .locals 1
    .param p0, "apkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "idValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    new-instance v0, Lcom/mcxiaoke/packer/support/walle/PayloadWriter$1;

    invoke-direct {v0, p1}, Lcom/mcxiaoke/packer/support/walle/PayloadWriter$1;-><init>(Ljava/util/Map;)V

    .line 55
    .local v0, "handler":Lcom/mcxiaoke/packer/support/walle/PayloadWriter$ApkSigningBlockHandler;
    invoke-static {p0, v0}, Lcom/mcxiaoke/packer/support/walle/PayloadWriter;->writeApkSigningBlock(Ljava/io/File;Lcom/mcxiaoke/packer/support/walle/PayloadWriter$ApkSigningBlockHandler;)V

    .line 56
    return-void
.end method
