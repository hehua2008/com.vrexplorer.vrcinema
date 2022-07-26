.class public final Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private angleDegrees:Ljava/lang/Float;

.field private captureTimeMs:Ljava/lang/Long;

.field private captureWarnings:Ljava/lang/Boolean;

.field private compositionTimeMs:Ljava/lang/Long;

.field private outcome:Ljava/lang/Integer;

.field private processingTimeMs:Ljava/lang/Long;

.field private withSound:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1031
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2036
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->angleDegrees:Ljava/lang/Float;

    .line 2037
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->withSound:Ljava/lang/Boolean;

    .line 2038
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->captureWarnings:Ljava/lang/Boolean;

    .line 2039
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->compositionTimeMs:Ljava/lang/Long;

    .line 2040
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->captureTimeMs:Ljava/lang/Long;

    .line 2041
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->processingTimeMs:Ljava/lang/Long;

    .line 2042
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2043
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->cachedSize:I

    .line 1033
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;
    .locals 2

    .prologue
    .line 1050
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1054
    return-object v0

    .line 1051
    :catch_0
    move-exception v0

    .line 1052
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
    .line 982
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

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
    .line 982
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

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
    .line 982
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    .line 1087
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1088
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->outcome:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1089
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->outcome:Ljava/lang/Integer;

    .line 1090
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1092
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->angleDegrees:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 1093
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->angleDegrees:Ljava/lang/Float;

    .line 1094
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1096
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->withSound:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 1097
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->withSound:Ljava/lang/Boolean;

    .line 1098
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1100
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->captureWarnings:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 1101
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->captureWarnings:Ljava/lang/Boolean;

    .line 1102
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1104
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->compositionTimeMs:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 1105
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->compositionTimeMs:Ljava/lang/Long;

    .line 1106
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1108
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->captureTimeMs:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 1109
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->captureTimeMs:Ljava/lang/Long;

    .line 1110
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1112
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->processingTimeMs:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 1113
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->processingTimeMs:Ljava/lang/Long;

    .line 1114
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1116
    :cond_6
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
    .line 982
    .line 2124
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2125
    sparse-switch v0, :sswitch_data_0

    .line 2129
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2130
    :sswitch_0
    return-object p0

    .line 2135
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 2136
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2142
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->outcome:Ljava/lang/Integer;

    goto :goto_0

    .line 2148
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->angleDegrees:Ljava/lang/Float;

    goto :goto_0

    .line 2152
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->withSound:Ljava/lang/Boolean;

    goto :goto_0

    .line 2156
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->captureWarnings:Ljava/lang/Boolean;

    goto :goto_0

    .line 2160
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->compositionTimeMs:Ljava/lang/Long;

    goto :goto_0

    .line 2164
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->captureTimeMs:Ljava/lang/Long;

    goto :goto_0

    .line 2168
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->processingTimeMs:Ljava/lang/Long;

    goto :goto_0

    .line 2125
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch

    .line 2136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
    .line 1061
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->outcome:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1062
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->outcome:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->angleDegrees:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 1065
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->angleDegrees:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1067
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->withSound:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 1068
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->withSound:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1070
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->captureWarnings:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 1071
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->captureWarnings:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1073
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->compositionTimeMs:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 1074
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->compositionTimeMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1076
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->captureTimeMs:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 1077
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->captureTimeMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1079
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->processingTimeMs:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 1080
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops$Capture;->processingTimeMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1082
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1083
    return-void
.end method
