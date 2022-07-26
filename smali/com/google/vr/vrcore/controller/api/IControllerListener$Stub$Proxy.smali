.class Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IControllerListener.java"

# interfaces
.implements Lcom/google/vr/vrcore/controller/api/IControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 231
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public deprecatedOnControllerAccelEvent(Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 405
    :try_start_0
    const-string v0, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 406
    if-eqz p1, :cond_0

    .line 407
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 413
    :goto_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 417
    return-void

    .line 411
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 416
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public deprecatedOnControllerButtonEvent(Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 381
    :try_start_0
    const-string v0, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 382
    if-eqz p1, :cond_0

    .line 383
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 389
    :goto_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 393
    return-void

    .line 387
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public deprecatedOnControllerButtonEventV1(Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 348
    :try_start_0
    const-string v4, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 349
    if-eqz p1, :cond_0

    .line 350
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 356
    :goto_0
    iget-object v4, p0, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 357
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 358
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 361
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 362
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 364
    return v0

    .line 354
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 362
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_1
    move v0, v1

    .line 358
    goto :goto_1
.end method

.method public deprecatedOnControllerGyroEvent(Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 429
    :try_start_0
    const-string v0, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 430
    if-eqz p1, :cond_0

    .line 431
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 437
    :goto_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 441
    return-void

    .line 435
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 440
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public deprecatedOnControllerOrientationEvent(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 311
    :try_start_0
    const-string v0, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 312
    if-eqz p1, :cond_0

    .line 313
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 323
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public deprecatedOnControllerTouchEvent(Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 287
    :try_start_0
    const-string v0, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 288
    if-eqz p1, :cond_0

    .line 289
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 299
    return-void

    .line 293
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getApiVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 246
    :try_start_0
    const-string v0, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 248
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 249
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 252
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 255
    return v0

    .line 252
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    const-string v0, "com.google.vr.vrcore.controller.api.IControllerListener"

    return-object v0
.end method

.method public getOptions()Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 454
    :try_start_0
    const-string v0, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 456
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 457
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    sget-object v0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 468
    return-object v0

    .line 461
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 484
    :try_start_0
    const-string v0, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 485
    if-eqz p1, :cond_0

    .line 486
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->writeToParcel(Landroid/os/Parcel;I)V

    .line 492
    :goto_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 496
    return-void

    .line 490
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 495
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onControllerEventPacket2(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 531
    :try_start_0
    const-string v0, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 532
    if-eqz p1, :cond_0

    .line 533
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->writeToParcel(Landroid/os/Parcel;I)V

    .line 539
    :goto_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    return-void

    .line 537
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 542
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onControllerRecentered(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 507
    :try_start_0
    const-string v0, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 508
    if-eqz p1, :cond_0

    .line 509
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 515
    :goto_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 519
    return-void

    .line 513
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onControllerStateChanged(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 268
    :try_start_0
    const-string v0, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
