.class public final Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "CardboardDevice.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams$ButtonType;,
        Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams$VerticalAlignmentType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;


# instance fields
.field private bitField0_:I

.field public daydreamInternal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

.field public distortionCoefficients:[F

.field private hasMagnet_:Z

.field private interLensDistance_:F

.field public internal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

.field public leftEyeFieldOfViewAngles:[F

.field private model_:Ljava/lang/String;

.field private primaryButton_:I

.field private screenToLensDistance_:F

.field private trayToLensDistance_:F

.field private vendor_:Ljava/lang/String;

.field private verticalAlignment_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 217
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->clear()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    .line 218
    return-void
.end method

.method public static emptyArray()[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    if-nez v0, :cond_1

    .line 32
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    sput-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 530
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 221
    iput v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    .line 223
    const-string v0, ""

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    .line 224
    iput v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    .line 225
    iput v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->interLensDistance_:F

    .line 226
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    .line 227
    iput v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->verticalAlignment_:I

    .line 228
    iput v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    .line 229
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    .line 230
    iput-boolean v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->hasMagnet_:Z

    .line 231
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->primaryButton_:I

    .line 232
    iput-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    .line 233
    iput-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    .line 234
    iput-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 235
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->cachedSize:I

    .line 236
    return-object p0
.end method

.method public final clearHasMagnet()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->hasMagnet_:Z

    .line 185
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 186
    return-object p0
.end method

.method public final clearInterLensDistance()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->interLensDistance_:F

    .line 122
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 123
    return-object p0
.end method

.method public final clearModel()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .prologue
    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    .line 84
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 85
    return-object p0
.end method

.method public final clearPrimaryButton()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->primaryButton_:I

    .line 204
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 205
    return-object p0
.end method

.method public final clearScreenToLensDistance()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    .line 103
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 104
    return-object p0
.end method

.method public final clearTrayToLensDistance()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    .line 163
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 164
    return-object p0
.end method

.method public final clearVendor()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .prologue
    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    .line 62
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 63
    return-object p0
.end method

.method public final clearVerticalAlignment()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->verticalAlignment_:I

    .line 144
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 145
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
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

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
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 2

    .prologue
    .line 242
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    array-length v1, v1

    if-lez v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    array-length v1, v1

    if-lez v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    if-eqz v1, :cond_2

    .line 253
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    .line 255
    :cond_2
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-eqz v1, :cond_3

    .line 256
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    .line 258
    :cond_3
    return-object v0

    .line 243
    :catch_0
    move-exception v0

    .line 244
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
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 316
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 317
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 318
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    .line 319
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    :cond_0
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 322
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    .line 323
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 325
    :cond_1
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 326
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    .line 327
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 329
    :cond_2
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 330
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->interLensDistance_:F

    .line 331
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 333
    :cond_3
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    array-length v1, v1

    if-lez v1, :cond_4

    .line 334
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 335
    add-int/2addr v0, v1

    .line 336
    add-int/lit8 v0, v0, 0x1

    .line 338
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 340
    :cond_4
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 341
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    .line 342
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 344
    :cond_5
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    array-length v1, v1

    if-lez v1, :cond_6

    .line 345
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 346
    add-int/2addr v0, v1

    .line 347
    add-int/lit8 v0, v0, 0x1

    .line 349
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 351
    :cond_6
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    .line 352
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->hasMagnet_:Z

    .line 353
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 355
    :cond_7
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    .line 356
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->verticalAlignment_:I

    .line 357
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 359
    :cond_8
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_9

    .line 360
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->primaryButton_:I

    .line 361
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 363
    :cond_9
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    if-eqz v1, :cond_a

    .line 364
    const/16 v1, 0x6c1

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    .line 365
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 367
    :cond_a
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-eqz v1, :cond_b

    .line 368
    const v1, 0x30113

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    .line 369
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 371
    :cond_b
    return v0
.end method

.method public final getHasMagnet()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->hasMagnet_:Z

    return v0
.end method

.method public final getInterLensDistance()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->interLensDistance_:F

    return v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrimaryButton()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->primaryButton_:I

    return v0
.end method

.method public final getScreenToLensDistance()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    return v0
.end method

.method public final getTrayToLensDistance()F
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    return v0
.end method

.method public final getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerticalAlignment()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->verticalAlignment_:I

    return v0
.end method

.method public final hasHasMagnet()Z
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasInterLensDistance()Z
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasModel()Z
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPrimaryButton()Z
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasScreenToLensDistance()Z
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasTrayToLensDistance()Z
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasVendor()Z
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasVerticalAlignment()Z
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    invoke-virtual {p0, p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 379
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 380
    sparse-switch v0, :sswitch_data_0

    .line 384
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    :sswitch_0
    return-object p0

    .line 390
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    .line 391
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    goto :goto_0

    .line 395
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    .line 396
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    goto :goto_0

    .line 400
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    .line 401
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    goto :goto_0

    .line 405
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->interLensDistance_:F

    .line 406
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    goto :goto_0

    .line 410
    :sswitch_5
    const/16 v0, 0x2d

    .line 411
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 412
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    if-nez v0, :cond_2

    move v0, v1

    .line 413
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 414
    if-eqz v0, :cond_1

    .line 415
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 418
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 419
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    array-length v0, v0

    goto :goto_1

    .line 422
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 423
    iput-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    goto :goto_0

    .line 427
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 428
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 429
    div-int/lit8 v3, v0, 0x4

    .line 430
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    if-nez v0, :cond_5

    move v0, v1

    .line 431
    :goto_3
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 432
    if-eqz v0, :cond_4

    .line 433
    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    :cond_4
    :goto_4
    array-length v4, v3

    if-ge v0, v4, :cond_6

    .line 436
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v4

    aput v4, v3, v0

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 430
    :cond_5
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    array-length v0, v0

    goto :goto_3

    .line 438
    :cond_6
    iput-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    .line 439
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 443
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    .line 444
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    goto/16 :goto_0

    .line 448
    :sswitch_8
    const/16 v0, 0x3d

    .line 449
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 450
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    if-nez v0, :cond_8

    move v0, v1

    .line 451
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 452
    if-eqz v0, :cond_7

    .line 453
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 456
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 457
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 450
    :cond_8
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    array-length v0, v0

    goto :goto_5

    .line 460
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 461
    iput-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    goto/16 :goto_0

    .line 465
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 466
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 467
    div-int/lit8 v3, v0, 0x4

    .line 468
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    if-nez v0, :cond_b

    move v0, v1

    .line 469
    :goto_7
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 470
    if-eqz v0, :cond_a

    .line 471
    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    :cond_a
    :goto_8
    array-length v4, v3

    if-ge v0, v4, :cond_c

    .line 474
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v4

    aput v4, v3, v0

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 468
    :cond_b
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    array-length v0, v0

    goto :goto_7

    .line 476
    :cond_c
    iput-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    .line 477
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 481
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->hasMagnet_:Z

    .line 482
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    goto/16 :goto_0

    .line 486
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 487
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 491
    :pswitch_0
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->verticalAlignment_:I

    .line 492
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    goto/16 :goto_0

    .line 498
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 499
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 504
    :pswitch_1
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->primaryButton_:I

    .line 505
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    goto/16 :goto_0

    .line 511
    :sswitch_d
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    if-nez v0, :cond_d

    .line 512
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    .line 514
    :cond_d
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 518
    :sswitch_e
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-nez v0, :cond_e

    .line 519
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    .line 521
    :cond_e
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 380
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2a -> :sswitch_6
        0x2d -> :sswitch_5
        0x35 -> :sswitch_7
        0x3a -> :sswitch_9
        0x3d -> :sswitch_8
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x360a -> :sswitch_d
        0x18089a -> :sswitch_e
    .end sparse-switch

    .line 487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 499
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final setHasMagnet(Z)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->hasMagnet_:Z

    .line 177
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 178
    return-object p0
.end method

.method public final setInterLensDistance(F)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .prologue
    .line 113
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->interLensDistance_:F

    .line 114
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 115
    return-object p0
.end method

.method public final setModel(Ljava/lang/String;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    .line 76
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 77
    return-object p0
.end method

.method public final setPrimaryButton(I)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .prologue
    .line 195
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->primaryButton_:I

    .line 196
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 197
    return-object p0
.end method

.method public final setScreenToLensDistance(F)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .prologue
    .line 94
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    .line 95
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 96
    return-object p0
.end method

.method public final setTrayToLensDistance(F)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .prologue
    .line 154
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    .line 155
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 156
    return-object p0
.end method

.method public final setVendor(Ljava/lang/String;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    .line 54
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 55
    return-object p0
.end method

.method public final setVerticalAlignment(I)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .prologue
    .line 135
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->verticalAlignment_:I

    .line 136
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 137
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 265
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 266
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 268
    :cond_0
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 269
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 271
    :cond_1
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 272
    const/4 v0, 0x3

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 274
    :cond_2
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 275
    const/4 v0, 0x4

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->interLensDistance_:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    array-length v0, v0

    if-lez v0, :cond_4

    .line 278
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    .line 279
    const/16 v2, 0x2a

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 280
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    move v0, v1

    .line 281
    :goto_0
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 282
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_4
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 286
    const/4 v0, 0x6

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 288
    :cond_5
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    array-length v0, v0

    if-lez v0, :cond_6

    .line 289
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    .line 290
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 291
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 292
    :goto_1
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 293
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 296
    :cond_6
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 297
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->hasMagnet_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 299
    :cond_7
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    .line 300
    const/16 v0, 0xb

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->verticalAlignment_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 302
    :cond_8
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 303
    const/16 v0, 0xc

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->primaryButton_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 305
    :cond_9
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    if-eqz v0, :cond_a

    .line 306
    const/16 v0, 0x6c1

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 308
    :cond_a
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-eqz v0, :cond_b

    .line 309
    const v0, 0x30113

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 311
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 312
    return-void
.end method
