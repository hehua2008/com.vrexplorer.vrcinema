.class Lcom/asha/vrlib/strategy/interactive/MotionStrategy$1;
.super Ljava/lang/Object;
.source "MotionStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->turnOffInGL(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asha/vrlib/strategy/interactive/MotionStrategy;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/asha/vrlib/strategy/interactive/MotionStrategy;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/asha/vrlib/strategy/interactive/MotionStrategy;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy$1;->this$0:Lcom/asha/vrlib/strategy/interactive/MotionStrategy;

    iput-object p2, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy$1;->this$0:Lcom/asha/vrlib/strategy/interactive/MotionStrategy;

    iget-object v1, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->unregisterSensor(Landroid/content/Context;)V

    .line 79
    return-void
.end method
