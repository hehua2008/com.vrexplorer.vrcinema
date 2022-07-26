.class public final Lcom/google/common/logging/nano/Vr$VREvent$Renderer;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Renderer;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private glRenderer:Ljava/lang/String;

.field private glVendor:Ljava/lang/String;

.field private glVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 503
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1508
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->glVendor:Ljava/lang/String;

    .line 1509
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->glRenderer:Ljava/lang/String;

    .line 1510
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->glVersion:Ljava/lang/String;

    .line 1511
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1512
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->cachedSize:I

    .line 505
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Renderer;
    .locals 2

    .prologue
    .line 519
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    return-object v0

    .line 520
    :catch_0
    move-exception v0

    .line 521
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
    .line 475
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

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
    .line 475
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

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
    .line 475
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 544
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 545
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->glVendor:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 546
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->glVendor:Ljava/lang/String;

    .line 547
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->glRenderer:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 550
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->glRenderer:Ljava/lang/String;

    .line 551
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 553
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->glVersion:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 554
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->glVersion:Ljava/lang/String;

    .line 555
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 557
    :cond_2
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
    .line 475
    .line 1565
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1566
    sparse-switch v0, :sswitch_data_0

    .line 1570
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1571
    :sswitch_0
    return-object p0

    .line 1576
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->glVendor:Ljava/lang/String;

    goto :goto_0

    .line 1580
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->glRenderer:Ljava/lang/String;

    goto :goto_0

    .line 1584
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->glVersion:Ljava/lang/String;

    goto :goto_0

    .line 1566
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->glVendor:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 531
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->glVendor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->glRenderer:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 534
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->glRenderer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->glVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 537
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->glVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 539
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 540
    return-void
.end method
