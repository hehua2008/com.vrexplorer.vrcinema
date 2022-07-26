.class Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GvrSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/GvrSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;
    }
.end annotation


# instance fields
.field private mEglHelper:Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishedCreatingEglSurface:Z

.field private final mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

.field private mGvrSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/vr/ndk/base/GvrSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mRequestedSwapMode:I

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWantRenderNotification:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/vr/ndk/base/GvrSurfaceView;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1292
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1940
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1941
    iput-boolean v3, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mSizeChanged:Z

    .line 1974
    new-instance v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;-><init>(Lcom/google/vr/ndk/base/GvrSurfaceView$1;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    .line 1293
    iput v2, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mWidth:I

    .line 1294
    iput v2, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHeight:I

    .line 1295
    iput-boolean v3, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRequestRender:Z

    .line 1296
    iput v3, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRenderMode:I

    .line 1297
    iput v2, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRequestedSwapMode:I

    .line 1298
    iput-boolean v2, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1299
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGvrSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 1302
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/ndk/base/GvrSurfaceView;

    .line 1303
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$300(Lcom/google/vr/ndk/base/GvrSurfaceView;)Lcom/google/vr/cardboard/EglReadyListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1304
    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$300(Lcom/google/vr/ndk/base/GvrSurfaceView;)Lcom/google/vr/cardboard/EglReadyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0, v1}, Lcom/google/vr/cardboard/EglReadyListener;->setMonitor(Ljava/lang/Object;)V

    .line 1306
    :cond_0
    return-void
.end method

