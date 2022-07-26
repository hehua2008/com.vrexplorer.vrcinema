.class Lcom/asha/vrlib/MDTouchHelper$PinchInfo;
.super Ljava/lang/Object;
.source "MDTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/MDTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinchInfo"
.end annotation


# instance fields
.field private currentScale:F

.field private oDistance:F

.field private prevScale:F

.field final synthetic this$0:Lcom/asha/vrlib/MDTouchHelper;

.field private x1:F

.field private x2:F

.field private y1:F

.field private y2:F


# direct methods
.method private constructor <init>(Lcom/asha/vrlib/MDTouchHelper;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asha/vrlib/MDTouchHelper;Lcom/asha/vrlib/MDTouchHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/asha/vrlib/MDTouchHelper;
    .param p2, "x1"    # Lcom/asha/vrlib/MDTouchHelper$1;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;-><init>(Lcom/asha/vrlib/MDTouchHelper;)V

    return-void
.end method


# virtual methods
.method public mark(FFFF)V
    .locals 1
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 226
    iput p1, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->x1:F

    .line 227
    iput p2, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->y1:F

    .line 228
    iput p3, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->x2:F

    .line 229
    iput p4, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->y2:F

    .line 230
    invoke-static {p1, p2, p3, p4}, Lcom/asha/vrlib/MDTouchHelper;->access$800(FFFF)F

    move-result v0

    iput v0, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->oDistance:F

    .line 231
    iget v0, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->currentScale:F

    iput v0, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->prevScale:F

    .line 232
    return-void
.end method

.method public pinch(F)F
    .locals 3
    .param p1, "distance"    # F

    .prologue
    .line 235
    iget v1, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->oDistance:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iput p1, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->oDistance:F

    .line 236
    :cond_0
    iget v1, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->oDistance:F

    div-float v1, p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v1, v2

    .line 237
    .local v0, "scale":F
    iget-object v1, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {v1}, Lcom/asha/vrlib/MDTouchHelper;->access$900(Lcom/asha/vrlib/MDTouchHelper;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 238
    iget v1, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->prevScale:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->currentScale:F

    .line 240
    iget v1, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->currentScale:F

    iget-object v2, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {v2}, Lcom/asha/vrlib/MDTouchHelper;->access$1000(Lcom/asha/vrlib/MDTouchHelper;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->currentScale:F

    .line 241
    iget v1, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->currentScale:F

    iget-object v2, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {v2}, Lcom/asha/vrlib/MDTouchHelper;->access$1100(Lcom/asha/vrlib/MDTouchHelper;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->currentScale:F

    .line 242
    iget v1, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->currentScale:F

    return v1
.end method

.method public reset()F
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {v0}, Lcom/asha/vrlib/MDTouchHelper;->access$1200(Lcom/asha/vrlib/MDTouchHelper;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->setScale(F)F

    move-result v0

    return v0
.end method

.method public setScale(F)F
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 246
    iput p1, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->prevScale:F

    .line 247
    iput p1, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->currentScale:F

    .line 248
    iget v0, p0, Lcom/asha/vrlib/MDTouchHelper$PinchInfo;->currentScale:F

    return v0
.end method
