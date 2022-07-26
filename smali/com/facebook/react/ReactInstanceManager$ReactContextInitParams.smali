.class Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;
.super Ljava/lang/Object;
.source "ReactInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/ReactInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReactContextInitParams"
.end annotation


# instance fields
.field private final mJsBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

.field private final mJsExecutorFactory:Lcom/facebook/react/bridge/JavaScriptExecutor$Factory;

.field final synthetic this$0:Lcom/facebook/react/ReactInstanceManager;


# direct methods
.method public constructor <init>(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/bridge/JavaScriptExecutor$Factory;Lcom/facebook/react/bridge/JSBundleLoader;)V
    .locals 1
    .param p2, "jsExecutorFactory"    # Lcom/facebook/react/bridge/JavaScriptExecutor$Factory;
    .param p3, "jsBundleLoader"    # Lcom/facebook/react/bridge/JSBundleLoader;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-static {p2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/JavaScriptExecutor$Factory;

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;->mJsExecutorFactory:Lcom/facebook/react/bridge/JavaScriptExecutor$Factory;

    .line 188
    invoke-static {p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/JSBundleLoader;

    iput-object v0, p0, Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;->mJsBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    .line 189
    return-void
.end method


# virtual methods
.method public getJsBundleLoader()Lcom/facebook/react/bridge/JSBundleLoader;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;->mJsBundleLoader:Lcom/facebook/react/bridge/JSBundleLoader;

    return-object v0
.end method

.method public getJsExecutorFactory()Lcom/facebook/react/bridge/JavaScriptExecutor$Factory;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$ReactContextInitParams;->mJsExecutorFactory:Lcom/facebook/react/bridge/JavaScriptExecutor$Factory;

    return-object v0
.end method
