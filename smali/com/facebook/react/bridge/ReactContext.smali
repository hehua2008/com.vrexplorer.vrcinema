.class public Lcom/facebook/react/bridge/ReactContext;
.super Landroid/content/ContextWrapper;
.source "ReactContext.java"


# static fields
.field private static final EARLY_JS_ACCESS_EXCEPTION_MESSAGE:Ljava/lang/String; = "Tried to access a JS module before the React instance was fully set up. Calls to ReactContext#getJSModule should only happen once initialize() has been called on your native module."


# instance fields
.field private final mActivityEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/facebook/react/bridge/ActivityEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCatalystInstance:Lcom/facebook/react/bridge/CatalystInstance;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mJSMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mLifecycleEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/facebook/react/bridge/LifecycleEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLifecycleState:Lcom/facebook/react/common/LifecycleState;

.field private mNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNativeModulesMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mUiBackgroundMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mUiMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mLifecycleEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mActivityEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 45
    sget-object v0, Lcom/facebook/react/common/LifecycleState;->BEFORE_CREATE:Lcom/facebook/react/common/LifecycleState;

    iput-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    .line 58
    return-void
.end method


# virtual methods
.method public addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/bridge/ActivityEventListener;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mActivityEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/facebook/react/bridge/LifecycleEventListener;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mLifecycleEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->hasActiveCatalystInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/facebook/react/bridge/ReactContext$2;->$SwitchMap$com$facebook$react$common$LifecycleState:[I

    iget-object v1, p0, Lcom/facebook/react/bridge/ReactContext;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    invoke-virtual {v1}, Lcom/facebook/react/common/LifecycleState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 161
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unhandled lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :pswitch_0
    new-instance v0, Lcom/facebook/react/bridge/ReactContext$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/bridge/ReactContext$1;-><init>(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/bridge/LifecycleEventListener;)V

    invoke-virtual {p0, v0}, Lcom/facebook/react/bridge/ReactContext;->runOnUiQueueThread(Ljava/lang/Runnable;)V

    .line 164
    :cond_0
    :pswitch_1
    return-void

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public assertOnJSQueueThread()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mJSMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-interface {v0}, Lcom/facebook/react/bridge/queue/MessageQueueThread;->assertIsOnThread()V

    .line 301
    return-void
.end method

.method public assertOnNativeModulesQueueThread()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mNativeModulesMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-interface {v0}, Lcom/facebook/react/bridge/queue/MessageQueueThread;->assertIsOnThread()V

    .line 285
    return-void
.end method

.method public assertOnNativeModulesQueueThread(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mNativeModulesMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/queue/MessageQueueThread;->assertIsOnThread(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public assertOnUIBackgroundOrNativeModulesThread()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mUiBackgroundMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    if-nez v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->assertOnNativeModulesQueueThread()V

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->assertOnUiBackgroundQueueThread()V

    goto :goto_0
.end method

.method public assertOnUiBackgroundQueueThread()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mUiBackgroundMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-interface {v0}, Lcom/facebook/react/bridge/queue/MessageQueueThread;->assertIsOnThread()V

    .line 277
    return-void
.end method

.method public assertOnUiQueueThread()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mUiMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-interface {v0}, Lcom/facebook/react/bridge/queue/MessageQueueThread;->assertIsOnThread()V

    .line 265
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 243
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 245
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mCatalystInstance:Lcom/facebook/react/bridge/CatalystInstance;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mCatalystInstance:Lcom/facebook/react/bridge/CatalystInstance;

    invoke-interface {v0}, Lcom/facebook/react/bridge/CatalystInstance;->destroy()V

    .line 248
    :cond_0
    return-void
.end method

.method public getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mCatalystInstance:Lcom/facebook/react/bridge/CatalystInstance;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/CatalystInstance;

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 369
    const/4 v0, 0x0

    .line 371
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/react/bridge/JavaScriptModule;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "jsInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mCatalystInstance:Lcom/facebook/react/bridge/CatalystInstance;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Tried to access a JS module before the React instance was fully set up. Calls to ReactContext#getJSModule should only happen once initialize() has been called on your native module."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mCatalystInstance:Lcom/facebook/react/bridge/CatalystInstance;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/CatalystInstance;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    return-object v0
.end method

.method public getJavaScriptContext()J
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mCatalystInstance:Lcom/facebook/react/bridge/CatalystInstance;

    invoke-interface {v0}, Lcom/facebook/react/bridge/CatalystInstance;->getJavaScriptContext()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLifecycleState()Lcom/facebook/react/common/LifecycleState;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    return-object v0
.end method

.method public getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "nativeModuleInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mCatalystInstance:Lcom/facebook/react/bridge/CatalystInstance;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Trying to call native module before CatalystInstance has been set!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mCatalystInstance:Lcom/facebook/react/bridge/CatalystInstance;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/CatalystInstance;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mInflater:Landroid/view/LayoutInflater;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mInflater:Landroid/view/LayoutInflater;

    .line 97
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public handleException(Ljava/lang/RuntimeException;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/RuntimeException;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mCatalystInstance:Lcom/facebook/react/bridge/CatalystInstance;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mCatalystInstance:Lcom/facebook/react/bridge/CatalystInstance;

    .line 338
    invoke-interface {v0}, Lcom/facebook/react/bridge/CatalystInstance;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;->handleException(Ljava/lang/Exception;)V

    .line 344
    return-void

    .line 342
    :cond_0
    throw p1
.end method

.method public hasActiveCatalystInstance()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mCatalystInstance:Lcom/facebook/react/bridge/CatalystInstance;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mCatalystInstance:Lcom/facebook/react/bridge/CatalystInstance;

    invoke-interface {v0}, Lcom/facebook/react/bridge/CatalystInstance;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCurrentActivity()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNativeModule(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "nativeModuleInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mCatalystInstance:Lcom/facebook/react/bridge/CatalystInstance;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Trying to call native module before CatalystInstance has been set!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mCatalystInstance:Lcom/facebook/react/bridge/CatalystInstance;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/CatalystInstance;->hasNativeModule(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasUIBackgroundRunnableThread()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mUiBackgroundMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initializeWithInstance(Lcom/facebook/react/bridge/CatalystInstance;)V
    .locals 3
    .param p1, "catalystInstance"    # Lcom/facebook/react/bridge/CatalystInstance;

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "CatalystInstance cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/bridge/ReactContext;->mCatalystInstance:Lcom/facebook/react/bridge/CatalystInstance;

    if-eqz v1, :cond_1

    .line 68
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ReactContext has been already initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_1
    iput-object p1, p0, Lcom/facebook/react/bridge/ReactContext;->mCatalystInstance:Lcom/facebook/react/bridge/CatalystInstance;

    .line 73
    invoke-interface {p1}, Lcom/facebook/react/bridge/CatalystInstance;->getReactQueueConfiguration()Lcom/facebook/react/bridge/queue/ReactQueueConfiguration;

    move-result-object v0

    .line 74
    .local v0, "queueConfig":Lcom/facebook/react/bridge/queue/ReactQueueConfiguration;
    invoke-interface {v0}, Lcom/facebook/react/bridge/queue/ReactQueueConfiguration;->getUIQueueThread()Lcom/facebook/react/bridge/queue/MessageQueueThread;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/bridge/ReactContext;->mUiMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    .line 75
    invoke-interface {v0}, Lcom/facebook/react/bridge/queue/ReactQueueConfiguration;->getUIBackgroundQueueThread()Lcom/facebook/react/bridge/queue/MessageQueueThread;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/bridge/ReactContext;->mUiBackgroundMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    .line 76
    invoke-interface {v0}, Lcom/facebook/react/bridge/queue/ReactQueueConfiguration;->getNativeModulesQueueThread()Lcom/facebook/react/bridge/queue/MessageQueueThread;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/bridge/ReactContext;->mNativeModulesMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    .line 77
    invoke-interface {v0}, Lcom/facebook/react/bridge/queue/ReactQueueConfiguration;->getJSQueueThread()Lcom/facebook/react/bridge/queue/MessageQueueThread;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/bridge/ReactContext;->mJSMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    .line 78
    return-void
.end method

.method public isOnJSQueueThread()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mJSMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-interface {v0}, Lcom/facebook/react/bridge/queue/MessageQueueThread;->isOnThread()Z

    move-result v0

    return v0
.end method

.method public isOnNativeModulesQueueThread()Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mNativeModulesMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-interface {v0}, Lcom/facebook/react/bridge/queue/MessageQueueThread;->isOnThread()Z

    move-result v0

    return v0
.end method

.method public isOnUiQueueThread()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mUiMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-interface {v0}, Lcom/facebook/react/bridge/queue/MessageQueueThread;->isOnThread()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 254
    iget-object v2, p0, Lcom/facebook/react/bridge/ReactContext;->mActivityEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ActivityEventListener;

    .line 256
    .local v1, "listener":Lcom/facebook/react/bridge/ActivityEventListener;
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/facebook/react/bridge/ActivityEventListener;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0}, Lcom/facebook/react/bridge/ReactContext;->handleException(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 261
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "listener":Lcom/facebook/react/bridge/ActivityEventListener;
    :cond_0
    return-void
.end method

.method public onHostDestroy()V
    .locals 4

    .prologue
    .line 227
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 228
    sget-object v2, Lcom/facebook/react/common/LifecycleState;->BEFORE_CREATE:Lcom/facebook/react/common/LifecycleState;

    iput-object v2, p0, Lcom/facebook/react/bridge/ReactContext;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    .line 229
    iget-object v2, p0, Lcom/facebook/react/bridge/ReactContext;->mLifecycleEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/LifecycleEventListener;

    .line 231
    .local v1, "listener":Lcom/facebook/react/bridge/LifecycleEventListener;
    :try_start_0
    invoke-interface {v1}, Lcom/facebook/react/bridge/LifecycleEventListener;->onHostDestroy()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0}, Lcom/facebook/react/bridge/ReactContext;->handleException(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 236
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "listener":Lcom/facebook/react/bridge/LifecycleEventListener;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/react/bridge/ReactContext;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    .line 237
    return-void
.end method

.method public onHostPause()V
    .locals 4

    .prologue
    .line 211
    sget-object v2, Lcom/facebook/react/common/LifecycleState;->BEFORE_RESUME:Lcom/facebook/react/common/LifecycleState;

    iput-object v2, p0, Lcom/facebook/react/bridge/ReactContext;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    .line 212
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->ON_HOST_PAUSE_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 213
    iget-object v2, p0, Lcom/facebook/react/bridge/ReactContext;->mLifecycleEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/LifecycleEventListener;

    .line 215
    .local v1, "listener":Lcom/facebook/react/bridge/LifecycleEventListener;
    :try_start_0
    invoke-interface {v1}, Lcom/facebook/react/bridge/LifecycleEventListener;->onHostPause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0}, Lcom/facebook/react/bridge/ReactContext;->handleException(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 220
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "listener":Lcom/facebook/react/bridge/LifecycleEventListener;
    :cond_0
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->ON_HOST_PAUSE_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 221
    return-void
.end method

.method public onHostResume(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 182
    sget-object v2, Lcom/facebook/react/common/LifecycleState;->RESUMED:Lcom/facebook/react/common/LifecycleState;

    iput-object v2, p0, Lcom/facebook/react/bridge/ReactContext;->mLifecycleState:Lcom/facebook/react/common/LifecycleState;

    .line 183
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/facebook/react/bridge/ReactContext;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    .line 184
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->ON_HOST_RESUME_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 185
    iget-object v2, p0, Lcom/facebook/react/bridge/ReactContext;->mLifecycleEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/LifecycleEventListener;

    .line 187
    .local v1, "listener":Lcom/facebook/react/bridge/LifecycleEventListener;
    :try_start_0
    invoke-interface {v1}, Lcom/facebook/react/bridge/LifecycleEventListener;->onHostResume()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0}, Lcom/facebook/react/bridge/ReactContext;->handleException(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 192
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "listener":Lcom/facebook/react/bridge/LifecycleEventListener;
    :cond_0
    sget-object v2, Lcom/facebook/react/bridge/ReactMarkerConstants;->ON_HOST_RESUME_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v2}, Lcom/facebook/react/bridge/ReactMarker;->logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)V

    .line 193
    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 196
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 197
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/facebook/react/bridge/ReactContext;->mCurrentActivity:Ljava/lang/ref/WeakReference;

    .line 198
    iget-object v2, p0, Lcom/facebook/react/bridge/ReactContext;->mActivityEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ActivityEventListener;

    .line 200
    .local v1, "listener":Lcom/facebook/react/bridge/ActivityEventListener;
    :try_start_0
    invoke-interface {v1, p2}, Lcom/facebook/react/bridge/ActivityEventListener;->onNewIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0}, Lcom/facebook/react/bridge/ReactContext;->handleException(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 205
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "listener":Lcom/facebook/react/bridge/ActivityEventListener;
    :cond_0
    return-void
.end method

.method public removeActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/bridge/ActivityEventListener;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mActivityEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/react/bridge/LifecycleEventListener;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mLifecycleEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public runOnJSQueueThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mJSMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/queue/MessageQueueThread;->runOnQueue(Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method

.method public runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mNativeModulesMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/queue/MessageQueueThread;->runOnQueue(Ljava/lang/Runnable;)V

    .line 297
    return-void
.end method

.method public runOnUiBackgroundQueueThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mUiBackgroundMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/queue/MessageQueueThread;->runOnQueue(Ljava/lang/Runnable;)V

    .line 281
    return-void
.end method

.method public runOnUiQueueThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mUiMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/queue/MessageQueueThread;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/queue/MessageQueueThread;->runOnQueue(Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method

.method public runUIBackgroundRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/facebook/react/bridge/ReactContext;->mUiBackgroundMessageQueueThread:Lcom/facebook/react/bridge/queue/MessageQueueThread;

    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p0, p1}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/bridge/ReactContext;->runOnUiBackgroundQueueThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setNativeModuleCallExceptionHandler(Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;)V
    .locals 0
    .param p1, "nativeModuleCallExceptionHandler"    # Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/react/bridge/ReactContext;->mNativeModuleCallExceptionHandler:Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;

    .line 83
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "code"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 357
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 359
    const/4 v1, 0x1

    return v1
.end method
