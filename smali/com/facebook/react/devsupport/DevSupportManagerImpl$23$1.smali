.class Lcom/facebook/react/devsupport/DevSupportManagerImpl$23$1;
.super Ljava/lang/Object;
.source "DevSupportManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/devsupport/DevSupportManagerImpl$23;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/react/devsupport/DevSupportManagerImpl$23;


# direct methods
.method constructor <init>(Lcom/facebook/react/devsupport/DevSupportManagerImpl$23;)V
    .locals 0
    .param p1, "this$1"    # Lcom/facebook/react/devsupport/DevSupportManagerImpl$23;

    .prologue
    .line 844
    iput-object p1, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$23$1;->this$1:Lcom/facebook/react/devsupport/DevSupportManagerImpl$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$23$1;->this$1:Lcom/facebook/react/devsupport/DevSupportManagerImpl$23;

    iget-object v0, v0, Lcom/facebook/react/devsupport/DevSupportManagerImpl$23;->this$0:Lcom/facebook/react/devsupport/DevSupportManagerImpl;

    invoke-static {v0}, Lcom/facebook/react/devsupport/DevSupportManagerImpl;->access$700(Lcom/facebook/react/devsupport/DevSupportManagerImpl;)Lcom/facebook/react/devsupport/ReactInstanceDevCommandsHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/devsupport/ReactInstanceDevCommandsHandler;->onJSBundleLoadedFromServer()V

    .line 848
    return-void
.end method
