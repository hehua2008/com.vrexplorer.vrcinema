.class public abstract Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AbstractAnimatedDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lcom/facebook/drawable/base/DrawableWithCaches;


# static fields
.field private static final NO_FRAME:I = -0x1

.field private static final POLL_FOR_RENDERED_FRAME_MS:I = 0x5

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final WATCH_DOG_TIMER_MIN_TIMEOUT_MS:J = 0x3e8L

.field private static final WATCH_DOG_TIMER_POLL_INTERVAL_MS:J = 0x7d0L


# instance fields
.field private mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

.field private final mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

.field private mApplyTransformation:Z

.field private final mDstRect:Landroid/graphics/Rect;

.field private final mDurationMs:I

.field private final mFrameCount:I

.field private mHaveWatchdogScheduled:Z

.field private final mInvalidateTask:Ljava/lang/Runnable;

.field private mInvalidateTaskScheduled:Z

.field private mIsPaused:Z

.field private mIsRunning:Z

.field private mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDrawnFrameMonotonicNumber:I

.field private mLastDrawnFrameNumber:I

.field private mLastInvalidateTimeMs:J

.field private volatile mLogId:Ljava/lang/String;

.field private final mLoopCount:I

.field private final mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

.field private final mNextFrameTask:Ljava/lang/Runnable;

.field private mNextFrameTaskMs:J

.field private final mPaint:Landroid/graphics/Paint;

.field private mPendingRenderedFrameMonotonicNumber:I

.field private mPendingRenderedFrameNumber:I

.field private final mScheduledExecutorServiceForUiThread:Ljava/util/concurrent/ScheduledExecutorService;

.field private mScheduledFrameMonotonicNumber:I

.field private mScheduledFrameNumber:I

.field private final mStartTask:Ljava/lang/Runnable;

.field private mStartTimeMs:J

.field private mSx:F

.field private mSy:F

.field private final mTransparentPaint:Landroid/graphics/Paint;

.field private mWaitingForDraw:Z

.field private final mWatchdogTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;

    sput-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;Lcom/facebook/common/time/MonotonicClock;)V
    .locals 8
    .param p1, "scheduledExecutorServiceForUiThread"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p2, "animatedDrawableBackend"    # Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;
    .param p3, "animatedDrawableDiagnostics"    # Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;
    .param p4, "monotonicClock"    # Lcom/facebook/common/time/MonotonicClock;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 137
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 79
    iput v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameNumber:I

    .line 82
    iput v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameMonotonicNumber:I

    .line 88
    iput-wide v6, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastInvalidateTimeMs:J

    .line 93
    iput v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mSx:F

    .line 94
    iput v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mSy:F

    .line 97
    iput-wide v6, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    .line 99
    iput-boolean v4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsPaused:Z

    .line 101
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$1;-><init>(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mStartTask:Ljava/lang/Runnable;

    .line 108
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$2;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$2;-><init>(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTask:Ljava/lang/Runnable;

    .line 116
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$3;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$3;-><init>(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mInvalidateTask:Ljava/lang/Runnable;

    .line 125
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$4;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$4;-><init>(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mWatchdogTask:Ljava/lang/Runnable;

    .line 138
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledExecutorServiceForUiThread:Ljava/util/concurrent/ScheduledExecutorService;

    .line 139
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    .line 140
    iput-object p3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    .line 141
    iput-object p4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    .line 142
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getDurationMs()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDurationMs:I

    .line 143
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getFrameCount()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mFrameCount:I

    .line 144
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->setBackend(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;)V

    .line 145
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getLoopCount()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLoopCount:I

    .line 146
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mTransparentPaint:Landroid/graphics/Paint;

    .line 147
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mTransparentPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mTransparentPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 151
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->resetToPreviewFrame()V

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->onStart()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->onNextFrame()V

    return-void
.end method

.method static synthetic access$402(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mInvalidateTaskScheduled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doInvalidateSelf()V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doWatchdogCheck()V

    return-void
.end method

.method private computeAndScheduleNextFrame(Z)V
    .locals 15
    .param p1, "scheduleNextFrame"    # Z

    .prologue
    .line 260
    iget v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDurationMs:I

    if-nez v10, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v10}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v8

    .line 264
    .local v8, "nowMs":J
    iget-wide v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mStartTimeMs:J

    sub-long v10, v8, v10

    iget v12, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDurationMs:I

    int-to-long v12, v12

    div-long/2addr v10, v12

    long-to-int v2, v10

    .line 265
    .local v2, "loops":I
    iget v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLoopCount:I

    if-eqz v10, :cond_2

    iget v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLoopCount:I

    if-ge v2, v10, :cond_0

    .line 269
    :cond_2
    iget-wide v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mStartTimeMs:J

    sub-long v10, v8, v10

    iget v12, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDurationMs:I

    int-to-long v12, v12

    rem-long/2addr v10, v12

    long-to-int v5, v10

    .line 270
    .local v5, "timestampMs":I
    iget-object v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v10, v5}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getFrameForTimestampMs(I)I

    move-result v3

    .line 271
    .local v3, "newCurrentFrameNumber":I
    iget v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    if-eq v10, v3, :cond_3

    const/4 v0, 0x1

    .line 272
    .local v0, "changed":Z
    :goto_1
    iput v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    .line 273
    iget v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mFrameCount:I

    mul-int/2addr v10, v2

    add-int/2addr v10, v3

    iput v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameMonotonicNumber:I

    .line 275
    if-eqz p1, :cond_0

    .line 281
    if-eqz v0, :cond_4

    .line 282
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doInvalidateSelf()V

    goto :goto_0

    .line 271
    .end local v0    # "changed":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 284
    .restart local v0    # "changed":Z
    :cond_4
    iget-object v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    iget v11, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    invoke-interface {v10, v11}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getTimestampMsForFrame(I)I

    move-result v10

    iget-object v11, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    iget v12, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    .line 285
    invoke-interface {v11, v12}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getDurationMsForFrame(I)I

    move-result v11

    add-int/2addr v10, v11

    sub-int v1, v10, v5

    .line 287
    .local v1, "durationMs":I
    iget v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mFrameCount:I

    rem-int v4, v10, v11

    .line 288
    .local v4, "nextFrame":I
    int-to-long v10, v1

    add-long v6, v8, v10

    .line 289
    .local v6, "nextFrameMs":J
    iget-wide v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    iget-wide v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    cmp-long v10, v10, v6

    if-lez v10, :cond_0

    .line 290
    :cond_5
    sget-object v10, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v11, "(%s) Next frame (%d) in %d ms"

    iget-object v12, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v10, v11, v12, v13, v14}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    iget-object v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v10}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 292
    iget-object v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v10, v6, v7}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 293
    iput-wide v6, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    goto/16 :goto_0
