.class public Lcom/mcxiaoke/packer/common/PackerCommon;
.super Ljava/lang/Object;
.source "PackerCommon.java"


# static fields
.field public static final BLOCK_MAGIC:Ljava/lang/String; = "Packer Ng Sig V2"

.field public static final CHANNEL_BLOCK_ID:I = 0x7a786b21

.field public static final CHANNEL_KEY:Ljava/lang/String; = "CHANNEL"

.field public static final SEP_KV:Ljava/lang/String; = "\u2218"

.field public static final SEP_LINE:Ljava/lang/String; = "\u2219"

.field public static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mapFromString(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 184
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 185
    :cond_0
    const/4 v3, 0x0

    .line 195
    :cond_1
    return-object v3

    .line 187
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "\u2219"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "entries":[Ljava/lang/String;
    array-length v6, v0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v0, v4

    .line 190
    .local v1, "entry":Ljava/lang/String;
    const-string v7, "\u2218"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "kv":[Ljava/lang/String;
    array-length v7, v2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 192
    aget-object v7, v2, v5

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static mapToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 177
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u2218"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 178
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u2219"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 180
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static readBytes(Ljava/io/File;I)[B
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "blockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/mcxiaoke/packer/common/PackerCommon;->readPayloadImpl(Ljava/io/File;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static readChannel(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    const-string v0, "CHANNEL"

    const v1, 0x7a786b21

    invoke-static {p0, v0, v1}, Lcom/mcxiaoke/packer/common/PackerCommon;->readValue(Ljava/io/File;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static readPayloadImpl(Ljava/io/File;I)[B
    .locals 9
    .param p0, "file"    # Ljava/io/File;
    .param p1, "blockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 127
    invoke-static {p0, p1}, Lcom/mcxiaoke/packer/support/walle/Support;->readBlock(Ljava/io/File;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 128
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    if-nez v1, :cond_1

    move-object v3, v6

    .line 145
    :cond_0
    :goto_0
    return-object v3

    .line 131
    :cond_1
    const-string v7, "Packer Ng Sig V2"

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 132
    .local v2, "magic":[B
    array-length v7, v2

    new-array v0, v7, [B

    .line 133
    .local v0, "actual":[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 134
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 135
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 136
    .local v4, "payloadLength1":I
    if-lez v4, :cond_2

    .line 137
    new-array v3, v4, [B

    .line 138
    .local v3, "payload":[B
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 139
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 140
    .local v5, "payloadLength2":I
    if-eq v5, v4, :cond_0

    .end local v3    # "payload":[B
    .end local v4    # "payloadLength1":I
    .end local v5    # "payloadLength2":I
    :cond_2
    move-object v3, v6

    .line 145
    goto :goto_0
.end method

.method public static readString(Ljava/io/File;I)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "blockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p0, p1}, Lcom/mcxiaoke/packer/common/PackerCommon;->readBytes(Ljava/io/File;I)[B

    move-result-object v0

    .line 74
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 75
    :cond_0
    const/4 v1, 0x0

    .line 77
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method static readValue(Ljava/io/File;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "blockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p0, p2}, Lcom/mcxiaoke/packer/common/PackerCommon;->readValues(Ljava/io/File;I)Ljava/util/Map;

    move-result-object v0

    .line 48
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    :cond_0
    const/4 v1, 0x0

    .line 51
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public static readValues(Ljava/io/File;I)Ljava/util/Map;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "blockId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/mcxiaoke/packer/common/PackerCommon;->readString(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Lcom/mcxiaoke/packer/common/PackerCommon;->mapFromString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method static wrapPayload([B)Ljava/nio/ByteBuffer;
    .locals 7
    .param p0, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 159
    const-string v5, "Packer Ng Sig V2"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 160
    .local v2, "magic":[B
    array-length v3, v2

    .line 161
    .local v3, "magicLen":I
    array-length v4, p0

    .line 162
    .local v4, "payloadLen":I
    add-int/lit8 v5, v3, 0x4

    mul-int/lit8 v5, v5, 0x2

    add-int v1, v5, v4

    .line 163
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 164
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 165
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 166
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 167
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 168
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 169
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 170
    return-object v0
.end method

.method public static writeBytes(Ljava/io/File;[BI)V
    .locals 0
    .param p0, "file"    # Ljava/io/File;
    .param p1, "payload"    # [B
    .param p2, "blockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p0, p1, p2}, Lcom/mcxiaoke/packer/common/PackerCommon;->writePayloadImpl(Ljava/io/File;[BI)V

    .line 113
    return-void
.end method

.method public static writeChannel(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "channel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    const-string v0, "CHANNEL"

    const v1, 0x7a786b21

    invoke-static {p0, v0, p1, v1}, Lcom/mcxiaoke/packer/common/PackerCommon;->writeValue(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method static writePayloadImpl(Ljava/io/File;[BI)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "payload"    # [B
    .param p2, "blockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p1}, Lcom/mcxiaoke/packer/common/PackerCommon;->wrapPayload([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 121
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {p0, p2, v0}, Lcom/mcxiaoke/packer/support/walle/Support;->writeBlock(Ljava/io/File;ILjava/nio/ByteBuffer;)V

    .line 122
    return-void
.end method

.method public static writeString(Ljava/io/File;Ljava/lang/String;I)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "blockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/mcxiaoke/packer/common/PackerCommon;->writeBytes(Ljava/io/File;[BI)V

    .line 106
    return-void
.end method

.method static writeValue(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "blockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {p0, v0, p3}, Lcom/mcxiaoke/packer/common/PackerCommon;->writeValues(Ljava/io/File;Ljava/util/Map;I)V

    .line 63
    return-void
.end method

.method public static writeValues(Ljava/io/File;Ljava/util/Map;I)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p2, "blockId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v0, "newValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p2}, Lcom/mcxiaoke/packer/common/PackerCommon;->readValues(Ljava/io/File;I)Ljava/util/Map;

    move-result-object v1

    .line 94
    .local v1, "oldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 95
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 97
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 98
    invoke-static {v0}, Lcom/mcxiaoke/packer/common/PackerCommon;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lcom/mcxiaoke/packer/common/PackerCommon;->writeString(Ljava/io/File;Ljava/lang/String;I)V

    goto :goto_0
.end method
