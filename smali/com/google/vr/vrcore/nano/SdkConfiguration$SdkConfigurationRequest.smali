.class public final Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SdkConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/nano/SdkConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SdkConfigurationRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;


# instance fields
.field public requestedParams:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

.field public sdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->clear()Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;

    .line 37
    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->_emptyArray:[Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;

    if-nez v0, :cond_1

    .line 17
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->_emptyArray:[Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;

    sput-object v0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->_emptyArray:[Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->_emptyArray:[Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;

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

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;

    invoke-direct {v0}, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;

    invoke-direct {v0}, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->sdkVersion:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->requestedParams:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    .line 42
    iput-object v0, p0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->cachedSize:I

    .line 44
    return-object p0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->sdkVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 63
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->sdkVersion:Ljava/lang/String;

    .line 64
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->requestedParams:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    if-eqz v1, :cond_1

    .line 67
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->requestedParams:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    .line 68
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_1
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
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 79
    sparse-switch v0, :sswitch_data_0

    .line 83
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :sswitch_0
    return-object p0

    .line 89
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->sdkVersion:Ljava/lang/String;

    goto :goto_0

    .line 93
    :sswitch_2
    iget-object v0, p0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->requestedParams:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;-><init>()V

    iput-object v0, p0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->requestedParams:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->requestedParams:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 79
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 50
    iget-object v0, p0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->sdkVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->requestedParams:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/vr/vrcore/nano/SdkConfiguration$SdkConfigurationRequest;->requestedParams:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 56
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 57
    return-void
.end method