.method static synthetic access$1102(Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;Z)Z
    .locals 0

    .prologue
    .line 1290
    iput-boolean p1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1348
    new-instance v2, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGvrSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mEglHelper:Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;

    .line 1349
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1350
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1351
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1354
    const/4 v4, 0x0

    .line 1355
    const/4 v15, 0x0

    .line 1356
    const/4 v3, 0x0

    .line 1357
    const/4 v14, 0x0

    .line 1358
    const/4 v13, 0x0

    .line 1359
    const/4 v12, 0x0

    .line 1360
    const/4 v11, 0x0

    .line 1361
    const/4 v10, 0x0

    .line 1362
    const/4 v9, 0x0

    .line 1363
    const/4 v8, 0x0

    .line 1364
    const/4 v2, 0x0

    .line 1365
    const/4 v7, 0x0

    .line 1366
    const/4 v6, 0x0

    .line 1367
    const/4 v5, 0x0

    move-object/from16 v16, v4

    move v4, v6

    move v6, v2

    move/from16 v20, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v3

    move-object v3, v5

    move/from16 v5, v20

    .line 1370
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1372
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mShouldExit:Z

    if-eqz v2, :cond_0

    .line 1373
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1683
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    monitor-enter v3

    .line 1684
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1685
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1686
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1376
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move v3, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v5

    move-object v5, v2

    move v2, v6

    move v6, v4

    .line 1550
    :goto_2
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1552
    if-eqz v5, :cond_11

    .line 1553
    :try_start_4
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1554
    const/4 v5, 0x0

    move v4, v6

    move v6, v2

    move/from16 v20, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v3

    move-object v3, v5

    move/from16 v5, v20

    .line 1555
    goto :goto_0

    .line 1382
    :cond_1
    const/4 v2, 0x0

    .line 1383
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mPaused:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 1384
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRequestPaused:Z

    .line 1385
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mPaused:Z

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 1393
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 1397
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1398
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1399
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1400
    const/4 v8, 0x1

    .line 1404
    :cond_3
    if-eqz v12, :cond_4

    .line 1405
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1406
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1407
    const/4 v12, 0x0

    .line 1411
    :cond_4
    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 1415
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1419
    :cond_5
    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v2, :cond_6

    .line 1420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGvrSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/ndk/base/GvrSurfaceView;

    .line 1421
    if-nez v2, :cond_d

    .line 1422
    const/4 v2, 0x0

    .line 1423
    :goto_3
    if-nez v2, :cond_6

    .line 1424
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1432
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHasSurface:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v2, :cond_8

    .line 1436
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v2, :cond_7

    .line 1437
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1439
    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1440
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1445
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v2, :cond_9

    .line 1449
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1453
    :cond_9
    if-eqz v9, :cond_a

    .line 1457
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1458
    const/4 v9, 0x0

    .line 1459
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRenderComplete:Z

    .line 1460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1464
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->readyToDraw()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1467
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHaveEglContext:Z

    if-nez v2, :cond_b

    .line 1468
    if-eqz v8, :cond_e

    .line 1469
    const/4 v8, 0x0

    .line 1484
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v2, :cond_c

    .line 1485
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1486
    const/4 v14, 0x1

    .line 1487
    const/4 v13, 0x1

    .line 1488
    const/4 v11, 0x1

    .line 1491
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v2, :cond_10

    .line 1492
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mSizeChanged:Z

    if-eqz v2, :cond_20

    .line 1493
    const/4 v11, 0x1

    .line 1494
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mWidth:I

    .line 1495
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHeight:I

    .line 1496
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1502
    const/4 v14, 0x1

    .line 1504
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mSizeChanged:Z

    .line 1506
    :goto_5
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRequestRender:Z

    .line 1507
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 1508
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mWantRenderNotification:Z

    if-eqz v5, :cond_1f

    .line 1509
    const/4 v7, 0x1

    .line 1511
    :goto_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRequestedSwapMode:I

    if-eq v5, v6, :cond_f

    const/4 v6, 0x1

    .line 1512
    :goto_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRequestedSwapMode:I

    move v10, v9

    move v9, v8

    move v8, v6

    move v6, v2

    move v2, v5

    move-object v5, v3

    move v3, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v7

    move v7, v4

    .line 1513
    goto/16 :goto_2

    .line 1422
    :cond_d
    invoke-static {v2}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$900(Lcom/google/vr/ndk/base/GvrSurfaceView;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v2

    goto/16 :goto_3

    .line 1472
    :cond_e
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mEglHelper:Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;

    invoke-virtual {v2}, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->start()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1477
    const/4 v2, 0x1

    :try_start_7
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1478
    const/4 v15, 0x1

    .line 1480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_4

    .line 1550
    :catchall_1
    move-exception v2

    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1683
    :catchall_2
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    monitor-enter v3

    .line 1684
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1685
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1686
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v2

    .line 1473
    :catch_0
    move-exception v2

    .line 1474
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;->releaseEglContextLocked(Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;)V

    .line 1475
    throw v2

    .line 1511
    :cond_f
    const/4 v6, 0x0

    goto :goto_7

    .line 1548
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 1558
    :cond_11
    if-eqz v3, :cond_1e

    .line 1562
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mEglHelper:Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;

    invoke-virtual {v4}, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->createSurface()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1563
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1564
    const/4 v2, 0x1

    :try_start_c
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1566
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1575
    const/4 v3, 0x0

    .line 1577
    const/4 v2, 0x0

    move v4, v3

    move v3, v2

    .line 1580
    :goto_8
    if-eqz v14, :cond_12

    .line 1581
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mEglHelper:Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;

    invoke-virtual {v2}, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    .line 1583
    const/4 v14, 0x0

    move-object/from16 v16, v2

    .line 1586
    :cond_12
    if-eqz v15, :cond_14

    .line 1590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGvrSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/ndk/base/GvrSurfaceView;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1591
    if-eqz v2, :cond_13

    .line 1593
    :try_start_e
    const-string v15, "onSurfaceCreated"

    invoke-static {v15}, Lcom/google/vr/ndk/base/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1594
    invoke-static {v2}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$1000(Lcom/google/vr/ndk/base/GvrSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mEglHelper:Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;

    iget-object v15, v15, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v0, v16

    invoke-interface {v2, v0, v15}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1596
    :try_start_f
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    .line 1599
    :cond_13
    const/4 v15, 0x0

    .line 1602
    :cond_14
    if-eqz v12, :cond_16

    .line 1606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGvrSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/ndk/base/GvrSurfaceView;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1607
    if-eqz v2, :cond_15

    .line 1609
    :try_start_10
    const-string v12, "onSurfaceChanged"

    invoke-static {v12}, Lcom/google/vr/ndk/base/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1610
    invoke-static {v2}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$1000(Lcom/google/vr/ndk/base/GvrSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v2, v0, v7, v6}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 1612
    :try_start_11
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    .line 1615
    :cond_15
    const/4 v12, 0x0

    .line 1618
    :cond_16
    if-eqz v8, :cond_17

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mEglHelper:Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;

    move-object/from16 v17, v0

    const/16 v18, 0x3086

    const/4 v2, 0x1

    if-ne v3, v2, :cond_1c

    .line 1621
    const/16 v2, 0x3085

    .line 1619
    :goto_9
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->setEglSurfaceAttrib(II)V

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mEglHelper:Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;

    move-object/from16 v17, v0

    const/16 v18, 0x314c

    const/4 v2, 0x1

    if-ne v3, v2, :cond_1d

    .line 1624
    const/4 v2, 0x1

    .line 1622
    :goto_a
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->setEglSurfaceAttrib(II)V

    .line 1631
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGvrSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/ndk/base/GvrSurfaceView;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 1632
    if-eqz v2, :cond_18

    .line 1634
    :try_start_12
    const-string v17, "onDrawFrame"

    invoke-static/range {v17 .. v17}, Lcom/google/vr/ndk/base/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1635
    invoke-static {v2}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$1000(Lcom/google/vr/ndk/base/GvrSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 1637
    :try_start_13
    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    .line 1642
    :cond_18
    if-nez v8, :cond_19

    if-nez v3, :cond_1a

    .line 1643
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mEglHelper:Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;

    invoke-virtual {v2}, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->swap()I

    move-result v2

    .line 1644
    sparse-switch v2, :sswitch_data_0

    .line 1658
    const-string v17, "GLThread"

    const-string v18, "eglSwapBuffers"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1663
    if-nez v3, :cond_1a

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 1665
    const/4 v2, 0x1

    :try_start_14
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1667
    monitor-exit v17
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 1673
    :cond_1a
    :goto_b
    :sswitch_0
    if-eqz v11, :cond_21

    .line 1674
    const/4 v10, 0x1

    .line 1675
    const/4 v11, 0x0

    move-object/from16 v20, v5

    move v5, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v4

    move v4, v6

    move v6, v3

    move-object/from16 v3, v20

    goto/16 :goto_0

    .line 1566
    :catchall_3
    move-exception v2

    :try_start_15
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :try_start_16
    throw v2

    .line 1568
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    monitor-enter v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 1569
    const/16 v17, 0x1

    :try_start_17
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1570
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 1572
    monitor-exit v4

    move v4, v6

    move v6, v2

    move/from16 v20, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v3

    move-object v3, v5

    move/from16 v5, v20

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :try_start_18
    throw v2

    .line 1596
    :catchall_5
    move-exception v2

    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    throw v2

    .line 1612
    :catchall_6
    move-exception v2

    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    throw v2

    .line 1621
    :cond_1c
    const/16 v2, 0x3084

    goto/16 :goto_9

    .line 1624
    :cond_1d
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 1637
    :catchall_7
    move-exception v2

    invoke-static {}, Lcom/google/vr/ndk/base/TraceCompat;->endSection()V

    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 1651
    :sswitch_1
    const/4 v13, 0x1

    .line 1652
    goto :goto_b

    .line 1667
    :catchall_8
    move-exception v2

    :try_start_19
    monitor-exit v17
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    :try_start_1a
    throw v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 1686
    :catchall_9
    move-exception v2

    :try_start_1b
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    throw v2

    :cond_1e
    move v4, v3

    move v3, v2

    goto/16 :goto_8

    :cond_1f
    move v7, v10

    goto/16 :goto_6

    :cond_20
    move v2, v4

    move v4, v5

    goto/16 :goto_5

    :cond_21
    move-object/from16 v20, v5

    move v5, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v4

    move v4, v6

    move v6, v3

    move-object/from16 v3, v20

    goto/16 :goto_0

    .line 1644
    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1697
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGvrSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/ndk/base/GvrSurfaceView;

    .line 1698
    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 1699
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/vr/cardboard/EglReadyListener;->getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    .line 1701
    :goto_1
    iget-boolean v3, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mPaused:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mWidth:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHeight:I

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRequestRender:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRenderMode:I

    if-ne v0, v2, :cond_4

    :cond_1
    :goto_2
    return v2

    .line 1698
    :cond_2
    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$300(Lcom/google/vr/ndk/base/GvrSurfaceView;)Lcom/google/vr/cardboard/EglReadyListener;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1699
    goto :goto_1

    :cond_4
    move v2, v1

    .line 1701
    goto :goto_2
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 1340
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mEglHelper:Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->finish()V

    .line 1342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1343
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;->releaseEglContextLocked(Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;)V

    .line 1345
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 1329
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1331
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mEglHelper:Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->destroySurface()V

    .line 1333
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 1691
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1731
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    monitor-enter v1

    .line 1732
    :try_start_0
    iget v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1733
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSwapMode()I
    .locals 2

    .prologue
    .line 1737
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    monitor-enter v1

    .line 1738
    :try_start_0
    iget v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRequestedSwapMode:I

    monitor-exit v1

    return v0

    .line 1739
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1811
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    monitor-enter v1

    .line 1815
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRequestPaused:Z

    .line 1816
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1817
    :goto_0
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mExited:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1822
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1824
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1827
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1831
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    monitor-enter v1

    .line 1835
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRequestPaused:Z

    .line 1836
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRequestRender:Z

    .line 1837
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRenderComplete:Z

    .line 1838
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1839
    :goto_0
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mExited:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1844
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1846
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1849
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public onWindowResize(II)V
    .locals 2

    .prologue
    .line 1853
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    monitor-enter v1

    .line 1854
    :try_start_0
    iput p1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mWidth:I

    .line 1855
    iput p2, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHeight:I

    .line 1856
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mSizeChanged:Z

    .line 1857
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRequestRender:Z

    .line 1858
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRenderComplete:Z

    .line 1865
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1866
    monitor-exit v1

    .line 1882
    :goto_0
    return-void

    .line 1869
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1872
    :goto_1
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mExited:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mPaused:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->ableToDraw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1877
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1879
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1882
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 1911
    if-nez p1, :cond_0

    .line 1912
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1914
    :cond_0
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    monitor-enter v1

    .line 1915
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1916
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1917
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 2

    .prologue
    .line 1888
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    monitor-enter v1

    .line 1889
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mShouldExit:Z

    .line 1890
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1891
    :goto_0
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1893
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1895
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1898
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 1902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1903
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1904
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1743
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    monitor-enter v1

    .line 1744
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRequestRender:Z

    .line 1745
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1746
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestRenderAndWait()V
    .locals 2

    .prologue
    .line 1750
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    monitor-enter v1

    .line 1755
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1756
    monitor-exit v1

    .line 1772
    :goto_0
    return-void

    .line 1759
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1760
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRequestRender:Z

    .line 1761
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRenderComplete:Z

    .line 1763
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1765
    :goto_1
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mExited:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mPaused:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->ableToDraw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1767
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1769
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1772
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1310
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->getId()J

    move-result-wide v0

    const/16 v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GLThread "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1316
    :try_start_0
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1320
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;->threadExiting(Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;)V

    .line 1321
    :goto_0
    return-void

    .line 1320
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;->threadExiting(Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v1, p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;->threadExiting(Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2

    .prologue
    .line 1711
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1712
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1714
    :cond_1
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    monitor-enter v1

    .line 1715
    :try_start_0
    iput p1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRenderMode:I

    .line 1716
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1717
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSwapMode(I)V
    .locals 2

    .prologue
    .line 1721
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 1722
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "swapMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1724
    :cond_1
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    monitor-enter v1

    .line 1725
    :try_start_0
    iput p1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mRequestedSwapMode:I

    .line 1726
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1727
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 2

    .prologue
    .line 1776
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    monitor-enter v1

    .line 1780
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHasSurface:Z

    .line 1781
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1782
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1783
    :goto_0
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1785
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1787
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1790
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public surfaceDestroyed()V
    .locals 2

    .prologue
    .line 1794
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    monitor-enter v1

    .line 1798
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mHasSurface:Z

    .line 1799
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1800
    :goto_0
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1802
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread;->mGLThreadManager:Lcom/google/vr/ndk/base/GvrSurfaceView$GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1804
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1807
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method
