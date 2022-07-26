.class public final Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Phone.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vrtoolkit/cardboard/proto/nano/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;


# instance fields
.field private bitField0_:I

.field private bottomBezelHeight_:F

.field public dEPRECATEDGyroBias:[F

.field private xPpi_:F

.field private yPpi_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 92
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->clear()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    .line 93
    return-void
.end method

.method public static emptyArray()[Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    if-nez v0, :cond_1

    .line 17
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    sput-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    .line 97
    iput v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->xPpi_:F

    .line 98
    iput v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->yPpi_:F

    .line 99
    iput v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bottomBezelHeight_:F

    .line 100
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->cachedSize:I

    .line 103
    return-object p0
.end method

.method public final clearBottomBezelHeight()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bottomBezelHeight_:F

    .line 82
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    .line 83
    return-object p0
.end method

.method public final clearXPpi()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->xPpi_:F

    .line 44
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    .line 45
    return-object p0
.end method

.method public final clearYPpi()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->yPpi_:F

    .line 63
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    .line 64
    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    .locals 2

    .prologue
    .line 109
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    array-length v1, v1

    if-lez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    .line 116
    :cond_0
    return-object v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 145
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 146
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 147
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->xPpi_:F

    .line 148
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :cond_0
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 151
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->yPpi_:F

    .line 152
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    :cond_1
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 155
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bottomBezelHeight_:F

    .line 156
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    array-length v1, v1

    if-lez v1, :cond_3

    .line 159
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 160
    add-int/2addr v0, v1

    .line 161
    add-int/lit8 v0, v0, 0x1

    .line 163
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    :cond_3
    return v0
.end method

.method public final getBottomBezelHeight()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bottomBezelHeight_:F

    return v0
.end method

.method public final getXPpi()F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->xPpi_:F

    return v0
.end method

.method public final getYPpi()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->yPpi_:F

    return v0
.end method

.method public final hasBottomBezelHeight()Z
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasXPpi()Z
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasYPpi()Z
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 173
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 174
    sparse-switch v0, :sswitch_data_0

    .line 178
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    :sswitch_0
    return-object p0

    .line 184
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->xPpi_:F

    .line 185
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    goto :goto_0

    .line 189
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->yPpi_:F

    .line 190
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    goto :goto_0

    .line 194
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bottomBezelHeight_:F

    .line 195
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    goto :goto_0

    .line 199
    :sswitch_4
    const/16 v0, 0x25

    .line 200
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 201
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    if-nez v0, :cond_2

    move v0, v1

    .line 202
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 203
    if-eqz v0, :cond_1

    .line 204
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 207
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 208
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    array-length v0, v0

    goto :goto_1

    .line 211
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 212
    iput-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    goto :goto_0

    .line 216
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 217
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 218
    div-int/lit8 v3, v0, 0x4

    .line 219
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    if-nez v0, :cond_5

    move v0, v1

    .line 220
    :goto_3
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 221
    if-eqz v0, :cond_4

    .line 222
    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    :cond_4
    :goto_4
    array-length v4, v3

    if-ge v0, v4, :cond_6

    .line 225
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v4

    aput v4, v3, v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 219
    :cond_5
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    array-length v0, v0

    goto :goto_3

    .line 227
    :cond_6
    iput-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    .line 228
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_5
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public final setBottomBezelHeight(F)Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    .locals 1

    .prologue
    .line 73
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bottomBezelHeight_:F

    .line 74
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    .line 75
    return-object p0
.end method

.method public final setXPpi(F)Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    .locals 1

    .prologue
    .line 35
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->xPpi_:F

    .line 36
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    .line 37
    return-object p0
.end method

.method public final setYPpi(F)Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;
    .locals 1

    .prologue
    .line 54
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->yPpi_:F

    .line 55
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    .line 56
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->xPpi_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 126
    :cond_0
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 127
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->yPpi_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 129
    :cond_1
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 130
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->bottomBezelHeight_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    array-length v0, v0

    if-lez v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    .line 134
    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 135
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 136
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Phone$PhoneParams;->dEPRECATEDGyroBias:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 141
    return-void
.end method
