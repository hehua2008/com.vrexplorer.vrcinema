.class public final Lcom/google/common/logging/nano/Vr$VREvent$Transform;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Transform;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private rotationQx:Ljava/lang/Float;

.field private rotationQy:Ljava/lang/Float;

.field private rotationQz:Ljava/lang/Float;

.field private scale:Ljava/lang/Float;

.field private translationX:Ljava/lang/Float;

.field private translationY:Ljava/lang/Float;

.field private translationZ:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 643
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1648
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->translationX:Ljava/lang/Float;

    .line 1649
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->translationY:Ljava/lang/Float;

    .line 1650
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->translationZ:Ljava/lang/Float;

    .line 1651
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->rotationQx:Ljava/lang/Float;

    .line 1652
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->rotationQy:Ljava/lang/Float;

    .line 1653
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->rotationQz:Ljava/lang/Float;

    .line 1654
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->scale:Ljava/lang/Float;

    .line 1655
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1656
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->cachedSize:I

    .line 645
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Transform;
    .locals 2

    .prologue
    .line 663
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    return-object v0

    .line 664
    :catch_0
    move-exception v0

    .line 665
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
    .line 603
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Transform;

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
    .line 603
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Transform;

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
    .line 603
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 700
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 701
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->translationX:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 702
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->translationX:Ljava/lang/Float;

    .line 703
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 705
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->translationY:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 706
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->translationY:Ljava/lang/Float;

    .line 707
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 709
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->translationZ:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 710
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->translationZ:Ljava/lang/Float;

    .line 711
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 713
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->rotationQx:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 714
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->rotationQx:Ljava/lang/Float;

    .line 715
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 717
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->rotationQy:Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 718
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->rotationQy:Ljava/lang/Float;

    .line 719
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 721
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->rotationQz:Ljava/lang/Float;

    if-eqz v1, :cond_5

    .line 722
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->rotationQz:Ljava/lang/Float;

    .line 723
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 725
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->scale:Ljava/lang/Float;

    if-eqz v1, :cond_6

    .line 726
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->scale:Ljava/lang/Float;

    .line 727
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 729
    :cond_6
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
    .line 603
    .line 1737
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1738
    sparse-switch v0, :sswitch_data_0

    .line 1742
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1743
    :sswitch_0
    return-object p0

    .line 1748
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->translationX:Ljava/lang/Float;

    goto :goto_0

    .line 1752
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->translationY:Ljava/lang/Float;

    goto :goto_0

    .line 1756
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->translationZ:Ljava/lang/Float;

    goto :goto_0

    .line 1760
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->rotationQx:Ljava/lang/Float;

    goto :goto_0

    .line 1764
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->rotationQy:Ljava/lang/Float;

    goto :goto_0

    .line 1768
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->rotationQz:Ljava/lang/Float;

    goto :goto_0

    .line 1772
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->scale:Ljava/lang/Float;

    goto :goto_0

    .line 1738
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x3d -> :sswitch_7
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
    .line 674
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->translationX:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 675
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->translationX:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->translationY:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 678
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->translationY:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->translationZ:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 681
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->translationZ:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 683
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->rotationQx:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 684
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->rotationQx:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 686
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->rotationQy:Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 687
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->rotationQy:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 689
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->rotationQz:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 690
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->rotationQz:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 692
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->scale:Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 693
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->scale:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 695
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 696
    return-void
.end method
