.class Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$1;
.super Ljava/lang/Object;
.source "InteractiveModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->onOrientationChanged(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$1;->this$0:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;

    iput-object p2, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$1;->this$0:Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;

    invoke-static {v0}, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;->access$200(Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager;)Lcom/asha/vrlib/strategy/IModeStrategy;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;

    iget-object v1, p0, Lcom/asha/vrlib/strategy/interactive/InteractiveModeManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/strategy/interactive/AbsInteractiveStrategy;->onOrientationChanged(Landroid/content/Context;)V

    .line 84
    return-void
.end method
