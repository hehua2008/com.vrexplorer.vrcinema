.class public Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableSupport;
.super Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;
.source "AnimatedDrawableSupport.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/base/AnimatableDrawableSupport;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;Lcom/facebook/common/time/MonotonicClock;)V
    .locals 0
    .param p1, "scheduledExecutorServiceForUiThread"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p2, "animatedDrawableBackend"    # Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;
    .param p3, "animatedDrawableDiagnostics"    # Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;
    .param p4, "monotonicClock"    # Lcom/facebook/common/time/MonotonicClock;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;Lcom/facebook/common/time/MonotonicClock;)V

    .line 52
    return-void
.end method


# virtual methods
.method public createAnimatorUpdateListener()Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableSupport$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableSupport$1;-><init>(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableSupport;)V

    return-object v0
.end method

.method public createValueAnimator()Lcom/nineoldandroids/animation/ValueAnimator;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableSupport;->getAnimatedDrawableBackend()Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getLoopCount()I

    move-result v1

    .line 66
    .local v1, "loopCount":I
    new-instance v0, Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 67
    .local v0, "animator":Lcom/nineoldandroids/animation/ValueAnimator;
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v3, v2, v3

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableSupport;->getDuration()I

    move-result v3

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    .line 68
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableSupport;->getDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    .line 69
    if-eqz v1, :cond_0

    .end local v1    # "loopCount":I
    :goto_0
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setRepeatCount(I)V

    .line 70
    invoke-virtual {v0, v4}, Lcom/nineoldandroids/animation/ValueAnimator;->setRepeatMode(I)V

    .line 71
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 72
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableSupport;->createAnimatorUpdateListener()Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 73
    return-object v0

    .line 69
    .restart local v1    # "loopCount":I
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public createValueAnimator(I)Lcom/nineoldandroids/animation/ValueAnimator;
    .locals 4
    .param p1, "maxDurationMs"    # I

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableSupport;->createValueAnimator()Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 58
    .local v0, "animator":Lcom/nineoldandroids/animation/ValueAnimator;
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableSupport;->getAnimatedDrawableBackend()Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getDurationMs()I

    move-result v2

    div-int v2, p1, v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 59
    .local v1, "repeatCount":I
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setRepeatCount(I)V

    .line 60
    return-object v0
.end method
