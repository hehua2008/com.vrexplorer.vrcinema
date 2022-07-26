.class public final Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;


# instance fields
.field private clientTimestamp:Ljava/lang/Long;

.field private enabledLanguages:[Ljava/lang/String;

.field private eventType:Ljava/lang/Integer;

.field private inputType:Ljava/lang/Integer;

.field private keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

.field private language:Ljava/lang/String;

.field private layout:Ljava/lang/String;

.field private suggestionCount:Ljava/lang/Integer;

.field private systemLanguages:[Ljava/lang/String;

.field private textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9014
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10019
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clientTimestamp:Ljava/lang/Long;

    .line 10020
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    .line 10021
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 10022
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    .line 10023
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    .line 10024
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->language:Ljava/lang/String;

    .line 10025
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->layout:Ljava/lang/String;

    .line 10026
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->suggestionCount:Ljava/lang/Integer;

    .line 10027
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 10028
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->cachedSize:I

    .line 9016
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    .locals 2

    .prologue
    .line 8971
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-nez v0, :cond_1

    .line 8972
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 8974
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    if-nez v0, :cond_0

    .line 8975
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    sput-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    .line 8977
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8979
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    return-object v0

    .line 8977
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    .locals 2

    .prologue
    .line 9035
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9039
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    if-eqz v1, :cond_0

    .line 9040
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    .line 9042
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_1

    .line 9043
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 9045
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 9046
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    .line 9048
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 9049
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    .line 9051
    :cond_3
    return-object v0

    .line 9036
    :catch_0
    move-exception v0

    .line 9037
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
    .line 8965
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

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
    .line 8965
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

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
    .line 8965
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 9103
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9104
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clientTimestamp:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 9105
    const/4 v1, 0x1

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clientTimestamp:Ljava/lang/Long;

    .line 9106
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9108
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->eventType:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 9109
    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->eventType:Ljava/lang/Integer;

    .line 9110
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9112
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    if-eqz v1, :cond_2

    .line 9113
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    .line 9114
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9116
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_3

    .line 9117
    const/4 v1, 0x4

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 9118
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9120
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v2

    move v3, v2

    move v4, v2

    .line 9123
    :goto_0
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_5

    .line 9124
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 9125
    if-eqz v5, :cond_4

    .line 9126
    add-int/lit8 v4, v4, 0x1

    .line 9128
    invoke-static {v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 9123
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9131
    :cond_5
    add-int/2addr v0, v3

    .line 9132
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 9134
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v2

    move v3, v2

    .line 9137
    :goto_1
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_8

    .line 9138
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 9139
    if-eqz v4, :cond_7

    .line 9140
    add-int/lit8 v3, v3, 0x1

    .line 9142
    invoke-static {v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    .line 9137
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9145
    :cond_8
    add-int/2addr v0, v1

    .line 9146
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 9148
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->language:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 9149
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->language:Ljava/lang/String;

    .line 9150
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9152
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->inputType:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 9153
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->inputType:Ljava/lang/Integer;

    .line 9154
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9156
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->layout:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 9157
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->layout:Ljava/lang/String;

    .line 9158
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9160
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->suggestionCount:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 9161
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->suggestionCount:Ljava/lang/Integer;

    .line 9162
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9164
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

    .line 8965
    .line 10172
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 10173
    sparse-switch v0, :sswitch_data_0

    .line 10177
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10178
    :sswitch_0
    return-object p0

    .line 10183
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clientTimestamp:Ljava/lang/Long;

    goto :goto_0

    .line 10187
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 10188
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 10204
    :sswitch_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->eventType:Ljava/lang/Integer;

    goto :goto_0

    .line 10210
    :sswitch_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    if-nez v0, :cond_1

    .line 10211
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    .line 10213
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10217
    :sswitch_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-nez v0, :cond_2

    .line 10218
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 10220
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 10224
    :sswitch_6
    const/16 v0, 0x2a

    .line 10225
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 10226
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    .line 10227
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 10228
    if-eqz v0, :cond_3

    .line 10229
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10231
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 10232
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 10233
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 10231
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 10226
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 10236
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 10237
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    goto :goto_0

    .line 10241
    :sswitch_7
    const/16 v0, 0x32

    .line 10242
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 10243
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v1

    .line 10244
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 10245
    if-eqz v0, :cond_6

    .line 10246
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10248
    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    .line 10249
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 10250
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 10248
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 10243
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_3

    .line 10253
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 10254
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    goto/16 :goto_0

    .line 10258
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->language:Ljava/lang/String;

    goto/16 :goto_0

    .line 10262
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 10263
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 10266
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->inputType:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 10272
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->layout:Ljava/lang/String;

    goto/16 :goto_0

    .line 10276
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->suggestionCount:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 10173
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_4
        0x22 -> :sswitch_5
        0x2a -> :sswitch_6
        0x32 -> :sswitch_7
        0x3a -> :sswitch_8
        0x40 -> :sswitch_9
        0x4a -> :sswitch_a
        0x50 -> :sswitch_b
    .end sparse-switch

    .line 10188
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x5 -> :sswitch_3
        0x6 -> :sswitch_3
        0x7 -> :sswitch_3
        0x8 -> :sswitch_3
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_3
        0x7d0 -> :sswitch_3
        0xbb8 -> :sswitch_3
        0xbb9 -> :sswitch_3
        0xbba -> :sswitch_3
    .end sparse-switch

    .line 10263
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
    const/4 v1, 0x0

    .line 9058
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clientTimestamp:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 9059
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->clientTimestamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 9061
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->eventType:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 9062
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->eventType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9064
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    if-eqz v0, :cond_2

    .line 9065
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->textEntry:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardTextEntry;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 9067
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v0, :cond_3

    .line 9068
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->keyboardService:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 9070
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 9071
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 9072
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->systemLanguages:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 9073
    if-eqz v2, :cond_4

    .line 9074
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9071
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9078
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 9079
    :goto_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 9080
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->enabledLanguages:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 9081
    if-eqz v0, :cond_6

    .line 9082
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9079
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9086
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->language:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 9087
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->language:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9089
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->inputType:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 9090
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->inputType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9092
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->layout:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 9093
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->layout:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9095
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->suggestionCount:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 9096
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard$KeyboardEvent;->suggestionCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9098
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9099
    return-void
.end method
