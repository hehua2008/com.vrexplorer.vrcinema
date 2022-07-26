.class public final Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private framesPerBuffer:Ljava/lang/Integer;

.field private numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private renderingMode:Ljava/lang/Integer;

.field private renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private sampleRate:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5016
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6021
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->sampleRate:Ljava/lang/Integer;

    .line 6022
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->framesPerBuffer:Ljava/lang/Integer;

    .line 6023
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 6024
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 6025
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 6026
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 6027
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6028
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cachedSize:I

    .line 5018
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 5035
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5039
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 5040
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move v1, v2

    .line 5041
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 5042
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 5043
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v4

    aput-object v4, v3, v1

    .line 5041
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5036
    :catch_0
    move-exception v0

    .line 5037
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 5047
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 5048
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move v1, v2

    .line 5049
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 5050
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    .line 5051
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v4

    aput-object v4, v3, v1

    .line 5049
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5055
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 5056
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move v1, v2

    .line 5057
    :goto_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 5058
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    if-eqz v3, :cond_4

    .line 5059
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v4

    aput-object v4, v3, v1

    .line 5057
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5063
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_7

    .line 5064
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 5065
    :goto_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v1, v1

    if-ge v2, v1, :cond_7

    .line 5066
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v1, v1, v2

    if-eqz v1, :cond_6

    .line 5067
    iget-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v3

    aput-object v3, v1, v2

    .line 5065
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5071
    :cond_7
    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 4968
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

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
    .line 4968
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

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
    .line 4968
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5124
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5125
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingMode:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 5126
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingMode:Ljava/lang/Integer;

    .line 5127
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5129
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->sampleRate:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 5130
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->sampleRate:Ljava/lang/Integer;

    .line 5131
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5133
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->framesPerBuffer:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 5134
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->framesPerBuffer:Ljava/lang/Integer;

    .line 5135
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5137
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 5138
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 5139
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v0

    .line 5140
    if-eqz v3, :cond_3

    .line 5141
    const/4 v4, 0x4

    .line 5142
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5138
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 5146
    :cond_5
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_8

    move v2, v0

    move v0, v1

    .line 5147
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 5148
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v0

    .line 5149
    if-eqz v3, :cond_6

    .line 5150
    const/4 v4, 0x5

    .line 5151
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5147
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move v0, v2

    .line 5155
    :cond_8
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_b

    move v2, v0

    move v0, v1

    .line 5156
    :goto_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_a

    .line 5157
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v0

    .line 5158
    if-eqz v3, :cond_9

    .line 5159
    const/4 v4, 0x6

    .line 5160
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5156
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    move v0, v2

    .line 5164
    :cond_b
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-lez v2, :cond_d

    .line 5165
    :goto_3
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    .line 5166
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v2, v2, v1

    .line 5167
    if-eqz v2, :cond_c

    .line 5168
    const/4 v3, 0x7

    .line 5169
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5165
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 5173
    :cond_d
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 4968
    .line 6181
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6182
    sparse-switch v0, :sswitch_data_0

    .line 6186
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6187
    :sswitch_0
    return-object p0

    .line 6192
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 6193
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6198
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingMode:Ljava/lang/Integer;

    goto :goto_0

    .line 6204
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->sampleRate:Ljava/lang/Integer;

    goto :goto_0

    .line 6208
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->framesPerBuffer:Ljava/lang/Integer;

    goto :goto_0

    .line 6212
    :sswitch_4
    const/16 v0, 0x22

    .line 6213
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 6214
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v0, :cond_2

    move v0, v1

    .line 6215
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 6217
    if-eqz v0, :cond_1

    .line 6218
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6220
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 6221
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 6222
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 6223
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6220
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6214
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    goto :goto_1

    .line 6226
    :cond_3
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 6227
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 6228
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto :goto_0

    .line 6232
    :sswitch_5
    const/16 v0, 0x2a

    .line 6233
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 6234
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v0, :cond_5

    move v0, v1

    .line 6235
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 6237
    if-eqz v0, :cond_4

    .line 6238
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6240
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 6241
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 6242
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 6243
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6240
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 6234
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    goto :goto_3

    .line 6246
    :cond_6
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 6247
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 6248
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 6252
    :sswitch_6
    const/16 v0, 0x32

    .line 6253
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 6254
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v0, :cond_8

    move v0, v1

    .line 6255
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 6257
    if-eqz v0, :cond_7

    .line 6258
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6260
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 6261
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 6262
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 6263
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6260
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 6254
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    goto :goto_5

    .line 6266
    :cond_9
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 6267
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 6268
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 6272
    :sswitch_7
    const/16 v0, 0x3a

    .line 6273
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 6274
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v0, :cond_b

    move v0, v1

    .line 6275
    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 6277
    if-eqz v0, :cond_a

    .line 6278
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6280
    :cond_a
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_c

    .line 6281
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 6282
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 6283
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 6280
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 6274
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    goto :goto_7

    .line 6286
    :cond_c
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v3, v2, v0

    .line 6287
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 6288
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 6182
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch

    .line 6193
    :pswitch_data_0
    .packed-switch 0x0
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
    const/4 v1, 0x0

    .line 5078
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingMode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 5079
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingMode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5081
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->sampleRate:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 5082
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->sampleRate:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5084
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->framesPerBuffer:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 5085
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->framesPerBuffer:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5087
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 5088
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 5089
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v2, v2, v0

    .line 5090
    if-eqz v2, :cond_3

    .line 5091
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5088
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5095
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    .line 5096
    :goto_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 5097
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v2, v2, v0

    .line 5098
    if-eqz v2, :cond_5

    .line 5099
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5096
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5103
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    .line 5104
    :goto_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 5105
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v2, v2, v0

    .line 5106
    if-eqz v2, :cond_7

    .line 5107
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5104
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5111
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_a

    .line 5112
    :goto_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v0, v0

    if-ge v1, v0, :cond_a

    .line 5113
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v0, v0, v1

    .line 5114
    if-eqz v0, :cond_9

    .line 5115
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 5112
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 5119
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5120
    return-void
.end method
