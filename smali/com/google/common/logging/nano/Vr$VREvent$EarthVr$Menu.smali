.class public final Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private categoryName:Ljava/lang/String;

.field private contentKey:Ljava/lang/String;

.field private pageIndex:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7043
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8048
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->categoryName:Ljava/lang/String;

    .line 8049
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->pageIndex:Ljava/lang/Integer;

    .line 8050
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->contentKey:Ljava/lang/String;

    .line 8051
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 8052
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->cachedSize:I

    .line 7045
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;
    .locals 2

    .prologue
    .line 7059
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7063
    return-object v0

    .line 7060
    :catch_0
    move-exception v0

    .line 7061
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
    .line 7015
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

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
    .line 7015
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

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
    .line 7015
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 7084
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 7085
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->categoryName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7086
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->categoryName:Ljava/lang/String;

    .line 7087
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7089
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->pageIndex:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 7090
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->pageIndex:Ljava/lang/Integer;

    .line 7091
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7093
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->contentKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 7094
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->contentKey:Ljava/lang/String;

    .line 7095
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7097
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
    .line 7015
    .line 8105
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8106
    sparse-switch v0, :sswitch_data_0

    .line 8110
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8111
    :sswitch_0
    return-object p0

    .line 8116
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->categoryName:Ljava/lang/String;

    goto :goto_0

    .line 8120
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->pageIndex:Ljava/lang/Integer;

    goto :goto_0

    .line 8124
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->contentKey:Ljava/lang/String;

    goto :goto_0

    .line 8106
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 7070
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->categoryName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7071
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->categoryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7073
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->pageIndex:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 7074
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->pageIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7076
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->contentKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 7077
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->contentKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7079
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7080
    return-void
.end method
