.class Lcom/asha/vrlib/MDVRLibrary$2;
.super Ljava/lang/Object;
.source "MDVRLibrary.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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


# direct methods
.method constructor <init>(Lcom/asha/vrlib/MDVRLibrary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/asha/vrlib/MDVRLibrary;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/asha/vrlib/MDVRLibrary$2;->this$0:Lcom/asha/vrlib/MDVRLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$2;->this$0:Lcom/asha/vrlib/MDVRLibrary;

    invoke-static {v0}, Lcom/asha/vrlib/MDVRLibrary;->access$1100(Lcom/asha/vrlib/MDVRLibrary;)Lcom/asha/vrlib/MDTouchHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/asha/vrlib/MDTouchHelper;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
