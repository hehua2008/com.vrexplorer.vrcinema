.class public final Lcom/google/protobuf/nano/CodedInputByteBufferNano;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_RECURSION_LIMIT:I = 0x40

.field private static final DEFAULT_SIZE_LIMIT:I = 0x4000000


# instance fields
.field private final buffer:[B

.field private bufferPos:I

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private bufferStart:I

.field private currentLimit:I

.field private lastTag:I

.field private recursionDepth:I

.field private recursionLimit:I

.field private sizeLimit:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    iput-object p1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iput p2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iput p2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-void
.end method

.method public static decodeZigZag32(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static decodeZigZag64(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static newInstance([B)Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;-><init>([BII)V

    return-object v0
.end method

.method private final recomputeBufferSizeAfterLimit()V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    goto :goto_0
.end method


# virtual methods
.method public final checkLastTagWas(I)V
    .locals 1

    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-eq v0, p1, :cond_0

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->invalidEndTag()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public final getBytesUntilLimit()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public final getData(II)[B
    .locals 4

    if-nez p2, :cond_0

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    :goto_0
    return-object v0

    :cond_0
    new-array v0, p2, [B

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final getPosition()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final isAtEnd()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final popLimit(I)V
    .locals 0

    iput p1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    return-void
.end method

.method public final pushLimit(I)I
    .locals 2

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_1
    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    invoke-direct {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    return v1
.end method

.method public final readBool()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final readBytes()[B
    .locals 5

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    if-gez v1, :cond_0

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_0
    if-nez v1, :cond_1

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v2

    if-le v1, v0, :cond_2

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_2
    new-array v0, v1, [B

    iget-object v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    goto :goto_0
.end method

.method public final readDouble()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readEnum()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public final readFixed32()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public final readFixed64()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readGroup(Lcom/google/protobuf/nano/MessageNano;I)V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    return-void
.end method

.method public final readInt32()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public final readInt64()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readMessage(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    return-void
.end method

.method public final readRawByte()B
    .locals 3

    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public final readRawBytes(I)[B
    .locals 4

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_2

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_2
    new-array v0, p1, [B

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-object v0
.end method

.method public final readRawLittleEndian32()I
    .locals 4

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final readRawLittleEndian64()J
    .locals 14

    const-wide/16 v12, 0xff

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v4

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v5

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v6

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v7

    int-to-long v8, v0

    and-long/2addr v8, v12

    int-to-long v0, v1

    and-long/2addr v0, v12

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v12

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v12

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v12

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v12

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v12

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v12

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final readRawVarint32()I
    .locals 3

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_4

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    :cond_4
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public final readRawVarint64()J
    .locals 6

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method public final readSFixed32()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public final readSFixed64()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readSInt32()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public final readSInt64()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_0
    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sget-object v4, Lcom/google/protobuf/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-object v1
.end method

.method public final readTag()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->invalidTag()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    goto :goto_0
.end method

.method public final readUInt32()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public final readUInt64()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public final resetSizeCounter()V
    .locals 0

    return-void
.end method

.method public final rewindToPosition(I)V
    .locals 4

    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v2, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is beyond current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-void
.end method

.method public final setRecursionLimit(I)I
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Recursion limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    iput p1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    return v0
.end method

.method public final setSizeLimit(I)I
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Size limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    iput p1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    return v0
.end method

.method public final skipField(I)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/google/protobuf/nano/WireFormatNano;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->invalidWireType()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipMessage()V

    invoke-static {p1}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final skipMessage()V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public final skipRawBytes(I)V
    .locals 2

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method