.end method

.method private doInvalidateSelf()V
    .locals 2

    .prologue
    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mWaitingForDraw:Z

    .line 500
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastInvalidateTimeMs:J

    .line 501
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->invalidateSelf()V

    .line 502
    return-void
.end method

.method private doWatchdogCheck()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 472
    iput-boolean v5, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mHaveWatchdogScheduled:Z

    .line 473
    iget-boolean v6, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    if-nez v6, :cond_0

    .line 496
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v6}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v2

    .line 479
    .local v2, "now":J
    iget-boolean v6, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mWaitingForDraw:Z

    if-eqz v6, :cond_2

    iget-wide v6, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastInvalidateTimeMs:J

    sub-long v6, v2, v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_2

    move v1, v4

    .line 483
    .local v1, "hasNotDrawnWithinTimeout":Z
    :goto_1
    iget-wide v6, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    iget-wide v6, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    sub-long v6, v2, v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_3

    move v0, v4

    .line 486
    .local v0, "hasNotAdvancedFrameWithinTimeout":Z
    :goto_2
    if-nez v1, :cond_1

    if-eqz v0, :cond_4

    .line 487
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->dropCaches()V

    .line 488
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doInvalidateSelf()V

    goto :goto_0

    .end local v0    # "hasNotAdvancedFrameWithinTimeout":Z
    .end local v1    # "hasNotDrawnWithinTimeout":Z
    :cond_2
    move v1, v5

    .line 479
    goto :goto_1

    .restart local v1    # "hasNotDrawnWithinTimeout":Z
    :cond_3
    move v0, v5

    .line 483
    goto :goto_2

    .line 490
    .restart local v0    # "hasNotAdvancedFrameWithinTimeout":Z
    :cond_4
    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledExecutorServiceForUiThread:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mWatchdogTask:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7d0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v8, v9, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 494
    iput-boolean v4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mHaveWatchdogScheduled:Z

    goto :goto_0
.end method

