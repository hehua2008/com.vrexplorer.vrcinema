.class public final Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10245
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 11250
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    .line 11251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 11252
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->cachedSize:I

    .line 10247
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;
    .locals 4

    .prologue
    .line 10259
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10263
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 10264
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    .line 10265
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 10266
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 10267
    iget-object v2, v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    move-result-object v3

    aput-object v3, v2, v1

    .line 10265
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10260
    :catch_0
    move-exception v0

    .line 10261
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 10271
    :cond_1
    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10110
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

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
    .line 10110
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10110
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 10291
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    .line 10292
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 10293
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 10294
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    aget-object v2, v2, v0

    .line 10295
    if-eqz v2, :cond_0

    .line 10296
    const/4 v3, 0x1

    .line 10297
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 10293
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10301
    :cond_1
    return v1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 10110
    .line 11309
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11310
    sparse-switch v0, :sswitch_data_0

    .line 11314
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11315
    :sswitch_0
    return-object p0

    .line 11320
    :sswitch_1
    const/16 v0, 0xa

    .line 11321
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 11322
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    if-nez v0, :cond_2

    move v0, v1

    .line 11323
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    .line 11325
    if-eqz v0, :cond_1

    .line 11326
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11328
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 11329
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;-><init>()V

    aput-object v3, v2, v0

    .line 11330
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 11331
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 11328
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 11322
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    array-length v0, v0

    goto :goto_1

    .line 11334
    :cond_3
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;-><init>()V

    aput-object v3, v2, v0

    .line 11335
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 11336
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    goto :goto_0

    .line 11310
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10278
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 10279
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 10280
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->gConfigValue:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    aget-object v1, v1, v0

    .line 10281
    if-eqz v1, :cond_0

    .line 10282
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10279
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10286
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 10287
    return-void
.end method
