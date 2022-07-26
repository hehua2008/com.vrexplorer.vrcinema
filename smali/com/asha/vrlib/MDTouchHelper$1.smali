.class Lcom/asha/vrlib/MDTouchHelper$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MDTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asha/vrlib/MDTouchHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asha/vrlib/MDTouchHelper;


# direct methods
.method constructor <init>(Lcom/asha/vrlib/MDTouchHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/asha/vrlib/MDTouchHelper;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/asha/vrlib/MDTouchHelper$1;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 67
    iget-object v2, p0, Lcom/asha/vrlib/MDTouchHelper$1;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {v2}, Lcom/asha/vrlib/MDTouchHelper;->access$100(Lcom/asha/vrlib/MDTouchHelper;)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/asha/vrlib/MDTouchHelper$1;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {v2}, Lcom/asha/vrlib/MDTouchHelper;->access$500(Lcom/asha/vrlib/MDTouchHelper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    iget-object v0, p0, Lcom/asha/vrlib/MDTouchHelper$1;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {v0, p3, p4}, Lcom/asha/vrlib/MDTouchHelper;->access$600(Lcom/asha/vrlib/MDTouchHelper;FF)V

    move v0, v1

    .line 71
    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v0, 0x1

    .line 57
    iget-object v1, p0, Lcom/asha/vrlib/MDTouchHelper$1;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {v1}, Lcom/asha/vrlib/MDTouchHelper;->access$100(Lcom/asha/vrlib/MDTouchHelper;)I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/asha/vrlib/MDTouchHelper$1;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {v1}, Lcom/asha/vrlib/MDTouchHelper;->access$300(Lcom/asha/vrlib/MDTouchHelper;)Lcom/asha/vrlib/MDVRLibrary$IAdvanceGestureListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/asha/vrlib/MDTouchHelper$1;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {v1}, Lcom/asha/vrlib/MDTouchHelper;->access$300(Lcom/asha/vrlib/MDTouchHelper;)Lcom/asha/vrlib/MDVRLibrary$IAdvanceGestureListener;

    move-result-object v1

    iget-object v2, p0, Lcom/asha/vrlib/MDTouchHelper$1;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {v2}, Lcom/asha/vrlib/MDTouchHelper;->access$400(Lcom/asha/vrlib/MDTouchHelper;)F

    move-result v2

    div-float v2, p3, v2

    iget-object v3, p0, Lcom/asha/vrlib/MDTouchHelper$1;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {v3}, Lcom/asha/vrlib/MDTouchHelper;->access$400(Lcom/asha/vrlib/MDTouchHelper;)F

    move-result v3

    div-float v3, p4, v3

    invoke-interface {v1, v2, v3}, Lcom/asha/vrlib/MDVRLibrary$IAdvanceGestureListener;->onDrag(FF)V

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 47
    iget-object v2, p0, Lcom/asha/vrlib/MDTouchHelper$1;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {v2}, Lcom/asha/vrlib/MDTouchHelper;->access$100(Lcom/asha/vrlib/MDTouchHelper;)I

    move-result v2

    if-ne v2, v1, :cond_1

    const/4 v1, 0x0

    .line 52
    :cond_0
    return v1

    .line 49
    :cond_1
    iget-object v2, p0, Lcom/asha/vrlib/MDTouchHelper$1;->this$0:Lcom/asha/vrlib/MDTouchHelper;

    invoke-static {v2}, Lcom/asha/vrlib/MDTouchHelper;->access$200(Lcom/asha/vrlib/MDTouchHelper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/MDVRLibrary$IGestureListener;

    .line 50
    .local v0, "listener":Lcom/asha/vrlib/MDVRLibrary$IGestureListener;
    invoke-interface {v0, p1}, Lcom/asha/vrlib/MDVRLibrary$IGestureListener;->onClick(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method
