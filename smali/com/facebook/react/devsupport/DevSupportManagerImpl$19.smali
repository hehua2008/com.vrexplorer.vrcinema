.class Lcom/facebook/react/devsupport/DevSupportManagerImpl$19;
.super Ljava/lang/Object;
.source "DevSupportManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevSupportManagerImpl;->onPokeSamplingProfilerCommand(Lcom/facebook/react/packagerconnection/Responder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;

.field final synthetic val$responder:Lcom/facebook/react/packagerconnection/Responder;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl;Lcom/facebook/react/packagerconnection/Responder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$19;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    iput-object p2, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$19;->val$responder:Lcom/facebook/react/packagerconnection/Responder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 715
    iget-object v4, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$19;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    invoke-static {v4}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->access$1100(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v4

    if-nez v4, :cond_0

    .line 716
    iget-object v4, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$19;->val$responder:Lcom/facebook/react/packagerconnection/Responder;

    const-string v5, "JSCContext is missing, unable to profile"

    invoke-interface {v4, v5}, Lcom/facebook/react/packagerconnection/Responder;->error(Ljava/lang/Object;)V

    .line 727
    :goto_0
    return-void

    .line 720
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$19;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    invoke-static {v4}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->access$1100(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/react/bridge/ReactContext;->getJavaScriptContext()J

    move-result-wide v2

    .line 721
    .local v2, "jsContext":J
    const-string v4, "com.facebook.react.packagerconnection.SamplingProfilerPackagerMethod"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 722
    .local v0, "clazz":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/packagerconnection/RequestHandler;

    .line 723
    .local v1, "handler":Lcom/facebook/react/packagerconnection/RequestHandler;
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$19;->val$responder:Lcom/facebook/react/packagerconnection/Responder;

    invoke-interface {v1, v4, v5}, Lcom/facebook/react/packagerconnection/RequestHandler;->onRequest(Ljava/lang/Object;Lcom/facebook/react/packagerconnection/Responder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 724
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "handler":Lcom/facebook/react/packagerconnection/RequestHandler;
    .end local v2    # "jsContext":J
    :catch_0
    move-exception v4

    goto :goto_0
.end method
