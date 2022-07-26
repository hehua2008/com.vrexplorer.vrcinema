.class public final Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private exitType:Ljava/lang/Integer;

.field private numberOfViewPreloadsAttempted:Ljava/lang/Long;

.field private numberOfViewPreloadsSucceeded:Ljava/lang/Long;

.field private viewPreloadDurationMs:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8025
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9030
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->numberOfViewPreloadsAttempted:Ljava/lang/Long;

    .line 9031
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->numberOfViewPreloadsSucceeded:Ljava/lang/Long;

    .line 9032
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->viewPreloadDurationMs:Ljava/lang/Long;

    .line 9033
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9034
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->cachedSize:I

    .line 8027
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;
    .locals 2

    .prologue
    .line 8041
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8045
    return-object v0

    .line 8042
    :catch_0
    move-exception v0

    .line 8043
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
    .line 7988
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

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
    .line 7988
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

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
    .line 7988
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 8069
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8070
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->exitType:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 8071
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->exitType:Ljava/lang/Integer;

    .line 8072
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8074
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->numberOfViewPreloadsAttempted:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 8075
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->numberOfViewPreloadsAttempted:Ljava/lang/Long;

    .line 8076
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8078
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->numberOfViewPreloadsSucceeded:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 8079
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->numberOfViewPreloadsSucceeded:Ljava/lang/Long;

    .line 8080
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8082
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->viewPreloadDurationMs:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 8083
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->viewPreloadDurationMs:Ljava/lang/Long;

    .line 8084
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8086
    :cond_3
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
    .line 7988
    .line 9094
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9095
    sparse-switch v0, :sswitch_data_0

    .line 9099
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9100
    :sswitch_0
    return-object p0

    .line 9105
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 9106
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 9109
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->exitType:Ljava/lang/Integer;

    goto :goto_0

    .line 9115
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->numberOfViewPreloadsAttempted:Ljava/lang/Long;

    goto :goto_0

    .line 9119
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->numberOfViewPreloadsSucceeded:Ljava/lang/Long;

    goto :goto_0

    .line 9123
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->viewPreloadDurationMs:Ljava/lang/Long;

    goto :goto_0

    .line 9095
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 9106
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 8052
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->exitType:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 8053
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->exitType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8055
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->numberOfViewPreloadsAttempted:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 8056
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->numberOfViewPreloadsAttempted:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8058
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->numberOfViewPreloadsSucceeded:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 8059
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->numberOfViewPreloadsSucceeded:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8061
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->viewPreloadDurationMs:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 8062
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->viewPreloadDurationMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8064
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8065
    return-void
.end method