.method private onNextFrame()V
    .locals 2

    .prologue
    .line 244
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    .line 245
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    if-nez v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDurationMs:I

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onNextFrameMethodBegin()V

    .line 253
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->computeAndScheduleNextFrame(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onNextFrameMethodEnd()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onNextFrameMethodEnd()V

    throw v0
.end method

.method private onStart()V
    .locals 6

    .prologue
    .line 220
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    if-nez v2, :cond_0

    .line 241
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onStartMethodBegin()V

    .line 225
    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v2}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mStartTimeMs:J

    .line 227
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsPaused:Z

    if-eqz v2, :cond_1

    .line 228
    iget-wide v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mStartTimeMs:J

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    iget v5, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    invoke-interface {v4, v5}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getTimestampMsForFrame(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mStartTimeMs:J

    .line 234
    :goto_1
    iget-wide v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mStartTimeMs:J

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getDurationMsForFrame(I)I

    move-result v4

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 235
    .local v0, "nextFrameMs":J
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 236
    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    .line 237
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doInvalidateSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onStartMethodEnd()V

    goto :goto_0

    .line 230
    .end local v0    # "nextFrameMs":J
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    .line 231
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameMonotonicNumber:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 239
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onStartMethodEnd()V

    throw v2
.end method

.method private renderFrame(Landroid/graphics/Canvas;II)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frameNumber"    # I
    .param p3, "frameMonotonicNumber"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 441
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    .line 442
    invoke-interface {v2, p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getBitmapForFrame(I)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 443
    .local v0, "bitmapReference":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_2

    .line 444
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 445
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    if-eqz v2, :cond_0

    .line 446
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {v2}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 449
    :cond_0
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameMonotonicNumber:I

    if-le p3, v2, :cond_1

    .line 450
    iget v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameMonotonicNumber:I

    sub-int v2, p3, v2

    add-int/lit8 v1, v2, -0x1

    .line 451
    .local v1, "droppedFrames":I
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v2, v3}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->incrementDrawnFrames(I)V

    .line 452
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->incrementDroppedFrames(I)V

    .line 453
    if-lez v1, :cond_1

    .line 454
    sget-object v2, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v4, "(%s) Dropped %d frames"

    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v4, v5, v6}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 457
    .end local v1    # "droppedFrames":I
    :cond_1
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    .line 458
    iput p2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameNumber:I

    .line 459
    iput p3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameMonotonicNumber:I

    .line 460
    sget-object v2, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v4, "(%s) Drew frame %d"

    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v4, v5, v6}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v2, v3

    .line 463
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private resetToPreviewFrame()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 155
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getFrameForPreview()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    .line 156
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameMonotonicNumber:I

    .line 157
    iput v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    .line 158
    iput v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameMonotonicNumber:I

    .line 159
    return-void
.end method

.method private scheduleInvalidatePoll()V
    .locals 4

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mInvalidateTaskScheduled:Z

    if-eqz v0, :cond_0

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mInvalidateTaskScheduled:Z

    .line 417
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mInvalidateTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method


