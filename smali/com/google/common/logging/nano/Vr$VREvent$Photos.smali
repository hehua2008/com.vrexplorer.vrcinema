.class public final Lcom/google/common/logging/nano/Vr$VREvent$Photos;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Photos;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private numPhotos:Ljava/lang/Integer;

.field private openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

.field private warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2070
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3075
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->numPhotos:Ljava/lang/Integer;

    .line 3076
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    .line 3077
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    .line 3078
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3079
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->cachedSize:I

    .line 2072
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos;
    .locals 2

    .prologue
    .line 2086
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2090
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    if-eqz v1, :cond_0

    .line 2091
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    .line 2093
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    if-eqz v1, :cond_1

    .line 2094
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    .line 2096
    :cond_1
    return-object v0

    .line 2087
    :catch_0
    move-exception v0

    .line 2088
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
    .line 1784
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos;

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
    .line 1784
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos;

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
    .line 1784
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 2117
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2118
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->numPhotos:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2119
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->numPhotos:Ljava/lang/Integer;

    .line 2120
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2122
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    if-eqz v1, :cond_1

    .line 2123
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    .line 2124
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2126
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    if-eqz v1, :cond_2

    .line 2127
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    .line 2128
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2130
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
    .line 1784
    .line 3138
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3139
    sparse-switch v0, :sswitch_data_0

    .line 3143
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3144
    :sswitch_0
    return-object p0

    .line 3149
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->numPhotos:Ljava/lang/Integer;

    goto :goto_0

    .line 3153
    :sswitch_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    if-nez v0, :cond_1

    .line 3154
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    .line 3156
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3160
    :sswitch_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    if-nez v0, :cond_2

    .line 3161
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    .line 3163
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3139
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 2103
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->numPhotos:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2104
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->numPhotos:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2106
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    if-eqz v0, :cond_1

    .line 2107
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->openMedia:Lcom/google/common/logging/nano/Vr$VREvent$Photos$OpenMedia;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2109
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    if-eqz v0, :cond_2

    .line 2110
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->warmWelcome:Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2112
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2113
    return-void
.end method
