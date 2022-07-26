.class public final Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

.field private appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

.field private controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

.field private environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

.field private menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

.field private preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

.field private splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

.field private startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

.field private startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

.field private tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

.field private tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

.field private view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8326
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9331
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    .line 9332
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 9333
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    .line 9334
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    .line 9335
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    .line 9336
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    .line 9337
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    .line 9338
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    .line 9339
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    .line 9340
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    .line 9341
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    .line 9342
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    .line 9343
    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9344
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->cachedSize:I

    .line 8328
    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 8351
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8355
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-eqz v1, :cond_0

    .line 8356
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    .line 8358
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v1, :cond_1

    .line 8359
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 8361
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 8362
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    move v1, v2

    .line 8363
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 8364
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    .line 8365
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    move-result-object v4

    aput-object v4, v3, v1

    .line 8363
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8352
    :catch_0
    move-exception v0

    .line 8353
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 8369
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    if-eqz v1, :cond_4

    .line 8370
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    .line 8372
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    if-eqz v1, :cond_5

    .line 8373
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    .line 8375
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    if-eqz v1, :cond_6

    .line 8376
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    .line 8378
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-eqz v1, :cond_7

    .line 8379
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    .line 8381
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    if-eqz v1, :cond_8

    .line 8382
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    .line 8384
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    if-eqz v1, :cond_9

    .line 8385
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    .line 8387
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v1, v1

    if-lez v1, :cond_b

    .line 8388
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    .line 8389
    :goto_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v1, v1

    if-ge v2, v1, :cond_b

    .line 8390
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    aget-object v1, v1, v2

    if-eqz v1, :cond_a

    .line 8391
    iget-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    move-result-object v3

    aput-object v3, v1, v2

    .line 8389
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8395
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    if-eqz v1, :cond_c

    .line 8396
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    .line 8398
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    if-eqz v1, :cond_d

    .line 8399
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    .line 8401
    :cond_d
    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 6765
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

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
    .line 6765
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

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
    .line 6765
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 8459
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8460
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-eqz v2, :cond_0

    .line 8461
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    .line 8462
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8464
    :cond_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v2, :cond_1

    .line 8465
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 8466
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8468
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    .line 8469
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 8470
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    aget-object v3, v3, v0

    .line 8471
    if-eqz v3, :cond_2

    .line 8472
    const/4 v4, 0x3

    .line 8473
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8469
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 8477
    :cond_4
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    if-eqz v2, :cond_5

    .line 8478
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    .line 8479
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8481
    :cond_5
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    if-eqz v2, :cond_6

    .line 8482
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    .line 8483
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8485
    :cond_6
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    if-eqz v2, :cond_7

    .line 8486
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    .line 8487
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8489
    :cond_7
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-eqz v2, :cond_8

    .line 8490
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    .line 8491
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8493
    :cond_8
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    if-eqz v2, :cond_9

    .line 8494
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    .line 8495
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8497
    :cond_9
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    if-eqz v2, :cond_a

    .line 8498
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    .line 8499
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8501
    :cond_a
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v2, v2

    if-lez v2, :cond_c

    .line 8502
    :goto_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v2, v2

    if-ge v1, v2, :cond_c

    .line 8503
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    aget-object v2, v2, v1

    .line 8504
    if-eqz v2, :cond_b

    .line 8505
    const/16 v3, 0xa

    .line 8506
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8502
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8510
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    if-eqz v1, :cond_d

    .line 8511
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    .line 8512
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8514
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    if-eqz v1, :cond_e

    .line 8515
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    .line 8516
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8518
    :cond_e
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

    .line 6765
    .line 9526
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9527
    sparse-switch v0, :sswitch_data_0

    .line 9531
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9532
    :sswitch_0
    return-object p0

    .line 9537
    :sswitch_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-nez v0, :cond_1

    .line 9538
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    .line 9540
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9544
    :sswitch_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-nez v0, :cond_2

    .line 9545
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Transform;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 9547
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9551
    :sswitch_3
    const/16 v0, 0x1a

    .line 9552
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 9553
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    if-nez v0, :cond_4

    move v0, v1

    .line 9554
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    .line 9556
    if-eqz v0, :cond_3

    .line 9557
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9559
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 9560
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;-><init>()V

    aput-object v3, v2, v0

    .line 9561
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 9562
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 9559
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9553
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v0, v0

    goto :goto_1

    .line 9565
    :cond_5
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;-><init>()V

    aput-object v3, v2, v0

    .line 9566
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 9567
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    goto :goto_0

    .line 9571
    :sswitch_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    if-nez v0, :cond_6

    .line 9572
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    .line 9574
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9578
    :sswitch_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    if-nez v0, :cond_7

    .line 9579
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    .line 9581
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 9585
    :sswitch_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    if-nez v0, :cond_8

    .line 9586
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    .line 9588
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 9592
    :sswitch_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-nez v0, :cond_9

    .line 9593
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    .line 9595
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 9599
    :sswitch_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    if-nez v0, :cond_a

    .line 9600
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    .line 9602
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 9606
    :sswitch_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    if-nez v0, :cond_b

    .line 9607
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    .line 9609
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 9613
    :sswitch_a
    const/16 v0, 0x52

    .line 9614
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 9615
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-nez v0, :cond_d

    move v0, v1

    .line 9616
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    .line 9618
    if-eqz v0, :cond_c

    .line 9619
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9621
    :cond_c
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_e

    .line 9622
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;-><init>()V

    aput-object v3, v2, v0

    .line 9623
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 9624
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 9621
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 9615
    :cond_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v0, v0

    goto :goto_3

    .line 9627
    :cond_e
    new-instance v3, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    invoke-direct {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;-><init>()V

    aput-object v3, v2, v0

    .line 9628
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 9629
    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    goto/16 :goto_0

    .line 9633
    :sswitch_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    if-nez v0, :cond_f

    .line 9634
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    .line 9636
    :cond_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 9640
    :sswitch_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    if-nez v0, :cond_10

    .line 9641
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    .line 9643
    :cond_10
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 9527
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
    .end sparse-switch
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

    .line 8408
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-eqz v0, :cond_0

    .line 8409
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8411
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v0, :cond_1

    .line 8412
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8414
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 8415
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 8416
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    aget-object v2, v2, v0

    .line 8417
    if-eqz v2, :cond_2

    .line 8418
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8415
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8422
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    if-eqz v0, :cond_4

    .line 8423
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8425
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    if-eqz v0, :cond_5

    .line 8426
    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8428
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    if-eqz v0, :cond_6

    .line 8429
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8431
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-eqz v0, :cond_7

    .line 8432
    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8434
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    if-eqz v0, :cond_8

    .line 8435
    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8437
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    if-eqz v0, :cond_9

    .line 8438
    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8440
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v0, v0

    if-lez v0, :cond_b

    .line 8441
    :goto_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v0, v0

    if-ge v1, v0, :cond_b

    .line 8442
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    aget-object v0, v0, v1

    .line 8443
    if-eqz v0, :cond_a

    .line 8444
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8441
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8448
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    if-eqz v0, :cond_c

    .line 8449
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8451
    :cond_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    if-eqz v0, :cond_d

    .line 8452
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8454
    :cond_d
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8455
    return-void
.end method
