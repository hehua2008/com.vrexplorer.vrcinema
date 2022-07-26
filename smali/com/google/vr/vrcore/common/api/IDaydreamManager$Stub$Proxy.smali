.class Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDaydreamManager.java"

# interfaces
.implements Lcom/google/vr/vrcore/common/api/IDaydreamManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub;
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
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 227
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public deprecatedLaunchInVr(Landroid/app/PendingIntent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 367
    :try_start_0
    const-string v4, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 368
    if-eqz p1, :cond_0

    .line 369
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 375
    :goto_0
    iget-object v4, p0, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 376
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 377
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 380
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 381
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 383
    return v0

    .line 373
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 380
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 381
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_1
    move v0, v1

    .line 377
    goto :goto_1
.end method

.method public exitFromVr(Landroid/app/PendingIntent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 555
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 556
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 559
    :try_start_0
    const-string v4, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 560
    if-eqz p1, :cond_0

    .line 561
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 567
    :goto_0
    iget-object v4, p0, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 568
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 569
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 572
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 573
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 575
    return v0

    .line 565
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 572
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 573
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_1
    move v0, v1

    .line 569
    goto :goto_1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    return-object v0
.end method

.method public handleInsertionIntoHeadset([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 597
    :try_start_0
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 599
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 603
    return-void

    .line 602
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public handleRemovalFromHeadset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 617
    :try_start_0
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 622
    return-void

    .line 621
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public launchInVr(Landroid/app/PendingIntent;Landroid/content/ComponentName;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 456
    :try_start_0
    const-string v4, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 457
    if-eqz p1, :cond_0

    .line 458
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 464
    :goto_0
    if-eqz p2, :cond_1

    .line 465
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 471
    :goto_1
    iget-object v4, p0, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 472
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 473
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 476
    :goto_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 477
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 479
    return v0

    .line 462
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 476
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 477
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 469
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 473
    goto :goto_2
.end method

.method public launchVrHome()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 495
    :try_start_0
    const-string v3, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 496
    iget-object v3, p0, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 497
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 498
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 501
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 504
    return v0

    .line 501
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public launchVrTransition(Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 522
    :try_start_0
    const-string v1, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 523
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/vr/vrcore/common/api/ITransitionCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 524
    iget-object v1, p0, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 525
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 526
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 529
    :cond_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 530
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 532
    return v0

    .line 523
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 529
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 530
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public prepareVr(Landroid/content/ComponentName;Lcom/google/vr/vrcore/common/api/HeadTrackingState;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 323
    :try_start_0
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 324
    if-eqz p1, :cond_1

    .line 325
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 331
    :goto_0
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 332
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 333
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 334
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    invoke-virtual {p2, v2}, Lcom/google/vr/vrcore/common/api/HeadTrackingState;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 342
    return v0

    .line 329
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public registerDaydreamIntent(Landroid/app/PendingIntent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 401
    :try_start_0
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 402
    if-eqz p1, :cond_0

    .line 403
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 409
    :goto_0
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 413
    return-void

    .line 407
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public registerListener(Landroid/content/ComponentName;Lcom/google/vr/vrcore/common/api/IDaydreamListener;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 262
    :try_start_0
    const-string v2, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 263
    if-eqz p1, :cond_0

    .line 264
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    const/4 v2, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 270
    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/google/vr/vrcore/common/api/IDaydreamListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 271
    iget-object v2, p0, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 272
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 273
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    :goto_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 277
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 279
    return v0

    .line 268
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 277
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 270
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 273
    goto :goto_2
.end method

.method public unregisterDaydreamIntent()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 425
    :try_start_0
    const-string v0, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 430
    return-void

    .line 429
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public unregisterListener(Landroid/content/ComponentName;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 299
    :try_start_0
    const-string v4, "com.google.vr.vrcore.common.api.IDaydreamManager"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 300
    if-eqz p1, :cond_0

    .line 301
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 307
    :goto_0
    iget-object v4, p0, Lcom/google/vr/vrcore/common/api/IDaydreamManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 308
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 309
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 312
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 315
    return v0

    .line 305
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_1
    move v0, v1

    .line 309
    goto :goto_1
.end method
