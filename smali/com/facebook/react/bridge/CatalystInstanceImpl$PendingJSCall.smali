.class Lcom/facebook/react/bridge/CatalystInstanceImpl$PendingJSCall;
.super Ljava/lang/Object;
.source "CatalystInstanceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/bridge/CatalystInstanceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingJSCall"
.end annotation


# instance fields
.field public mArguments:Lcom/facebook/react/bridge/NativeArray;

.field public mMethod:Ljava/lang/String;

.field public mModule:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/NativeArray;)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arguments"    # Lcom/facebook/react/bridge/NativeArray;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl$PendingJSCall;->mModule:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl$PendingJSCall;->mMethod:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/facebook/react/bridge/CatalystInstanceImpl$PendingJSCall;->mArguments:Lcom/facebook/react/bridge/NativeArray;

    .line 62
    return-void
.end method