# virtual methods
.method public didLastDrawRender()Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, -0x1

    .line 300
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onDrawMethodBegin()V

    .line 302
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mWaitingForDraw:Z

    .line 303
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mHaveWatchdogScheduled:Z

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledExecutorServiceForUiThread:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mWatchdogTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mHaveWatchdogScheduled:Z

    .line 311
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mApplyTransformation:Z

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 313
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 315
    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->forNewBounds(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    move-result-object v7

    .line 316
    .local v7, "newBackend":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    if-eq v7, v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->dropCaches()V

    .line 318
    iput-object v7, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    .line 319
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v0, v7}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->setBackend(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;)V

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getRenderedWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mSx:F

    .line 322
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getRenderedHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mSy:F

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mApplyTransformation:Z

    .line 327
    .end local v7    # "newBackend":Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onDrawMethodEnd()V

    .line 407
    :goto_0
    return-void

    .line 332
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 333
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mSx:F

    iget v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mSy:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 336
    const/4 v6, 0x0

    .line 337
    .local v6, "didDrawFrame":Z
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    if-eq v0, v5, :cond_4

    .line 339
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    iget v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameMonotonicNumber:I

    .line 340
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->renderFrame(Landroid/graphics/Canvas;II)Z

    move-result v9

    .line 341
    .local v9, "rendered":Z
    or-int/2addr v6, v9

    .line 342
    if-eqz v9, :cond_a

    .line 343
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v1, "(%s) Rendered pending frame %d"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 344
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    .line 345
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameMonotonicNumber:I

    .line 353
    .end local v9    # "rendered":Z
    :cond_4
    :goto_1
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    if-ne v0, v5, :cond_6

    .line 355
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    if-eqz v0, :cond_5

    .line 356
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->computeAndScheduleNextFrame(Z)V

    .line 358
    :cond_5
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    iget v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameMonotonicNumber:I

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->renderFrame(Landroid/graphics/Canvas;II)Z

    move-result v9

    .line 362
    .restart local v9    # "rendered":Z
    or-int/2addr v6, v9

    .line 363
    if-eqz v9, :cond_b

    .line 364
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v1, "(%s) Rendered current frame %d"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 365
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    if-eqz v0, :cond_6

    .line 366
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->computeAndScheduleNextFrame(Z)V

    .line 376
    .end local v9    # "rendered":Z
    :cond_6
    :goto_2
    if-nez v6, :cond_7

    .line 377
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    if-eqz v0, :cond_7

    .line 378
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 379
    const/4 v6, 0x1

    .line 380
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v1, "(%s) Rendered last known frame %d"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 384
    :cond_7
    if-nez v6, :cond_8

    .line 386
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    .line 387
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getPreviewBitmap()Lcom/facebook/common/references/CloseableReference;

    move-result-object v8

    .line 388
    .local v8, "previewBitmapReference":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    if-eqz v8, :cond_8

    .line 389
    invoke-virtual {v8}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 390
    invoke-virtual {v8}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 391
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v1, "(%s) Rendered preview frame"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 392
    const/4 v6, 0x1

    .line 396
    .end local v8    # "previewBitmapReference":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    :cond_8
    if-nez v6, :cond_9

    .line 398
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mTransparentPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 399
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v1, "(%s) Failed to draw a frame"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 402
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 403
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->drawDebugOverlay(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onDrawMethodEnd()V

    goto/16 :goto_0

    .line 348
    .restart local v9    # "rendered":Z
    :cond_a
    :try_start_2
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v1, "(%s) Trying again later for pending %d"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->scheduleInvalidatePoll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 405
    .end local v6    # "didDrawFrame":Z
    .end local v9    # "rendered":Z
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onDrawMethodEnd()V

    throw v0

    .line 369
    .restart local v6    # "didDrawFrame":Z
    .restart local v9    # "rendered":Z
    :cond_b
    :try_start_3
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v1, "(%s) Trying again later for current %d"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 370
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    .line 371
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameMonotonicNumber:I

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameMonotonicNumber:I

    .line 372
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->scheduleInvalidatePoll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method

.method public dropCaches()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 569
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v1, "(%s) Dropping caches"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 570
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    .line 573
    iput v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameNumber:I

    .line 574
    iput v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameMonotonicNumber:I

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->dropCaches()V

    .line 577
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 163
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 164
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    .line 168
    :cond_0
    return-void
.end method

.method protected getAnimatedDrawableBackend()Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDurationMs:I

    return v0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mFrameCount:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getWidth()I

    move-result v0

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLoopCount:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 203
    const/4 v0, -0x3

    return v0
.end method

.method getScheduledFrameNumber()I
    .locals 1
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 516
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    return v0
.end method

.method isWaitingForDraw()Z
    .locals 1
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mWaitingForDraw:Z

    return v0
.end method

.method isWaitingForNextFrame()Z
    .locals 4
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 511
    iget-wide v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, -0x1

    .line 208
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mApplyTransformation:Z

    .line 210
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    .line 214
    :cond_0
    iput v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameNumber:I

    .line 215
    iput v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameMonotonicNumber:I

    .line 216
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->dropCaches()V

    .line 217
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x0

    .line 546
    iget-boolean v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    if-eqz v3, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v2

    .line 551
    :cond_1
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v3, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getFrameForTimestampMs(I)I

    move-result v1

    .line 552
    .local v1, "frame":I
    iget v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    if-eq v1, v3, :cond_0

    .line 557
    :try_start_0
    iput v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    .line 558
    iput v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameMonotonicNumber:I

    .line 559
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doInvalidateSelf()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    const/4 v2, 0x1

    goto :goto_0

    .line 561
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsPaused:Z

    .line 536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    .line 537
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 192
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doInvalidateSelf()V

    .line 193
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 198
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doInvalidateSelf()V

    .line 199
    return-void
.end method

.method public setLogId(Ljava/lang/String;)V
    .locals 0
    .param p1, "logId"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 521
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDurationMs:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mFrameCount:I

    if-gt v0, v1, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    .line 525
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mStartTask:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v1}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 530
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsPaused:Z

    .line 531
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    .line 532
    return-void
.end method
