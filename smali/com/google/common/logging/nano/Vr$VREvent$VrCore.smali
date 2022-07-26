.class public final Lcom/google/common/logging/nano/Vr$VREvent$VrCore;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$VrCore;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private clientApiVersion:Ljava/lang/Integer;

.field private controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

.field private errorCode:Ljava/lang/Integer;

.field private foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

.field private permission:Ljava/lang/Integer;

.field private previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6542
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7547
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 7548
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clientApiVersion:Ljava/lang/Integer;

    .line 7549
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 7550
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    .line 7551
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 7552
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->cachedSize:I

    .line 6544
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore;
    .locals 2

    .prologue
    .line 6559
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6563
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_0

    .line 6564
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 6566
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_1

    .line 6567
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 6569
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    if-eqz v1, :cond_2

    .line 6570
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    .line 6572
    :cond_2
    return-object v0

    .line 6560
    :catch_0
    move-exception v0

    .line 6561
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
    .line 6113
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

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
    .line 6113
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

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
    .line 6113
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 6602
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6603
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->errorCode:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 6604
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->errorCode:Ljava/lang/Integer;

    .line 6605
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6607
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->permission:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 6608
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->permission:Ljava/lang/Integer;

    .line 6609
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6611
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_2

    .line 6612
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 6613
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6615
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clientApiVersion:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 6616
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clientApiVersion:Ljava/lang/Integer;

    .line 6617
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6619
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_4

    .line 6620
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 6621
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6623
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    if-eqz v1, :cond_5

    .line 6624
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    .line 6625
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6627
    :cond_5
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
    .line 6113
    .line 7635
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7636
    sparse-switch v0, :sswitch_data_0

    .line 7640
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7641
    :sswitch_0
    return-object p0

    .line 7646
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 7647
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 7702
    :sswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->errorCode:Ljava/lang/Integer;

    goto :goto_0

    .line 7708
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 7709
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7719
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->permission:Ljava/lang/Integer;

    goto :goto_0

    .line 7725
    :sswitch_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-nez v0, :cond_1

    .line 7726
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 7728
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7732
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clientApiVersion:Ljava/lang/Integer;

    goto :goto_0

    .line 7736
    :sswitch_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-nez v0, :cond_2

    .line 7737
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 7739
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7743
    :sswitch_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    if-nez v0, :cond_3

    .line 7744
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    .line 7746
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7636
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_3
        0x1a -> :sswitch_4
        0x20 -> :sswitch_5
        0x2a -> :sswitch_6
        0x32 -> :sswitch_7
    .end sparse-switch

    .line 7647
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
        0x68 -> :sswitch_2
        0x69 -> :sswitch_2
        0x6a -> :sswitch_2
        0x6b -> :sswitch_2
        0x6c -> :sswitch_2
        0x6d -> :sswitch_2
        0x6e -> :sswitch_2
        0x6f -> :sswitch_2
        0x70 -> :sswitch_2
        0x71 -> :sswitch_2
        0x72 -> :sswitch_2
        0x73 -> :sswitch_2
        0x74 -> :sswitch_2
        0x75 -> :sswitch_2
        0x76 -> :sswitch_2
        0x77 -> :sswitch_2
        0x78 -> :sswitch_2
        0x79 -> :sswitch_2
        0x7a -> :sswitch_2
        0x7b -> :sswitch_2
        0x7c -> :sswitch_2
        0x7d -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x97 -> :sswitch_2
        0x98 -> :sswitch_2
        0x99 -> :sswitch_2
        0xb0 -> :sswitch_2
        0xb1 -> :sswitch_2
        0xb2 -> :sswitch_2
        0xb3 -> :sswitch_2
        0xb4 -> :sswitch_2
        0xb5 -> :sswitch_2
        0xb6 -> :sswitch_2
        0xb7 -> :sswitch_2
        0xb8 -> :sswitch_2
        0xb9 -> :sswitch_2
        0xba -> :sswitch_2
        0xbb -> :sswitch_2
        0xbc -> :sswitch_2
        0xbd -> :sswitch_2
        0xbe -> :sswitch_2
        0xbf -> :sswitch_2
        0xc9 -> :sswitch_2
        0xca -> :sswitch_2
        0xcb -> :sswitch_2
        0x12d -> :sswitch_2
        0x191 -> :sswitch_2
        0x192 -> :sswitch_2
    .end sparse-switch

    .line 7709
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    .line 6579
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->errorCode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 6580
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->errorCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6582
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->permission:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 6583
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->permission:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6585
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v0, :cond_2

    .line 6586
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->foregroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6588
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clientApiVersion:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 6589
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clientApiVersion:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6591
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v0, :cond_4

    .line 6592
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->previousForegroundApplication:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6594
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    if-eqz v0, :cond_5

    .line 6595
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->controller:Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 6597
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6598
    return-void
.end method
