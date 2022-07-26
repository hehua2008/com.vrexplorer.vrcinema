.class Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy$1;
.super Ljava/lang/Object;
.source "CardboardMotionStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->turnOffInGL(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy$1;->this$0:Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;

    iput-object p2, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy$1;->this$0:Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;

    iget-object v1, p0, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;->access$000(Lcom/asha/vrlib/strategy/interactive/CardboardMotionStrategy;Landroid/content/Context;)V

    .line 78
    return-void
.end method
