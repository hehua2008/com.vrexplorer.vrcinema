.class Lcom/asha/vrlib/MDPickerManager$1;
.super Ljava/lang/Object;
.source "MDPickerManager.java"

# interfaces
.implements Lcom/asha/vrlib/MDVRLibrary$IGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/MDPickerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asha/vrlib/MDPickerManager;


# direct methods
.method constructor <init>(Lcom/asha/vrlib/MDPickerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/asha/vrlib/MDPickerManager;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/asha/vrlib/MDPickerManager$1;->this$0:Lcom/asha/vrlib/MDPickerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager$1;->this$0:Lcom/asha/vrlib/MDPickerManager;

    invoke-static {v0}, Lcom/asha/vrlib/MDPickerManager;->access$500(Lcom/asha/vrlib/MDPickerManager;)Lcom/asha/vrlib/MDPickerManager$RayPickAsTouchMainTask;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/asha/vrlib/MDPickerManager$RayPickAsTouchMainTask;->setEvent(FF)V

    .line 65
    iget-object v0, p0, Lcom/asha/vrlib/MDPickerManager$1;->this$0:Lcom/asha/vrlib/MDPickerManager;

    invoke-static {v0}, Lcom/asha/vrlib/MDPickerManager;->access$500(Lcom/asha/vrlib/MDPickerManager;)Lcom/asha/vrlib/MDPickerManager$RayPickAsTouchMainTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asha/vrlib/MDPickerManager$RayPickAsTouchMainTask;->run()V

    .line 66
    return-void
.end method
