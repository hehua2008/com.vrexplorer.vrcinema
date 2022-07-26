.class public final Lcom/google/vr/internal/controller/NativeCallbacks;
.super Ljava/lang/Object;
.source "NativeCallbacks.java"

# interfaces
.implements Lcom/google/vr/internal/controller/ServiceBridge$Callbacks;


# annotations
.annotation build Lcom/google/vr/cardboard/annotations/UsedByNative;
.end annotation


# instance fields
.field private closed:Z

.field private final userData:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByNative;
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    .line 45
    return-void
.end method

.method private final native handleAccelEvent(JJFFF)V
.end method

.method private final native handleButtonEvent(JJIZ)V
.end method

.method private final native handleControllerRecentered(JJFFFF)V
.end method

.method private final handleEventsCompatibilityLocked(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 98
    move v0, v10

    :goto_0
    iget-boolean v1, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getAccelEventCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 99
    invoke-virtual {p1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getAccelEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;

    move-result-object v1

    .line 100
    iget-wide v2, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    iget-wide v4, v1, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->timestampNanos:J

    iget v6, v1, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->x:F

    iget v7, v1, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->y:F

    iget v8, v1, Lcom/google/vr/vrcore/controller/api/ControllerAccelEvent;->z:F

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleAccelEvent(JJFFF)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v10

    .line 106
    :goto_1
    iget-boolean v1, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getButtonEventCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 107
    invoke-virtual {p1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getButtonEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;

    move-result-object v1

    .line 108
    iget-wide v2, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    iget-wide v4, v1, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->timestampNanos:J

    iget v6, v1, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->button:I

    iget-boolean v7, v1, Lcom/google/vr/vrcore/controller/api/ControllerButtonEvent;->down:Z

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleButtonEvent(JJIZ)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v10

    .line 114
    :goto_2
    iget-boolean v1, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getGyroEventCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 115
    invoke-virtual {p1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getGyroEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;

    move-result-object v1

    .line 116
    iget-wide v2, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    iget-wide v4, v1, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->timestampNanos:J

    iget v6, v1, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->x:F

    iget v7, v1, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->y:F

    iget v8, v1, Lcom/google/vr/vrcore/controller/api/ControllerGyroEvent;->z:F

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleGyroEvent(JJFFF)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v10

    .line 121
    :goto_3
    iget-boolean v1, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getOrientationEventCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 122
    invoke-virtual {p1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getOrientationEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;

    move-result-object v1

    .line 123
    iget-wide v2, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    iget-wide v4, v1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->timestampNanos:J

    iget v6, v1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    iget v7, v1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    iget v8, v1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    iget v9, v1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleOrientationEvent(JJFFFF)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 129
    :cond_3
    :goto_4
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getTouchEventCount()I

    move-result v0

    if-ge v10, v0, :cond_4

    .line 130
    invoke-virtual {p1, v10}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->getTouchEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;

    move-result-object v0

    .line 131
    iget-wide v2, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    iget-wide v4, v0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->timestampNanos:J

    iget v6, v0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->action:I

    iget v7, v0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->x:F

    iget v8, v0, Lcom/google/vr/vrcore/controller/api/ControllerTouchEvent;->y:F

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleTouchEvent(JJIFF)V

    .line 129
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 134
    :cond_4
    return-void
.end method

.method private final native handleGyroEvent(JJFFF)V
.end method

.method private final native handleOrientationEvent(JJFFFF)V
.end method

.method private final native handlePositionEvent(JJFFF)V
.end method

.method private final native handleServiceConnected(JI)V
.end method

.method private final native handleServiceDisconnected(J)V
.end method

.method private final native handleServiceFailed(J)V
.end method

.method private final native handleServiceInitFailed(JI)V
.end method

.method private final native handleServiceUnavailable(J)V
.end method

.method private final native handleStateChanged(JII)V
.end method

.method private final native handleTouchEvent(JJIFF)V
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 1
    .annotation build Lcom/google/vr/cardboard/annotations/UsedByNative;
    .end annotation

    .prologue
    .line 58
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    monitor-exit p0

    return-void

    .line 76
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleEventsCompatibilityLocked(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onControllerEventPacket2(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V
    .locals 9

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    .line 85
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleEventsCompatibilityLocked(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V

    .line 89
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->getPositionEventCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 90
    invoke-virtual {p1, v0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->getPositionEvent(I)Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;

    move-result-object v1

    .line 91
    iget-wide v2, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    iget-wide v4, v1, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->timestampNanos:J

    iget v6, v1, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->x:F

    iget v7, v1, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->y:F

    iget v8, v1, Lcom/google/vr/vrcore/controller/api/ControllerPositionEvent;->z:F

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/vr/internal/controller/NativeCallbacks;->handlePositionEvent(JJFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onControllerRecentered(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V
    .locals 10

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_0

    .line 139
    iget-wide v2, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    iget-wide v4, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->timestampNanos:J

    iget v6, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qx:F

    iget v7, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qy:F

    iget v8, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qz:F

    iget v9, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->qw:F

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleControllerRecentered(JJFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_0
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onControllerStateChanged(II)V
    .locals 2

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_0

    .line 66
    iget-wide v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleStateChanged(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onServiceConnected(I)V
    .locals 2

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_0

    .line 147
    iget-wide v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleServiceConnected(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onServiceDisconnected()V
    .locals 2

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_0

    .line 154
    iget-wide v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleServiceDisconnected(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onServiceFailed()V
    .locals 2

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_0

    .line 161
    iget-wide v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleServiceFailed(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_0
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onServiceInitFailed(I)V
    .locals 2

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_0

    .line 175
    iget-wide v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleServiceInitFailed(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onServiceUnavailable()V
    .locals 2

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->closed:Z

    if-nez v0, :cond_0

    .line 168
    iget-wide v0, p0, Lcom/google/vr/internal/controller/NativeCallbacks;->userData:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/internal/controller/NativeCallbacks;->handleServiceUnavailable(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
