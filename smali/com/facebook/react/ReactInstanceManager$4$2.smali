.class Lcom/facebook/react/ReactInstanceManager$4$2;
.super Ljava/lang/Object;
.source "ReactInstanceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/ReactInstanceManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/react/ReactInstanceManager$4;

.field final synthetic val$maybeRecreateReactContextRunnable:Ljava/lang/Runnable;

.field final synthetic val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method constructor <init>(Lcom/facebook/react/ReactInstanceManager$4;Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/facebook/react/ReactInstanceManager$4;

    .prologue
    .line 819
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManager$4$2;->this$1:Lcom/facebook/react/ReactInstanceManager$4;

    iput-object p2, p0, Lcom/facebook/react/ReactInstanceManager$4$2;->val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iput-object p3, p0, Lcom/facebook/react/ReactInstanceManager$4$2;->val$maybeRecreateReactContextRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 822
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager$4$2;->this$1:Lcom/facebook/react/ReactInstanceManager$4;

    iget-object v1, v1, Lcom/facebook/react/ReactInstanceManager$4;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v1}, Lcom/facebook/react/ReactInstanceManager;->access$700(Lcom/facebook/react/ReactInstanceManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 823
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager$4$2;->this$1:Lcom/facebook/react/ReactInstanceManager$4;

    iget-object v1, v1, Lcom/facebook/react/ReactInstanceManager$4;->this$0:Lcom/facebook/react/ReactInstanceManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/react/ReactInstanceManager;->access$802(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 827
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager$4$2;->this$1:Lcom/facebook/react/ReactInstanceManager$4;

    iget-object v1, v1, Lcom/facebook/react/ReactInstanceManager$4;->this$0:Lcom/facebook/react/ReactInstanceManager;

    iget-object v2, p0, Lcom/facebook/react/ReactInstanceManager$4$2;->val$reactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v1, v2}, Lcom/facebook/react/ReactInstanceManager;->access$1100(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 829
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager$4$2;->this$1:Lcom/facebook/react/ReactInstanceManager$4;

    iget-object v1, v1, Lcom/facebook/react/ReactInstanceManager$4;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v1}, Lcom/facebook/react/ReactInstanceManager;->access$700(Lcom/facebook/react/ReactInstanceManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 830
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager$4$2;->val$maybeRecreateReactContextRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :cond_1
    :goto_0
    return-void

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/facebook/react/ReactInstanceManager$4$2;->this$1:Lcom/facebook/react/ReactInstanceManager$4;

    iget-object v1, v1, Lcom/facebook/react/ReactInstanceManager$4;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v1}, Lcom/facebook/react/ReactInstanceManager;->access$400(Lcom/facebook/react/ReactInstanceManager;)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
