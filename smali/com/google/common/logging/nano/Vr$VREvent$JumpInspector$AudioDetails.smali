.class public final Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private audioBitRate:Ljava/lang/Integer;

.field private audioChannelCount:Ljava/lang/Integer;

.field private audioCodec:Ljava/lang/Integer;

.field private mediaLengthSeconds:Ljava/lang/Long;

.field private sampleRate:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10996
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 12001
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->mediaLengthSeconds:Ljava/lang/Long;

    .line 12002
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->sampleRate:Ljava/lang/Integer;

    .line 12003
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->audioBitRate:Ljava/lang/Integer;

    .line 12004
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->audioChannelCount:Ljava/lang/Integer;

    .line 12005
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 12006
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->cachedSize:I

    .line 10998
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;
    .locals 2

    .prologue
    .line 11013
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11017
    return-object v0

    .line 11014
    :catch_0
    move-exception v0

    .line 11015
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
    .line 10962
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

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
    .line 10962
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

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
    .line 10962
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 11044
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 11045
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->mediaLengthSeconds:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 11046
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->mediaLengthSeconds:Ljava/lang/Long;

    .line 11047
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11049
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->sampleRate:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 11050
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->sampleRate:Ljava/lang/Integer;

    .line 11051
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11053
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->audioBitRate:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 11054
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->audioBitRate:Ljava/lang/Integer;

    .line 11055
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11057
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->audioCodec:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 11058
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->audioCodec:Ljava/lang/Integer;

    .line 11059
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11061
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->audioChannelCount:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 11062
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->audioChannelCount:Ljava/lang/Integer;

    .line 11063
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11065
    :cond_4
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10962
    .line 12073
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 12074
    sparse-switch v0, :sswitch_data_0

    .line 12078
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12079
    :sswitch_0
    return-object p0

    .line 12084
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->mediaLengthSeconds:Ljava/lang/Long;

    goto :goto_0

    .line 12088
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->sampleRate:Ljava/lang/Integer;

    goto :goto_0

    .line 12092
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->audioBitRate:Ljava/lang/Integer;

    goto :goto_0

    .line 12096
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 12097
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 12103
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->audioCodec:Ljava/lang/Integer;

    goto :goto_0

    .line 12109
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->audioChannelCount:Ljava/lang/Integer;

    goto :goto_0

    .line 12074
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch

    .line 12097
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11024
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->mediaLengthSeconds:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 11025
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->mediaLengthSeconds:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 11027
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->sampleRate:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 11028
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->sampleRate:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11030
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->audioBitRate:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 11031
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->audioBitRate:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11033
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->audioCodec:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 11034
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->audioCodec:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11036
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->audioChannelCount:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 11037
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->audioChannelCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11039
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 11040
    return-void
.end method
