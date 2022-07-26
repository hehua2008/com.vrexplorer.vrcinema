.class Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;
.super Ljava/lang/Object;
.source "ApkSigningBlock.java"


# instance fields
.field private final payloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;->payloads:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public addPayload(Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;)V
    .locals 1
    .param p1, "payload"    # Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;->payloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public final getPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;->payloads:Ljava/util/List;

    return-object v0
.end method

.method public writeTo(Ljava/io/DataOutput;)J
    .locals 9
    .param p1, "dataOutput"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    .line 54
    const-wide/16 v4, 0x18

    .line 56
    .local v4, "length":J
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    iget-object v6, p0, Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;->payloads:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 57
    iget-object v6, p0, Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;->payloads:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;

    .line 58
    .local v3, "payload":Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;
    invoke-virtual {v3}, Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;->getByteBuffer()[B

    move-result-object v1

    .line 59
    .local v1, "bytes":[B
    array-length v6, v1

    add-int/lit8 v6, v6, 0xc

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "bytes":[B
    .end local v3    # "payload":Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;
    :cond_0
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 63
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 64
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 66
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/io/DataOutput;->write([B)V

    .line 68
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;->payloads:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 69
    iget-object v6, p0, Lcom/mcxiaoke/packer/support/walle/ApkSigningBlock;->payloads:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;

    .line 70
    .restart local v3    # "payload":Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;
    invoke-virtual {v3}, Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;->getByteBuffer()[B

    move-result-object v1

    .line 72
    .restart local v1    # "bytes":[B
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 73
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 74
    array-length v6, v1

    add-int/lit8 v6, v6, 0x4

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 76
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/io/DataOutput;->write([B)V

    .line 78
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 79
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {v3}, Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;->getId()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 81
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 82
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/io/DataOutput;->write([B)V

    .line 84
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write([B)V

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 87
    .end local v1    # "bytes":[B
    .end local v3    # "payload":Lcom/mcxiaoke/packer/support/walle/ApkSigningPayload;
    :cond_1
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 88
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 90
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 91
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/io/DataOutput;->write([B)V

    .line 93
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 94
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 95
    const-wide v6, 0x20676953204b5041L

    invoke-virtual {v0, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 96
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 97
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/io/DataOutput;->write([B)V

    .line 99
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 100
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 101
    const-wide v6, 0x3234206b636f6c42L    # 7.465385175170059E-67

    invoke-virtual {v0, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 102
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 103
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/io/DataOutput;->write([B)V

    .line 105
    return-wide v4
.end method
