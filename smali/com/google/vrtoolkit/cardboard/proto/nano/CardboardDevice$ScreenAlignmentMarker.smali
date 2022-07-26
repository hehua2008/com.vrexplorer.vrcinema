.class public final Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;
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
    name = "ScreenAlignmentMarker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;


# instance fields
.field private bitField0_:I

.field private horizontal_:F

.field private vertical_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1147
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1148
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->clear()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    .line 1149
    return-void
.end method

.method public static emptyArray()[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;
    .locals 2

    .prologue
    .line 1094
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    if-nez v0, :cond_1

    .line 1095
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1097
    :try_start_0
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    if-nez v0, :cond_0

    .line 1098
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    sput-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    .line 1100
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1102
    :cond_1
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    return-object v0

    .line 1100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1234
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1228
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1152
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->bitField0_:I

    .line 1153
    iput v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->horizontal_:F

    .line 1154
    iput v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->vertical_:F

    .line 1155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1156
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->cachedSize:I

    .line 1157
    return-object p0
.end method

.method public final clearHorizontal()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;
    .locals 1

    .prologue
    .line 1121
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->horizontal_:F

    .line 1122
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->bitField0_:I

    .line 1123
    return-object p0
.end method

.method public final clearVertical()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;
    .locals 1

    .prologue
    .line 1140
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->vertical_:F

    .line 1141
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->bitField0_:I

    .line 1142
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
    .line 1088
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

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
    .line 1088
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;
    .locals 2

    .prologue
    .line 1163
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1167
    return-object v0

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
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
    .line 1088
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 1185
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1186
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1187
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->horizontal_:F

    .line 1188
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1190
    :cond_0
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1191
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->vertical_:F

    .line 1192
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1194
    :cond_1
    return v0
.end method

.method public final getHorizontal()F
    .locals 1

    .prologue
    .line 1110
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->horizontal_:F

    return v0
.end method

.method public final getVertical()F
    .locals 1

    .prologue
    .line 1129
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->vertical_:F

    return v0
.end method

.method public final hasHorizontal()Z
    .locals 1

    .prologue
    .line 1118
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasVertical()Z
    .locals 1

    .prologue
    .line 1137
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 1088
    invoke-virtual {p0, p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1202
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1203
    sparse-switch v0, :sswitch_data_0

    .line 1207
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1208
    :sswitch_0
    return-object p0

    .line 1213
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->horizontal_:F

    .line 1214
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->bitField0_:I

    goto :goto_0

    .line 1218
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->vertical_:F

    .line 1219
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->bitField0_:I

    goto :goto_0

    .line 1203
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public final setHorizontal(F)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;
    .locals 1

    .prologue
    .line 1113
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->horizontal_:F

    .line 1114
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->bitField0_:I

    .line 1115
    return-object p0
.end method

.method public final setVertical(F)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;
    .locals 1

    .prologue
    .line 1132
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->vertical_:F

    .line 1133
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->bitField0_:I

    .line 1134
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
    .line 1174
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1175
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->horizontal_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1177
    :cond_0
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1178
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$ScreenAlignmentMarker;->vertical_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1180
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1181
    return-void
.end method
