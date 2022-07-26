.class public final Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "CardboardDevice.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DaydreamInternalParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;


# instance fields
.field public alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

.field private bitField0_:I

.field private version_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 964
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 965
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->clear()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    .line 966
    return-void
.end method

.method public static emptyArray()[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 2

    .prologue
    .line 927
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-nez v0, :cond_1

    .line 928
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 930
    :try_start_0
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-nez v0, :cond_0

    .line 931
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    sput-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    .line 933
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    :cond_1
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    return-object v0

    .line 933
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1084
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1078
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 969
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    .line 970
    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    .line 971
    invoke-static {}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->emptyArray()[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    .line 972
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 973
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->cachedSize:I

    .line 974
    return-object p0
.end method

.method public final clearVersion()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1

    .prologue
    .line 954
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    .line 955
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    .line 956
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
    .line 921
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

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
    .line 921
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 4

    .prologue
    .line 980
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 985
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    iput-object v1, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    .line 986
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 987
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 988
    iget-object v2, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    move-result-object v3

    aput-object v3, v2, v1

    .line 986
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 981
    :catch_0
    move-exception v0

    .line 982
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 992
    :cond_1
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
    .line 921
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .prologue
    .line 1015
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1016
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1017
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    .line 1018
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1020
    :cond_0
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 1021
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1022
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    aget-object v2, v2, v0

    .line 1023
    if-eqz v2, :cond_1

    .line 1024
    const/4 v3, 0x2

    .line 1025
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1021
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1029
    :cond_3
    return v0
.end method

.method public final getVersion()I
    .locals 1

    .prologue
    .line 943
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    return v0
.end method

.method public final hasVersion()Z
    .locals 1

    .prologue
    .line 951
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

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
    .line 921
    invoke-virtual {p0, p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1037
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1038
    sparse-switch v0, :sswitch_data_0

    .line 1042
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1043
    :sswitch_0
    return-object p0

    .line 1048
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    .line 1049
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    goto :goto_0

    .line 1053
    :sswitch_2
    const/16 v0, 0x12

    .line 1054
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1055
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    if-nez v0, :cond_2

    move v0, v1

    .line 1056
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    .line 1058
    if-eqz v0, :cond_1

    .line 1059
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1061
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1062
    new-instance v3, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    invoke-direct {v3}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;-><init>()V

    aput-object v3, v2, v0

    .line 1063
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1064
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1061
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1055
    :cond_2
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v0, v0

    goto :goto_1

    .line 1067
    :cond_3
    new-instance v3, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    invoke-direct {v3}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;-><init>()V

    aput-object v3, v2, v0

    .line 1068
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1069
    iput-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    goto :goto_0

    .line 1038
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final setVersion(I)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1

    .prologue
    .line 946
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    .line 947
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    .line 948
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 999
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1000
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 1003
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1004
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    aget-object v1, v1, v0

    .line 1005
    if-eqz v1, :cond_1

    .line 1006
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1003
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1010
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1011
    return-void
.end method
