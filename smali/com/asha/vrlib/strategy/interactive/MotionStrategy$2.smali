.class Lcom/asha/vrlib/strategy/interactive/MotionStrategy$2;
.super Ljava/lang/Object;
.source "MotionStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asha/vrlib/strategy/interactive/MotionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asha/vrlib/strategy/interactive/MotionStrategy;


# direct methods
.method constructor <init>(Lcom/asha/vrlib/strategy/interactive/MotionStrategy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/asha/vrlib/strategy/interactive/MotionStrategy;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy$2;->this$0:Lcom/asha/vrlib/strategy/interactive/MotionStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 147
    iget-object v1, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy$2;->this$0:Lcom/asha/vrlib/strategy/interactive/MotionStrategy;

    invoke-static {v1}, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->access$000(Lcom/asha/vrlib/strategy/interactive/MotionStrategy;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy$2;->this$0:Lcom/asha/vrlib/strategy/interactive/MotionStrategy;

    invoke-static {v1}, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->access$100(Lcom/asha/vrlib/strategy/interactive/MotionStrategy;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy$2;->this$0:Lcom/asha/vrlib/strategy/interactive/MotionStrategy;

    invoke-static {v1}, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->access$200(Lcom/asha/vrlib/strategy/interactive/MotionStrategy;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy$2;->this$0:Lcom/asha/vrlib/strategy/interactive/MotionStrategy;

    invoke-virtual {v1}, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->getDirectorList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asha/vrlib/MD360Director;

    .line 151
    .local v0, "director":Lcom/asha/vrlib/MD360Director;
    iget-object v3, p0, Lcom/asha/vrlib/strategy/interactive/MotionStrategy$2;->this$0:Lcom/asha/vrlib/strategy/interactive/MotionStrategy;

    invoke-static {v3}, Lcom/asha/vrlib/strategy/interactive/MotionStrategy;->access$300(Lcom/asha/vrlib/strategy/interactive/MotionStrategy;)[F

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/asha/vrlib/MD360Director;->updateSensorMatrix([F)V

    goto :goto_1

    .line 153
    .end local v0    # "director":Lcom/asha/vrlib/MD360Director;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
