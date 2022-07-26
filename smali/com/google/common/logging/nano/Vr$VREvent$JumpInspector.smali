.class public final Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

.field private pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

.field private playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11967
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 12972
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    .line 12973
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    .line 12974
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    .line 12975
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 12976
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->cachedSize:I

    .line 11969
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;
    .locals 2

    .prologue
    .line 11983
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11987
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    if-eqz v1, :cond_0

    .line 11988
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    .line 11990
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    if-eqz v1, :cond_1

    .line 11991
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    .line 11993
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    if-eqz v1, :cond_2

    .line 11994
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    .line 11996
    :cond_2
    return-object v0

    .line 11984
    :catch_0
    move-exception v0

    .line 11985
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
    .line 10355
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

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
    .line 10355
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

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
    .line 10355
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 12017
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 12018
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    if-eqz v1, :cond_0

    .line 12019
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    .line 12020
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12022
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    if-eqz v1, :cond_1

    .line 12023
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    .line 12024
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12026
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    if-eqz v1, :cond_2

    .line 12027
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    .line 12028
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12030
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
    .line 10355
    .line 13038
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 13039
    sparse-switch v0, :sswitch_data_0

    .line 13043
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13044
    :sswitch_0
    return-object p0

    .line 13049
    :sswitch_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    if-nez v0, :cond_1

    .line 13050
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    .line 13052
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 13056
    :sswitch_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    if-nez v0, :cond_2

    .line 13057
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    .line 13059
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 13063
    :sswitch_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    if-nez v0, :cond_3

    .line 13064
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    .line 13066
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 13039
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
    .line 12003
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    if-eqz v0, :cond_0

    .line 12004
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->mediaDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12006
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    if-eqz v0, :cond_1

    .line 12007
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->playbackDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PlaybackDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12009
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    if-eqz v0, :cond_2

    .line 12010
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->pickerEvent:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$PickerDetails;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12012
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 12013
    return-void
.end method
