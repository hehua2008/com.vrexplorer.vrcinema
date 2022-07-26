.class public final Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private language:Ljava/lang/String;

.field private layout:Ljava/lang/String;

.field private length:Ljava/lang/Integer;

.field private type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8847
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9852
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->length:Ljava/lang/Integer;

    .line 9853
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->layout:Ljava/lang/String;

    .line 9854
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->language:Ljava/lang/String;

    .line 9855
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9856
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->cachedSize:I

    .line 8849
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;
    .locals 2

    .prologue
    .line 8863
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8867
    return-object v0

    .line 8864
    :catch_0
    move-exception v0

    .line 8865
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
    .line 8816
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

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
    .line 8816
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

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
    .line 8816
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 8891
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8892
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->type:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 8893
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->type:Ljava/lang/Integer;

    .line 8894
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8896
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->length:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 8897
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->length:Ljava/lang/Integer;

    .line 8898
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8900
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->layout:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 8901
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->layout:Ljava/lang/String;

    .line 8902
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8904
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->language:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 8905
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->language:Ljava/lang/String;

    .line 8906
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8908
    :cond_3
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
    .line 8816
    .line 9916
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9917
    sparse-switch v0, :sswitch_data_0

    .line 9921
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9922
    :sswitch_0
    return-object p0

    .line 9927
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 9928
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 9932
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->type:Ljava/lang/Integer;

    goto :goto_0

    .line 9938
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->length:Ljava/lang/Integer;

    goto :goto_0

    .line 9942
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->layout:Ljava/lang/String;

    goto :goto_0

    .line 9946
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->language:Ljava/lang/String;

    goto :goto_0

    .line 9917
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 9928
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
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
    .line 8874
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->type:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 8875
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8877
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->length:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 8878
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->length:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8880
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->layout:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 8881
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->layout:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8883
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->language:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 8884
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->language:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8886
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8887
    return-void
.end method
