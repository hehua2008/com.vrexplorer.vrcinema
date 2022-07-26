.class Lcom/google/vr/ndk/base/FadeOverlayView;
.super Landroid/view/View;
.source "FadeOverlayView.java"


# static fields
.field static final AUTO_FADE_DURATION_MILLIS:J = 0x15eL

.field static final AUTO_FADE_START_DELAY_MILLIS:J = 0x3e8L

.field private static final BACKGROUND_COLOR:I = -0x1000000

.field private static final DEBUG:Z = true

.field private static final MSG_AUTO_FADE:I = 0x49c1485

.field private static final TAG:Ljava/lang/String; = "FadeOverlayView"


# instance fields
.field private final autoFadeHandler:Landroid/os/Handler;

.field private fadeDurationMillis:J

.field private fadeStartTimeMillis:J

.field private fadeType:I

.field private final fadeUpdateRunnable:Ljava/lang/Runnable;

.field private visible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeType:I

    .line 63
    new-instance v0, Lcom/google/vr/ndk/base/FadeOverlayView$1;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/FadeOverlayView$1;-><init>(Lcom/google/vr/ndk/base/FadeOverlayView;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeUpdateRunnable:Ljava/lang/Runnable;

    .line 72
    new-instance v0, Lcom/google/vr/ndk/base/FadeOverlayView$2;

    .line 73
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/vr/ndk/base/FadeOverlayView$2;-><init>(Lcom/google/vr/ndk/base/FadeOverlayView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->autoFadeHandler:Landroid/os/Handler;

    .line 87
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/FadeOverlayView;->setBackgroundColor(I)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/ndk/base/FadeOverlayView;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->updateFade()V

    return-void
.end method

.method private endFade()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 216
    iget v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeType:I

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 220
    :cond_0
    iget v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeType:I

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/FadeOverlayView;->setVisibility(I)V

    .line 221
    iget v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeType:I

    if-ne v0, v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/FadeOverlayView;->setAlpha(F)V

    .line 222
    iget-object v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/FadeOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 223
    iput v1, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeType:I

    .line 225
    const-string v0, "FadeOverlayView"

    const-string v1, ".endFade"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :cond_1
    const/16 v0, 0x8

    goto :goto_1

    .line 221
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private removeFadeCallbacks()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->autoFadeHandler:Landroid/os/Handler;

    const v1, 0x49c1485

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 206
    iget-object v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/FadeOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 207
    return-void
.end method

.method private updateFade()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 230
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeStartTimeMillis:J

    sub-long v2, v0, v2

    .line 231
    long-to-float v0, v2

    iget-wide v4, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeDurationMillis:J

    long-to-float v1, v4

    div-float/2addr v0, v1

    .line 238
    iget v1, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 239
    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/FadeOverlayView;->setAlpha(F)V

    .line 241
    iget-wide v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeDurationMillis:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/FadeOverlayView;->setVisibility(I)V

    .line 246
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeDurationMillis:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/FadeOverlayView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 252
    :goto_1
    return-void

    .line 238
    :cond_1
    sub-float v0, v6, v0

    goto :goto_0

    .line 250
    :cond_2
    invoke-direct {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->endFade()V

    goto :goto_1
.end method


# virtual methods
.method public flushAutoFade(J)V
    .locals 3

    .prologue
    const v2, 0x49c1485

    .line 163
    const-string v0, "FadeOverlayView"

    const-string v1, ".flushAutoFade"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->autoFadeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->autoFadeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    iget-object v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->autoFadeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 171
    :cond_0
    return-void
.end method

.method getFadeType()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeType:I

    return v0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->visible:Z

    return v0
.end method

.method public onInvisible()V
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->visible:Z

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->visible:Z

    .line 127
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->removeFadeCallbacks()V

    .line 134
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeType:I

    .line 135
    invoke-direct {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->endFade()V

    goto :goto_0
.end method

.method public onVisible()V
    .locals 5

    .prologue
    const v4, 0x49c1485

    .line 143
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->visible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->visible:Z

    .line 149
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->autoFadeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    iget-object v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->autoFadeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 179
    if-nez p1, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->removeFadeCallbacks()V

    .line 182
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeType:I

    .line 183
    invoke-direct {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->endFade()V

    goto :goto_0
.end method

.method public startFade(IJ)V
    .locals 4

    .prologue
    .line 102
    const-string v0, "FadeOverlayView"

    const/16 v1, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, ".startFade: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const-string v0, "FadeOverlayView"

    const-string v1, "Ignoring fade request while disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->visible:Z

    if-nez v0, :cond_1

    .line 109
    const-string v0, "FadeOverlayView"

    const-string v1, "Ignoring fade request while invisible."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->removeFadeCallbacks()V

    .line 113
    iput p1, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeType:I

    .line 114
    iput-wide p2, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeDurationMillis:J

    .line 115
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeStartTimeMillis:J

    .line 116
    invoke-direct {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->updateFade()V

    goto :goto_0
.end method
