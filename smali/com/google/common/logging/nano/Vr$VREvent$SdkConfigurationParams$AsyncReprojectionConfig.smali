.class public final Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private displayLatencyMicros:Ljava/lang/Long;

.field private flags:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5812
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6817
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;->flags:Ljava/lang/Long;

    .line 6818
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;->displayLatencyMicros:Ljava/lang/Long;

    .line 6819
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 6820
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;->cachedSize:I

    .line 5814
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;
    .locals 2

    .prologue
    .line 5827
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5831
    return-object v0

    .line 5828
    :catch_0
    move-exception v0

    .line 5829
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
    .line 5778
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;

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
    .line 5778
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;

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
    .line 5778
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 5849
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5850
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;->flags:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 5851
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;->flags:Ljava/lang/Long;

    .line 5852
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5854
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;->displayLatencyMicros:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 5855
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;->displayLatencyMicros:Ljava/lang/Long;

    .line 5856
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5858
    :cond_1
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
    .line 5778
    .line 6866
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6867
    sparse-switch v0, :sswitch_data_0

    .line 6871
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6872
    :sswitch_0
    return-object p0

    .line 6877
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;->flags:Ljava/lang/Long;

    goto :goto_0

    .line 6881
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;->displayLatencyMicros:Ljava/lang/Long;

    goto :goto_0

    .line 6867
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5838
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;->flags:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 5839
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;->flags:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5841
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;->displayLatencyMicros:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 5842
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams$AsyncReprojectionConfig;->displayLatencyMicros:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 5844
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 5845
    return-void
.end method
