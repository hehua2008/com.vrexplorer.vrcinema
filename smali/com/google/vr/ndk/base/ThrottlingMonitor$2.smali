.class Lcom/google/vr/ndk/base/ThrottlingMonitor$2;
.super Ljava/lang/Object;
.source "ThrottlingMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/ndk/base/ThrottlingMonitor;->registerSetupCallback(Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;


# direct methods
.method constructor <init>(Lcom/google/vr/ndk/base/ThrottlingMonitor;Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;)V
    .locals 0

    .prologue
    .line 164
    iput-object p2, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$2;->val$callback:Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor$2;->val$callback:Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;

    invoke-interface {v0}, Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;->onInitialized()V

    .line 168
    return-void
.end method
