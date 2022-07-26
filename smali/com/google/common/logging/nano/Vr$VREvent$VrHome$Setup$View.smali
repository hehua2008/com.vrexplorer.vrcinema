.class public final Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private page:Ljava/lang/Integer;

.field private step:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2226
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3231
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;->page:Ljava/lang/Integer;

    .line 3232
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3233
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;->cachedSize:I

    .line 2228
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;
    .locals 2

    .prologue
    .line 2240
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2244
    return-object v0

    .line 2241
    :catch_0
    move-exception v0

    .line 2242
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
    .line 2201
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

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
    .line 2201
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

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
    .line 2201
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 2262
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2263
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;->step:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2264
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;->step:Ljava/lang/Integer;

    .line 2265
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2267
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;->page:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 2268
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;->page:Ljava/lang/Integer;

    .line 2269
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2271
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
    .line 2201
    .line 3279
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3280
    sparse-switch v0, :sswitch_data_0

    .line 3284
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3285
    :sswitch_0
    return-object p0

    .line 3290
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 3291
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3301
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;->step:Ljava/lang/Integer;

    goto :goto_0

    .line 3307
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;->page:Ljava/lang/Integer;

    goto :goto_0

    .line 3280
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 3291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2251
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;->step:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2252
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;->step:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2254
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;->page:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 2255
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup$View;->page:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2257
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2258
    return-void
.end method
