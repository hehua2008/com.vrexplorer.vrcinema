.class Lcom/asha/vrlib/strategy/ModeManager$1;
.super Ljava/lang/Object;
.source "ModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asha/vrlib/strategy/ModeManager;->initMode(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asha/vrlib/strategy/ModeManager;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/asha/vrlib/strategy/ModeManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/asha/vrlib/strategy/ModeManager;

    .prologue
    .line 48
    .local p0, "this":Lcom/asha/vrlib/strategy/ModeManager$1;, "Lcom/asha/vrlib/strategy/ModeManager$1;"
    iput-object p1, p0, Lcom/asha/vrlib/strategy/ModeManager$1;->this$0:Lcom/asha/vrlib/strategy/ModeManager;

    iput p2, p0, Lcom/asha/vrlib/strategy/ModeManager$1;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 51
    .local p0, "this":Lcom/asha/vrlib/strategy/ModeManager$1;, "Lcom/asha/vrlib/strategy/ModeManager$1;"
    iget-object v0, p0, Lcom/asha/vrlib/strategy/ModeManager$1;->this$0:Lcom/asha/vrlib/strategy/ModeManager;

    invoke-static {v0}, Lcom/asha/vrlib/strategy/ModeManager;->access$000(Lcom/asha/vrlib/strategy/ModeManager;)Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/asha/vrlib/strategy/ModeManager$1;->this$0:Lcom/asha/vrlib/strategy/ModeManager;

    invoke-static {v0}, Lcom/asha/vrlib/strategy/ModeManager;->access$000(Lcom/asha/vrlib/strategy/ModeManager;)Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;

    move-result-object v0

    iget v1, p0, Lcom/asha/vrlib/strategy/ModeManager$1;->val$mode:I

    invoke-interface {v0, v1}, Lcom/asha/vrlib/MDVRLibrary$INotSupportCallback;->onNotSupport(I)V

    .line 54
    :cond_0
    return-void
.end method
