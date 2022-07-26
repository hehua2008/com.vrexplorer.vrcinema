.class Lcom/asha/vrlib/strategy/ModeManager$3;
.super Ljava/lang/Object;
.source "ModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asha/vrlib/strategy/ModeManager;->off(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asha/vrlib/strategy/ModeManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$tmpStrategy:Lcom/asha/vrlib/strategy/IModeStrategy;


# direct methods
.method constructor <init>(Lcom/asha/vrlib/strategy/ModeManager;Lcom/asha/vrlib/strategy/IModeStrategy;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/asha/vrlib/strategy/ModeManager;

    .prologue
    .line 99
    .local p0, "this":Lcom/asha/vrlib/strategy/ModeManager$3;, "Lcom/asha/vrlib/strategy/ModeManager$3;"
    iput-object p1, p0, Lcom/asha/vrlib/strategy/ModeManager$3;->this$0:Lcom/asha/vrlib/strategy/ModeManager;

    iput-object p2, p0, Lcom/asha/vrlib/strategy/ModeManager$3;->val$tmpStrategy:Lcom/asha/vrlib/strategy/IModeStrategy;

    iput-object p3, p0, Lcom/asha/vrlib/strategy/ModeManager$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    .local p0, "this":Lcom/asha/vrlib/strategy/ModeManager$3;, "Lcom/asha/vrlib/strategy/ModeManager$3;"
    iget-object v0, p0, Lcom/asha/vrlib/strategy/ModeManager$3;->val$tmpStrategy:Lcom/asha/vrlib/strategy/IModeStrategy;

    iget-object v1, p0, Lcom/asha/vrlib/strategy/ModeManager$3;->val$context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/asha/vrlib/strategy/IModeStrategy;->turnOffInGL(Landroid/content/Context;)V

    .line 103
    return-void
.end method
