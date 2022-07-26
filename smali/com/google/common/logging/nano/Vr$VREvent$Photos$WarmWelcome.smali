.class public final Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private exitProgress:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1969
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2974
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->exitProgress:Ljava/lang/Float;

    .line 2975
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2976
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->cachedSize:I

    .line 1971
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;
    .locals 2

    .prologue
    .line 1983
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1987
    return-object v0

    .line 1984
    :catch_0
    move-exception v0

    .line 1985
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
    .line 1947
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

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
    .line 1947
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

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
    .line 1947
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 2002
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2003
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->exitProgress:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 2004
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->exitProgress:Ljava/lang/Float;

    .line 2005
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2007
    :cond_0
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
    .line 1947
    .line 3015
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3016
    sparse-switch v0, :sswitch_data_0

    .line 3020
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3021
    :sswitch_0
    return-object p0

    .line 3026
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->exitProgress:Ljava/lang/Float;

    goto :goto_0

    .line 3016
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
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
    .line 1994
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->exitProgress:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 1995
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Photos$WarmWelcome;->exitProgress:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1997
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1998
    return-void
.end method
