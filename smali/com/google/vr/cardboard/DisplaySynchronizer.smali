.class public Lcom/google/vr/cardboard/DisplaySynchronizer;
.super Ljava/lang/Object;
.source "DisplaySynchronizer.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# static fields
.field private static final DEBUG:Z = false

.field public static final DISPLAY_ROTATION_REFRESH_INTERVAL_NANOS:J

.field private static final INVALID_DISPLAY_ROTATION:I = -0x1

.field private static final MIN_VALID_DISPLAY_REFRESH_RATE:F = 30.0f

.field private static final TAG:Ljava/lang/String; = "DisplaySynchronizer"


# instance fields
.field private volatile display:Landroid/view/Display;

.field private displayRotationDegrees:I

.field private final frameMonitor:Lcom/google/vr/cardboard/FrameMonitor;

.field private lastDisplayRotationUpdateTimeNanos:J

.field private nativeDisplaySynchronizer:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/vr/cardboard/DisplaySynchronizer;->DISPLAY_ROTATION_REFRESH_INTERVAL_NANOS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    .line 45
    iput-wide v2, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->lastDisplayRotationUpdateTimeNanos:J

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeCreate(Ljava/lang/ClassLoader;Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    .line 58
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native DisplaySynchronizer creation failed, implementation unavailable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/vr/cardboard/DisplaySynchronizer;->setDisplay(Landroid/view/Display;)V

    .line 63
    new-instance v0, Lcom/google/vr/cardboard/FrameMonitor;

    invoke-direct {v0, p0}, Lcom/google/vr/cardboard/FrameMonitor;-><init>(Landroid/view/Choreographer$FrameCallback;)V

    iput-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->frameMonitor:Lcom/google/vr/cardboard/FrameMonitor;

    .line 64
    return-void
.end method

.method private checkNativeDisplaySynchronizer()V
    .locals 4

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DisplaySynchronizer has already been shut down."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    return-void
.end method

.method private invalidateDisplayRotation()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    .line 217
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 177
    invoke-direct {p0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->checkNativeDisplaySynchronizer()V

    .line 181
    iget v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->lastDisplayRotationUpdateTimeNanos:J

    sub-long v0, p1, v0

    sget-wide v2, Lcom/google/vr/cardboard/DisplaySynchronizer;->DISPLAY_ROTATION_REFRESH_INTERVAL_NANOS:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 198
    const-string v0, "DisplaySynchronizer"

    const-string v1, "Unknown display rotation, defaulting to 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iput v4, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    .line 201
    :goto_0
    iput-wide p1, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->lastDisplayRotationUpdateTimeNanos:J

    .line 206
    :cond_1
    iget-wide v2, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    iget v6, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeUpdate(JJI)V

    .line 207
    return-void

    .line 186
    :pswitch_0
    iput v4, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    goto :goto_0

    .line 189
    :pswitch_1
    const/16 v0, 0x5a

    iput v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    goto :goto_0

    .line 192
    :pswitch_2
    const/16 v0, 0xb4

    iput v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    goto :goto_0

    .line 195
    :pswitch_3
    const/16 v0, 0x10e

    iput v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->displayRotationDegrees:I

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "DisplaySynchronizer"

    const-string v1, "DisplaySynchronizer.shutdown() should be called to ensure resource cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->display:Landroid/view/Display;

    return-object v0
.end method

.method public getNativeDisplaySynchronizer()J
    .locals 2

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->checkNativeDisplaySynchronizer()V

    .line 166
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    return-wide v0
.end method

.method protected native nativeCreate(Ljava/lang/ClassLoader;Landroid/content/Context;)J
.end method

.method protected native nativeDestroy(J)V
.end method

.method protected native nativeReset(JJJ)V
.end method

.method protected native nativeUpdate(JJI)V
.end method

.method public onConfigurationChanged()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->invalidateDisplayRotation()V

    .line 138
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->frameMonitor:Lcom/google/vr/cardboard/FrameMonitor;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/FrameMonitor;->onPause()V

    .line 123
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->invalidateDisplayRotation()V

    .line 130
    iget-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->frameMonitor:Lcom/google/vr/cardboard/FrameMonitor;

    invoke-virtual {v0}, Lcom/google/vr/cardboard/FrameMonitor;->onResume()V

    .line 131
    return-void
.end method

.method public setDisplay(Landroid/view/Display;)V
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->checkNativeDisplaySynchronizer()V

    .line 77
    iput-object p1, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->display:Landroid/view/Display;

    .line 78
    invoke-direct {p0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->invalidateDisplayRotation()V

    .line 80
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result v2

    .line 81
    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    .line 83
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    long-to-float v3, v4

    div-float v2, v3, v2

    float-to-long v4, v2

    .line 87
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 88
    invoke-virtual {p1}, Landroid/view/Display;->getAppVsyncOffsetNanos()J

    move-result-wide v6

    .line 93
    :goto_1
    iget-wide v2, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeReset(JJJ)V

    .line 94
    return-void

    :cond_0
    move-wide v4, v0

    .line 84
    goto :goto_0

    :cond_1
    move-wide v6, v0

    goto :goto_1
.end method

.method public shutdown()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 147
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/google/vr/cardboard/DisplaySynchronizer;->onPause()V

    .line 151
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDestroy(J)V

    .line 152
    iput-wide v2, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    .line 154
    :cond_0
    return-void
.end method
