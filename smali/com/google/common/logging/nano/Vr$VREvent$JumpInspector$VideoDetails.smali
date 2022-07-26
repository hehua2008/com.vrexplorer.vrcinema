.class public final Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private audioBitRate:Ljava/lang/Integer;

.field private audioChannelCount:Ljava/lang/Integer;

.field private audioCodec:Ljava/lang/Integer;

.field private framesPerSecond:Ljava/lang/Double;

.field private mediaLengthSeconds:Ljava/lang/Long;

.field private resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

.field private sampleRate:Ljava/lang/Integer;

.field private sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

.field private usedMonoFilename:Ljava/lang/Boolean;

.field private usedWalleFilename:Ljava/lang/Boolean;

.field private usedWallyFilename:Ljava/lang/Boolean;

.field private videoBitRate:Ljava/lang/Integer;

.field private videoCodec:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10595
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 11600
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->mediaLengthSeconds:Ljava/lang/Long;

    .line 11601
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    .line 11602
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->framesPerSecond:Ljava/lang/Double;

    .line 11603
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sampleRate:Ljava/lang/Integer;

    .line 11604
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoBitRate:Ljava/lang/Integer;

    .line 11605
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioBitRate:Ljava/lang/Integer;

    .line 11606
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    .line 11607
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioChannelCount:Ljava/lang/Integer;

    .line 11608
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedMonoFilename:Ljava/lang/Boolean;

    .line 11609
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWalleFilename:Ljava/lang/Boolean;

    .line 11610
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWallyFilename:Ljava/lang/Boolean;

    .line 11611
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 11612
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->cachedSize:I

    .line 10597
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;
    .locals 2

    .prologue
    .line 10619
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10623
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    if-eqz v1, :cond_0

    .line 10624
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    .line 10626
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    if-eqz v1, :cond_1

    .line 10627
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    .line 10629
    :cond_1
    return-object v0

    .line 10620
    :catch_0
    move-exception v0

    .line 10621
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
    .line 10537
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

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
    .line 10537
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

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
    .line 10537
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 10680
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 10681
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->mediaLengthSeconds:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 10682
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->mediaLengthSeconds:Ljava/lang/Long;

    .line 10683
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10685
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    if-eqz v1, :cond_1

    .line 10686
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    .line 10687
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10689
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->framesPerSecond:Ljava/lang/Double;

    if-eqz v1, :cond_2

    .line 10690
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->framesPerSecond:Ljava/lang/Double;

    .line 10691
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 10693
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sampleRate:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 10694
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sampleRate:Ljava/lang/Integer;

    .line 10695
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10697
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoBitRate:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 10698
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoBitRate:Ljava/lang/Integer;

    .line 10699
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10701
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioBitRate:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 10702
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioBitRate:Ljava/lang/Integer;

    .line 10703
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10705
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoCodec:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 10706
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoCodec:Ljava/lang/Integer;

    .line 10707
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10709
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioCodec:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 10710
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioCodec:Ljava/lang/Integer;

    .line 10711
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10713
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    if-eqz v1, :cond_8

    .line 10714
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    .line 10715
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10717
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioChannelCount:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 10718
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioChannelCount:Ljava/lang/Integer;

    .line 10719
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10721
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedMonoFilename:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 10722
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedMonoFilename:Ljava/lang/Boolean;

    .line 10723
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10725
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWalleFilename:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 10726
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWalleFilename:Ljava/lang/Boolean;

    .line 10727
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10729
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWallyFilename:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    .line 10730
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWallyFilename:Ljava/lang/Boolean;

    .line 10731
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10733
    :cond_c
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
    .line 10537
    .line 11741
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11742
    sparse-switch v0, :sswitch_data_0

    .line 11746
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11747
    :sswitch_0
    return-object p0

    .line 11752
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->mediaLengthSeconds:Ljava/lang/Long;

    goto :goto_0

    .line 11756
    :sswitch_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    if-nez v0, :cond_1

    .line 11757
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    .line 11759
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 11763
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->framesPerSecond:Ljava/lang/Double;

    goto :goto_0

    .line 11767
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sampleRate:Ljava/lang/Integer;

    goto :goto_0

    .line 11771
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoBitRate:Ljava/lang/Integer;

    goto :goto_0

    .line 11775
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioBitRate:Ljava/lang/Integer;

    goto :goto_0

    .line 11779
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 11780
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 11786
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoCodec:Ljava/lang/Integer;

    goto :goto_0

    .line 11792
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 11793
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 11799
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioCodec:Ljava/lang/Integer;

    goto :goto_0

    .line 11805
    :sswitch_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    if-nez v0, :cond_2

    .line 11806
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    .line 11808
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 11812
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioChannelCount:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 11816
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedMonoFilename:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 11820
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWalleFilename:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 11824
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWallyFilename:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 11742
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x19 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
    .end sparse-switch

    .line 11780
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 11793
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
    .line 10636
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->mediaLengthSeconds:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 10637
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->mediaLengthSeconds:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 10639
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    if-eqz v0, :cond_1

    .line 10640
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10642
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->framesPerSecond:Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 10643
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->framesPerSecond:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 10645
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sampleRate:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 10646
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sampleRate:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10648
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoBitRate:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 10649
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoBitRate:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10651
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioBitRate:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 10652
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioBitRate:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10654
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoCodec:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 10655
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoCodec:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10657
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioCodec:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 10658
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioCodec:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10660
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    if-eqz v0, :cond_8

    .line 10661
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 10663
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioChannelCount:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 10664
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioChannelCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10666
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedMonoFilename:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 10667
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedMonoFilename:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10669
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWalleFilename:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 10670
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWalleFilename:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10672
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWallyFilename:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 10673
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWallyFilename:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10675
    :cond_c
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 10676
    return-void
.end method
