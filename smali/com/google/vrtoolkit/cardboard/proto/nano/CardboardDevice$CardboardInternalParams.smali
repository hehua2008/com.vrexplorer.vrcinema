.class public final Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
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
    name = "CardboardInternalParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams$OrientationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;


# instance fields
.field private accelerometer_:Ljava/lang/String;

.field private bitField0_:I

.field public eyeOrientations:[I

.field private gyroscope_:Ljava/lang/String;

.field private screenCenterToLensDistance_:F

.field private xPpiOverride_:F

.field private yPpiOverride_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 678
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->clear()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    .line 679
    return-void
.end method

.method public static emptyArray()[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 2

    .prologue
    .line 558
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    if-nez v0, :cond_1

    .line 559
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 561
    :try_start_0
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    if-nez v0, :cond_0

    .line 562
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    sput-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    .line 564
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    :cond_1
    sget-object v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->_emptyArray:[Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    return-object v0

    .line 564
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 917
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 911
    new-instance v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    invoke-direct {v0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 682
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 683
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    .line 684
    iput v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->screenCenterToLensDistance_:F

    .line 685
    iput v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->xPpiOverride_:F

    .line 686
    iput v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->yPpiOverride_:F

    .line 687
    const-string v0, ""

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->accelerometer_:Ljava/lang/String;

    .line 688
    const-string v0, ""

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->gyroscope_:Ljava/lang/String;

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 690
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->cachedSize:I

    .line 691
    return-object p0
.end method

.method public final clearAccelerometer()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    .prologue
    .line 648
    const-string v0, ""

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->accelerometer_:Ljava/lang/String;

    .line 649
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 650
    return-object p0
.end method

.method public final clearGyroscope()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    .prologue
    .line 670
    const-string v0, ""

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->gyroscope_:Ljava/lang/String;

    .line 671
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 672
    return-object p0
.end method

.method public final clearScreenCenterToLensDistance()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->screenCenterToLensDistance_:F

    .line 589
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 590
    return-object p0
.end method

.method public final clearXPpiOverride()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->xPpiOverride_:F

    .line 608
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 609
    return-object p0
.end method

.method public final clearYPpiOverride()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->yPpiOverride_:F

    .line 627
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 628
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
    .line 540
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

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
    .line 540
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 2

    .prologue
    .line 697
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 702
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    .line 704
    :cond_0
    return-object v0

    .line 698
    :catch_0
    move-exception v0

    .line 699
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
    .line 540
    invoke-virtual {p0}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->clone()Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 744
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 745
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v0

    .line 747
    :goto_0
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 748
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    aget v3, v3, v0

    .line 750
    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 747
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 752
    :cond_0
    add-int v0, v2, v1

    .line 753
    add-int/lit8 v0, v0, 0x1

    .line 755
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 757
    :goto_1
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 758
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->screenCenterToLensDistance_:F

    .line 759
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 761
    :cond_1
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 762
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->xPpiOverride_:F

    .line 763
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 765
    :cond_2
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 766
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->yPpiOverride_:F

    .line 767
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 769
    :cond_3
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 770
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->accelerometer_:Ljava/lang/String;

    .line 771
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 773
    :cond_4
    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 774
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->gyroscope_:Ljava/lang/String;

    .line 775
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 777
    :cond_5
    return v0

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method public final getAccelerometer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->accelerometer_:Ljava/lang/String;

    return-object v0
.end method

.method public final getGyroscope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->gyroscope_:Ljava/lang/String;

    return-object v0
.end method

.method public final getScreenCenterToLensDistance()F
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->screenCenterToLensDistance_:F

    return v0
.end method

.method public final getXPpiOverride()F
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->xPpiOverride_:F

    return v0
.end method

.method public final getYPpiOverride()F
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->yPpiOverride_:F

    return v0
.end method

.method public final hasAccelerometer()Z
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasGyroscope()Z
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasScreenCenterToLensDistance()Z
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasXPpiOverride()Z
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasYPpiOverride()Z
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 540
    invoke-virtual {p0, p1}, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 785
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 786
    sparse-switch v0, :sswitch_data_0

    .line 790
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 791
    :sswitch_0
    return-object p0

    .line 796
    :sswitch_1
    const/16 v0, 0x8

    .line 797
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v4

    .line 798
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 800
    :goto_1
    if-ge v3, v4, :cond_2

    .line 801
    if-eqz v3, :cond_1

    .line 802
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 804
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 805
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 800
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 814
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 818
    :cond_2
    if-eqz v1, :cond_0

    .line 819
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 820
    :goto_3
    if-nez v0, :cond_4

    if-ne v1, v4, :cond_4

    .line 821
    iput-object v5, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    goto :goto_0

    .line 819
    :cond_3
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    array-length v0, v0

    goto :goto_3

    .line 823
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 824
    if-eqz v0, :cond_5

    .line 825
    iget-object v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 827
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 828
    iput-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    goto :goto_0

    .line 834
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 835
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 838
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    move v0, v2

    .line 839
    :goto_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_6

    .line 840
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 849
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 853
    :cond_6
    if-eqz v0, :cond_a

    .line 854
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 855
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 856
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 857
    if-eqz v1, :cond_7

    .line 858
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 860
    :cond_7
    :goto_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v0

    if-lez v0, :cond_9

    .line 861
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 862
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 871
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 855
    :cond_8
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    array-length v1, v1

    goto :goto_5

    .line 875
    :cond_9
    iput-object v4, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    .line 877
    :cond_a
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 881
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->screenCenterToLensDistance_:F

    .line 882
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    goto/16 :goto_0

    .line 886
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->xPpiOverride_:F

    .line 887
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    goto/16 :goto_0

    .line 891
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->yPpiOverride_:F

    .line 892
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    goto/16 :goto_0

    .line 896
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->accelerometer_:Ljava/lang/String;

    .line 897
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    goto/16 :goto_0

    .line 901
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->gyroscope_:Ljava/lang/String;

    .line 902
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    goto/16 :goto_0

    .line 786
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x15 -> :sswitch_3
        0x1d -> :sswitch_4
        0x25 -> :sswitch_5
        0x2a -> :sswitch_6
        0x32 -> :sswitch_7
    .end sparse-switch

    .line 805
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
    .end packed-switch

    .line 840
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 862
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final setAccelerometer(Ljava/lang/String;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    .prologue
    .line 637
    if-nez p1, :cond_0

    .line 638
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 640
    :cond_0
    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->accelerometer_:Ljava/lang/String;

    .line 641
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 642
    return-object p0
.end method

.method public final setGyroscope(Ljava/lang/String;)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    .prologue
    .line 659
    if-nez p1, :cond_0

    .line 660
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 662
    :cond_0
    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->gyroscope_:Ljava/lang/String;

    .line 663
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 664
    return-object p0
.end method

.method public final setScreenCenterToLensDistance(F)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    .prologue
    .line 580
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->screenCenterToLensDistance_:F

    .line 581
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 582
    return-object p0
.end method

.method public final setXPpiOverride(F)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    .prologue
    .line 599
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->xPpiOverride_:F

    .line 600
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 601
    return-object p0
.end method

.method public final setYPpiOverride(F)Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;
    .locals 1

    .prologue
    .line 618
    iput p1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->yPpiOverride_:F

    .line 619
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    .line 620
    return-object p0
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

    .line 711
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    move v2, v1

    .line 713
    :goto_0
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 714
    iget-object v3, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    aget v3, v3, v0

    .line 716
    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 718
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 719
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 720
    :goto_1
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 721
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->eyeOrientations:[I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 720
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 724
    :cond_1
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 725
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->screenCenterToLensDistance_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 727
    :cond_2
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 728
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->xPpiOverride_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 730
    :cond_3
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 731
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->yPpiOverride_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 733
    :cond_4
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 734
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->accelerometer_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 736
    :cond_5
    iget v0, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    .line 737
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/proto/nano/CardboardDevice$CardboardInternalParams;->gyroscope_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 739
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 740
    return-void
.end method
