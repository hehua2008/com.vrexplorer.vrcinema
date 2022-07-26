.class public final Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;


# instance fields
.field private gConfigKey:Ljava/lang/String;

.field private stringValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10138
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 11143
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->gConfigKey:Ljava/lang/String;

    .line 11144
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->stringValue:Ljava/lang/String;

    .line 11145
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 11146
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->cachedSize:I

    .line 10140
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;
    .locals 2

    .prologue
    .line 10119
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    if-nez v0, :cond_1

    .line 10120
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 10122
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    if-nez v0, :cond_0

    .line 10123
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    .line 10125
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10127
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    return-object v0

    .line 10125
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;
    .locals 2

    .prologue
    .line 10153
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10157
    return-object v0

    .line 10154
    :catch_0
    move-exception v0

    .line 10155
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
    .line 10113
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

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
    .line 10113
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

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
    .line 10113
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 10175
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 10176
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->gConfigKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10177
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->gConfigKey:Ljava/lang/String;

    .line 10178
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10180
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->stringValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 10181
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->stringValue:Ljava/lang/String;

    .line 10182
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10184
    :cond_1
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
    .line 10113
    .line 11192
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11193
    sparse-switch v0, :sswitch_data_0

    .line 11197
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11198
    :sswitch_0
    return-object p0

    .line 11203
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->gConfigKey:Ljava/lang/String;

    goto :goto_0

    .line 11207
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->stringValue:Ljava/lang/String;

    goto :goto_0

    .line 11193
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
    .line 10164
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->gConfigKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 10165
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->gConfigKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10167
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 10168
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate$GConfigValue;->stringValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10170
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 10171
    return-void
.end method
