.class public final Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private headMountConfigUrl:Ljava/lang/String;

.field private status:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3047
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4052
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->headMountConfigUrl:Ljava/lang/String;

    .line 4053
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 4054
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->cachedSize:I

    .line 3049
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;
    .locals 2

    .prologue
    .line 3061
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3065
    return-object v0

    .line 3062
    :catch_0
    move-exception v0

    .line 3063
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3014
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->clone()Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

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
    .line 3014
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->clone()Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

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
    .line 3014
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->clone()Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 3083
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3084
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->status:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3085
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->status:Ljava/lang/Integer;

    .line 3086
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3088
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->headMountConfigUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3089
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->headMountConfigUrl:Ljava/lang/String;

    .line 3090
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3092
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3014
    .line 4100
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4101
    sparse-switch v0, :sswitch_data_0

    .line 4105
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4106
    :sswitch_0
    return-object p0

    .line 4111
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 4112
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4117
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->status:Ljava/lang/Integer;

    goto :goto_0

    .line 4123
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->headMountConfigUrl:Ljava/lang/String;

    goto :goto_0

    .line 4101
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 4112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3072
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->status:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3073
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->status:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3075
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->headMountConfigUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3076
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->headMountConfigUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3078
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3079
    return-void
.end method
