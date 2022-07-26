.class Lcom/asha/vrlib/MDVRLibrary$4;
.super Ljava/lang/Object;
.source "MDVRLibrary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asha/vrlib/MDVRLibrary;->onDestroy()V
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
    .line 442
    iput-object p1, p0, Lcom/asha/vrlib/MDVRLibrary$4;->this$0:Lcom/asha/vrlib/MDVRLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/asha/vrlib/MDVRLibrary$4;->this$0:Lcom/asha/vrlib/MDVRLibrary;

    invoke-static {v0}, Lcom/asha/vrlib/MDVRLibrary;->access$2700(Lcom/asha/vrlib/MDVRLibrary;)V

    .line 446
    return-void
.end method
