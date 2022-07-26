.class public final Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Nfc.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/proto/nano/Nfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NfcParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;


# instance fields
.field private bitField0_:I

.field private viewerId_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->clear()Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;

    .line 52
    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->_emptyArray:[Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;

    if-nez v0, :cond_1

    .line 17
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->_emptyArray:[Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;

    sput-object v0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->_emptyArray:[Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->_emptyArray:[Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;

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

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;

    invoke-direct {v0}, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;

    invoke-direct {v0}, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->bitField0_:I

    .line 56
    iput v0, p0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->viewerId_:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->cachedSize:I

    .line 59
    return-object p0
.end method

.method public final clearViewerId()Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->viewerId_:I

    .line 44
    iget v0, p0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->bitField0_:I

    .line 45
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
    invoke-virtual {p0}, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->clone()Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;

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
    invoke-virtual {p0}, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->clone()Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;
    .locals 2

    .prologue
    .line 65
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
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
    invoke-virtual {p0}, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->clone()Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 85
    iget v1, p0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 86
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->viewerId_:I

    .line 87
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_0
    return v0
.end method

.method public final getViewerId()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->viewerId_:I

    return v0
.end method

.method public final hasViewerId()Z
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    invoke-virtual {p0, p1}, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 98
    sparse-switch v0, :sswitch_data_0

    .line 102
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :sswitch_0
    return-object p0

    .line 108
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->viewerId_:I

    .line 109
    iget v0, p0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->bitField0_:I

    goto :goto_0

    .line 98
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final setViewerId(I)Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;
    .locals 1

    .prologue
    .line 35
    iput p1, p0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->viewerId_:I

    .line 36
    iget v0, p0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->bitField0_:I

    .line 37
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget v0, p0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/vr/vrcore/proto/nano/Nfc$NfcParams;->viewerId_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 79
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 80
    return-void
.end method
