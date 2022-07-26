.class public final Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private model:Ljava/lang/String;

.field private vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 259
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1264
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;->vendor:Ljava/lang/String;

    .line 1265
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;->model:Ljava/lang/String;

    .line 1266
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1267
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;->cachedSize:I

    .line 261
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;
    .locals 2

    .prologue
    .line 274
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    return-object v0

    .line 275
    :catch_0
    move-exception v0

    .line 276
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
    .line 234
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

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
    .line 234
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

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
    .line 234
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 296
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 297
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;->vendor:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 298
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;->vendor:Ljava/lang/String;

    .line 299
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;->model:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 302
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;->model:Ljava/lang/String;

    .line 303
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 305
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
    .line 234
    .line 1313
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1314
    sparse-switch v0, :sswitch_data_0

    .line 1318
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1319
    :sswitch_0
    return-object p0

    .line 1324
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;->vendor:Ljava/lang/String;

    goto :goto_0

    .line 1328
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;->model:Ljava/lang/String;

    goto :goto_0

    .line 1314
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
    .line 285
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;->vendor:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;->vendor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;->model:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 289
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;->model:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 291
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 292
    return-void
.end method
