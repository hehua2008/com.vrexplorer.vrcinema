.class final Lcom/mcxiaoke/packer/support/walle/ApkUtil;
.super Ljava/lang/Object;
.source "ApkUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method private static checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 267
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v0, v1, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    return-void
.end method

.method public static findApkSigningBlock(Ljava/nio/channels/FileChannel;)Lcom/mcxiaoke/packer/support/walle/Pair;
    .locals 3
    .param p0, "fileChannel"    # Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/FileChannel;",
            ")",
            "Lcom/mcxiaoke/packer/support/walle/Pair",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p0}, Lcom/mcxiaoke/packer/support/walle/ApkUtil;->findCentralDirStartOffset(Ljava/nio/channels/FileChannel;)J

    move-result-wide v0

    .line 103
    .local v0, "centralDirOffset":J
    invoke-static {p0, v0, v1}, Lcom/mcxiaoke/packer/support/walle/ApkUtil;->findApkSigningBlock(Ljava/nio/channels/FileChannel;J)Lcom/mcxiaoke/packer/support/walle/Pair;

    move-result-object v2

    return-object v2
.end method

.method public static findApkSigningBlock(Ljava/nio/channels/FileChannel;J)Lcom/mcxiaoke/packer/support/walle/Pair;
    .locals 17
    .param p0, "fileChannel"    # Ljava/nio/channels/FileChannel;
    .param p1, "centralDirOffset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/FileChannel;",
            "J)",
            "Lcom/mcxiaoke/packer/support/walle/Pair",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    const-wide/16 v12, 0x20

    cmp-long v11, p1, v12

    if-gez v11, :cond_0

    .line 119
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 126
    :cond_0
    const-wide/16 v12, 0x18

    sub-long v12, p1, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 127
    const/16 v11, 0x18

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 128
    .local v3, "footer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 129
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 130
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v12

    const-wide v14, 0x20676953204b5041L

    cmp-long v11, v12, v14

    if-nez v11, :cond_1

    const/16 v11, 0x10

    .line 131
    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v12

    const-wide v14, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v11, v12, v14

    if-eqz v11, :cond_2

    .line 132
    :cond_1
    new-instance v11, Ljava/io/IOException;

    const-string v12, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 136
    :cond_2
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    .line 137
    .local v6, "apkSigBlockSizeInFooter":J
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    int-to-long v12, v11

    cmp-long v11, v6, v12

    if-ltz v11, :cond_3

    const-wide/32 v12, 0x7ffffff7

    cmp-long v11, v6, v12

    if-lez v11, :cond_4

    .line 139
    :cond_3
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "APK Signing Block size out of range: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 142
    :cond_4
    const-wide/16 v12, 0x8

    add-long/2addr v12, v6

    long-to-int v10, v12

    .line 143
    .local v10, "totalSize":I
    int-to-long v12, v10

    sub-long v4, p1, v12

    .line 144
    .local v4, "apkSigBlockOffset":J
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-gez v11, :cond_5

    .line 145
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "APK Signing Block offset out of range: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 148
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 149
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 150
    .local v2, "apkSigBlock":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 151
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 152
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    .line 153
    .local v8, "apkSigBlockSizeInHeader":J
    cmp-long v11, v8, v6

    if-eqz v11, :cond_6

    .line 154
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "APK Signing Block sizes in header and footer do not match: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " vs "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 158
    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/mcxiaoke/packer/support/walle/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/mcxiaoke/packer/support/walle/Pair;

    move-result-object v11

    return-object v11
.end method

