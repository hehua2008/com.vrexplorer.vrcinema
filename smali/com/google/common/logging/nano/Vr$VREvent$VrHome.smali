.class public final Lcom/google/common/logging/nano/Vr$VREvent$VrHome;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$VrHome;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private dialogAction:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$DialogAction;

.field private gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

.field private getViewerClick:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

.field private setup:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2878
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3883
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->setup:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    .line 3884
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    .line 3885
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->getViewerClick:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    .line 3886
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->dialogAction:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$DialogAction;

    .line 3887
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 3888
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->cachedSize:I

    .line 2880
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome;
    .locals 2

    .prologue
    .line 2895
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2899
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->setup:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    if-eqz v1, :cond_0

    .line 2900
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->setup:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->setup:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    .line 2902
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-eqz v1, :cond_1

    .line 2903
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    .line 2905
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->getViewerClick:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    if-eqz v1, :cond_2

    .line 2906
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->getViewerClick:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->getViewerClick:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    .line 2908
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->dialogAction:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$DialogAction;

    if-eqz v1, :cond_3

    .line 2909
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->dialogAction:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$DialogAction;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$DialogAction;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome$DialogAction;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->dialogAction:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$DialogAction;

    .line 2911
    :cond_3
    return-object v0

    .line 2896
    :catch_0
    move-exception v0

    .line 2897
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
    .line 2182
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

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
    .line 2182
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

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
    .line 2182
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .prologue
    .line 2935
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2936
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->setup:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    if-eqz v1, :cond_0

    .line 2937
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->setup:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    .line 2938
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2940
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-eqz v1, :cond_1

    .line 2941
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    .line 2942
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2944
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->getViewerClick:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    if-eqz v1, :cond_2

    .line 2945
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->getViewerClick:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    .line 2946
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2948
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->dialogAction:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$DialogAction;

    if-eqz v1, :cond_3

    .line 2949
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->dialogAction:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$DialogAction;

    .line 2950
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2952
    :cond_3
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
    .line 2182
    .line 3960
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3961
    sparse-switch v0, :sswitch_data_0

    .line 3965
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3966
    :sswitch_0
    return-object p0

    .line 3971
    :sswitch_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->setup:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    if-nez v0, :cond_1

    .line 3972
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->setup:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    .line 3974
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->setup:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3978
    :sswitch_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-nez v0, :cond_2

    .line 3979
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    .line 3981
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3985
    :sswitch_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->getViewerClick:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    if-nez v0, :cond_3

    .line 3986
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->getViewerClick:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    .line 3988
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->getViewerClick:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3992
    :sswitch_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->dialogAction:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$DialogAction;

    if-nez v0, :cond_4

    .line 3993
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$DialogAction;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome$DialogAction;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->dialogAction:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$DialogAction;

    .line 3995
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->dialogAction:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$DialogAction;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3961
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 2918
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->setup:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    if-eqz v0, :cond_0

    .line 2919
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->setup:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$Setup;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2921
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-eqz v0, :cond_1

    .line 2922
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2924
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->getViewerClick:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    if-eqz v0, :cond_2

    .line 2925
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->getViewerClick:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$GetViewerClick;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2927
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->dialogAction:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$DialogAction;

    if-eqz v0, :cond_3

    .line 2928
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->dialogAction:Lcom/google/common/logging/nano/Vr$VREvent$VrHome$DialogAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2930
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2931
    return-void
.end method
