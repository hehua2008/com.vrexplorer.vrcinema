.class public final Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnalyticsSample"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;


# instance fields
.field public asyncReprojectionAnalytics:Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->clear()Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;

    .line 34
    return-void
.end method

.method public static emptyArray()[Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;

    if-nez v0, :cond_1

    .line 17
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;

    sput-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->asyncReprojectionAnalytics:Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    .line 38
    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->cachedSize:I

    .line 40
    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;

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
    .line 10
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;
    .locals 2

    .prologue
    .line 46
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->asyncReprojectionAnalytics:Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->asyncReprojectionAnalytics:Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    invoke-virtual {v1}, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->asyncReprojectionAnalytics:Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    .line 53
    :cond_0
    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->asyncReprojectionAnalytics:Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    if-eqz v1, :cond_0

    .line 70
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->asyncReprojectionAnalytics:Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    .line 71
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_0
    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 82
    sparse-switch v0, :sswitch_data_0

    .line 86
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    :sswitch_0
    return-object p0

    .line 92
    :sswitch_1
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->asyncReprojectionAnalytics:Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->asyncReprojectionAnalytics:Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->asyncReprojectionAnalytics:Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 82
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 60
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->asyncReprojectionAnalytics:Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AnalyticsSample;->asyncReprojectionAnalytics:Lcom/google/vrtoolkit/cardboard/proto/nano/Analytics$AsyncReprojectionAnalytics;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 63
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 64
    return-void
.end method