.method public static findCentralDirStartOffset(Ljava/nio/channels/FileChannel;)J
    .locals 2
    .param p0, "fileChannel"    # Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p0}, Lcom/mcxiaoke/packer/support/walle/ApkUtil;->findZipCommentLength(Ljava/nio/channels/FileChannel;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/mcxiaoke/packer/support/walle/ApkUtil;->findCentralDirStartOffset(Ljava/nio/channels/FileChannel;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static findCentralDirStartOffset(Ljava/nio/channels/FileChannel;J)J
    .locals 9
    .param p0, "fileChannel"    # Ljava/nio/channels/FileChannel;
    .param p1, "commentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 93
    .local v2, "zipCentralDirectoryStart":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 94
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    sub-long/2addr v4, p1

    const-wide/16 v6, 0x6

    sub-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 95
    invoke-virtual {p0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 96
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    int-to-long v0, v3

    .line 97
    .local v0, "centralDirStartOffset":J
    return-wide v0
.end method

.method public static findIdValues(Ljava/nio/ByteBuffer;)Ljava/util/Map;
    .locals 11
    .param p0, "apkSigningBlock"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
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
    const/16 v10, 0x8

    .line 162
    invoke-static {p0}, Lcom/mcxiaoke/packer/support/walle/ApkUtil;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 169
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    add-int/lit8 v8, v8, -0x18

    invoke-static {p0, v10, v8}, Lcom/mcxiaoke/packer/support/walle/ApkUtil;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 171
    .local v7, "pairs":Ljava/nio/ByteBuffer;
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 173
    .local v2, "idValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    const/4 v0, 0x0

    .line 174
    .local v0, "entryCount":I
    :goto_0
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 176
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-ge v8, v10, :cond_0

    .line 177
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Insufficient data to read size of APK Signing Block entry #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 180
    :cond_0
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 181
    .local v4, "lenLong":J
    const-wide/16 v8, 0x4

    cmp-long v8, v4, v8

    if-ltz v8, :cond_1

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v4, v8

    if-lez v8, :cond_2

    .line 182
    :cond_1
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "APK Signing Block entry #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size out of range: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 186
    :cond_2
    long-to-int v3, v4

    .line 187
    .local v3, "len":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int v6, v8, v3

    .line 188
    .local v6, "nextEntryPos":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-le v3, v8, :cond_3

    .line 189
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "APK Signing Block entry #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size out of range: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", available: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 191
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 193
    :cond_3
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 194
    .local v1, "id":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    add-int/lit8 v9, v3, -0x4

    invoke-static {v7, v9}, Lcom/mcxiaoke/packer/support/walle/ApkUtil;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 199
    .end local v1    # "id":I
    .end local v3    # "len":I
    .end local v4    # "lenLong":J
    .end local v6    # "nextEntryPos":I
    :cond_4
    return-object v2
.end method

.method public static findZipCommentLength(Ljava/nio/channels/FileChannel;)J
    .locals 18
    .param p0, "fileChannel"    # Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual/range {p0 .. p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 34
    .local v4, "archiveSize":J
    const-wide/16 v14, 0x16

    cmp-long v14, v4, v14

    if-gez v14, :cond_0

    .line 35
    new-instance v14, Ljava/io/IOException;

    const-string v15, "APK too small for ZIP End of Central Directory (EOCD) record"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 46
    :cond_0
    const-wide/16 v14, 0x16

    sub-long v14, v4, v14

    const-wide/32 v16, 0xffff

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 47
    .local v12, "maxCommentLength":J
    const-wide/16 v14, 0x16

    sub-long v10, v4, v14

    .line 48
    .local v10, "eocdWithEmptyCommentStartPosition":J
    const/4 v7, 0x0

    .local v7, "expectedCommentLength":I
    :goto_0
    int-to-long v14, v7

    cmp-long v14, v14, v12

    if-gtz v14, :cond_2

    .line 50
    int-to-long v14, v7

    sub-long v8, v10, v14

    .line 52
    .local v8, "eocdStartPos":J
    const/4 v14, 0x4

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 53
    .local v3, "byteBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 54
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 55
    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 57
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v14

    const v15, 0x6054b50

    if-ne v14, v15, :cond_1

    .line 58
    const/4 v14, 0x2

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 59
    .local v6, "commentLengthByteBuffer":Ljava/nio/ByteBuffer;
    const-wide/16 v14, 0x14

    add-long/2addr v14, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 60
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 61
    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 63
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    .line 64
    .local v2, "actualCommentLength":I
    if-ne v2, v7, :cond_1

    .line 65
    int-to-long v14, v2

    return-wide v14

    .line 49
    .end local v2    # "actualCommentLength":I
    .end local v6    # "commentLengthByteBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 69
    .end local v3    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v8    # "eocdStartPos":J
    :cond_2
    new-instance v14, Ljava/io/IOException;

    const-string v15, "ZIP End of Central Directory (EOCD) record not found"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method private static getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 7
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .prologue
    .line 246
    if-gez p1, :cond_0

    .line 247
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 249
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 250
    .local v1, "originalLimit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 251
    .local v2, "position":I
    add-int v0, v2, p1

    .line 252
    .local v0, "limit":I
    if-lt v0, v2, :cond_1

    if-le v0, v1, :cond_2

    .line 253
    :cond_1
    new-instance v4, Ljava/nio/BufferUnderflowException;

    invoke-direct {v4}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v4

    .line 255
    :cond_2
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 257
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 258
    .local v3, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 259
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 260
    return-object v3

    .line 262
    .end local v3    # "result":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v4
.end method

.method private static sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 7
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v5, 0x0

    .line 209
    if-gez p1, :cond_0

    .line 210
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 212
    :cond_0
    if-ge p2, p1, :cond_1

    .line 213
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end < start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 215
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 216
    .local v0, "capacity":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-le p2, v4, :cond_2

    .line 217
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end > capacity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 219
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 220
    .local v1, "originalLimit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 222
    .local v2, "originalPosition":I
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 223
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 224
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 225
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 226
    .local v3, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 230
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 231
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 227
    return-object v3

    .line 229
    .end local v3    # "result":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 230
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 231
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v4
.end method
