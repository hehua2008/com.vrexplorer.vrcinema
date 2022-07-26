.class Lcom/asha/vrlib/MDTouchHelper$2;
.super Ljava/lang/Object;
.source "MDTouchHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asha/vrlib/MDTouchHelper;->animStart(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastTime:J

.field final synthetic this$0:Lcom/asha/vrlib/MDTouchHelper;


# direct methods
.method constructor <init>(Lcom/asha/vrlib/MDTouchHelper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/asha/vrlib/MDTouchHelper;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/asha/vrlib/MDTouchHelper$2;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/asha/vrlib/MDTouchHelper$2;->lastTime:J

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v8, -0x3b860000    # -1000.0f

    .line 94
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    .line 95
    .local v2, "now":J
    iget-wide v6, p0, Lcom/asha/vrlib/MDTouchHelper$2;->lastTime:J

    sub-long v0, v2, v6

    .line 96
    .local v0, "dur":J
    const-string v6, "vx"

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    long-to-float v7, v0

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    iget-object v7, p0, Lcom/asha/vrlib/MDTouchHelper$2;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {v7}, Lcom/asha/vrlib/MDTouchHelper;->access$700(Lcom/asha/vrlib/MDTouchHelper;)Lcom/asha/vrlib/model/MDFlingConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/asha/vrlib/model/MDFlingConfig;->getSensitivity()F

    move-result v7

    mul-float v4, v6, v7

    .line 97
    .local v4, "sx":F
    const-string v6, "vy"

    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    long-to-float v7, v0

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    iget-object v7, p0, Lcom/asha/vrlib/MDTouchHelper$2;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {v7}, Lcom/asha/vrlib/MDTouchHelper;->access$700(Lcom/asha/vrlib/MDTouchHelper;)Lcom/asha/vrlib/model/MDFlingConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/asha/vrlib/model/MDFlingConfig;->getSensitivity()F

    move-result v7

    mul-float v5, v6, v7

    .line 98
    .local v5, "sy":F
    iput-wide v2, p0, Lcom/asha/vrlib/MDTouchHelper$2;->lastTime:J

    .line 100
    iget-object v6, p0, Lcom/asha/vrlib/MDTouchHelper$2;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {v6}, Lcom/asha/vrlib/MDTouchHelper;->access$300(Lcom/asha/vrlib/MDTouchHelper;)Lcom/asha/vrlib/MDVRLibrary$IAdvanceGestureListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 101
    iget-object v6, p0, Lcom/asha/vrlib/MDTouchHelper$2;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {v6}, Lcom/asha/vrlib/MDTouchHelper;->access$300(Lcom/asha/vrlib/MDTouchHelper;)Lcom/asha/vrlib/MDVRLibrary$IAdvanceGestureListener;

    move-result-object v6

    iget-object v7, p0, Lcom/asha/vrlib/MDTouchHelper$2;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {v7}, Lcom/asha/vrlib/MDTouchHelper;->access$400(Lcom/asha/vrlib/MDTouchHelper;)F

    move-result v7

    div-float v7, v4, v7

    iget-object v8, p0, Lcom/asha/vrlib/MDTouchHelper$2;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {v8}, Lcom/asha/vrlib/MDTouchHelper;->access$400(Lcom/asha/vrlib/MDTouchHelper;)F

    move-result v8

    div-float v8, v5, v8

    invoke-interface {v6, v7, v8}, Lcom/asha/vrlib/MDVRLibrary$IAdvanceGestureListener;->onDrag(FF)V

    .line 103
    :cond_0
    return-void
.end method
