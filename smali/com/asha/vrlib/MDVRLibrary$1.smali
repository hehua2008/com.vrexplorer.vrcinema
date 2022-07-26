.class Lcom/asha/vrlib/MDVRLibrary$1;
.super Ljava/lang/Object;
.source "MDVRLibrary.java"

# interfaces
.implements Lcom/asha/vrlib/MDVRLibrary$IAdvanceGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asha/vrlib/MDVRLibrary;->initTouchHelper(Lcom/asha/vrlib/MDVRLibrary$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asha/vrlib/MDVRLibrary;

.field final synthetic val$updatePinchRunnable:Lcom/asha/vrlib/MDVRLibrary$UpdatePinchRunnable;


# direct methods
.method constructor <init>(Lcom/asha/vrlib/MDVRLibrary;Lcom/asha/vrlib/MDVRLibrary$UpdatePinchRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/asha/vrlib/MDVRLibrary;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/asha/vrlib/MDVRLibrary$1;->this$0:Lcom/asha/vrlib/MDVRLibrary;

    iput-object p2, p0, Lcom/asha/vrlib/MDVRLibrary$1;->val$updatePinchRunnable:Lcom/asha/vrlib/MDVRLibrary$UpdatePinchRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(FF)V
    .locals 3
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F

    .prologue
    .line 135
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$1;->this$0:Lcom/asha/vrlib/MDVRLibrary;

    invoke-static {v0}, Lcom/asha/vrlib/MDVRLibrary;->access$500(Lcom/asha/vrlib/MDVRLibrary;)Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->handleDrag(II)Z

    .line 136
    return-void
.end method

.method public onPinch(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 140
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$1;->val$updatePinchRunnable:Lcom/asha/vrlib/MDVRLibrary$UpdatePinchRunnable;

    invoke-virtual {v0, p1}, Lcom/asha/vrlib/MDVRLibrary$UpdatePinchRunnable;->setScale(F)V

    .line 141
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$1;->this$0:Lcom/asha/vrlib/MDVRLibrary;

    invoke-static {v0}, Lcom/asha/vrlib/MDVRLibrary;->access$600(Lcom/asha/vrlib/MDVRLibrary;)Lcom/asha/vrlib/common/MDGLHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/asha/vrlib/MDVRLibrary$1;->val$updatePinchRunnable:Lcom/asha/vrlib/MDVRLibrary$UpdatePinchRunnable;

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/common/MDGLHandler;->post(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method
