.class public Lcom/tradle/react/UdpErrorUtil;
.super Ljava/lang/Object;
.source "UdpErrorUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getError(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 24
    .local v0, "errorMap":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "message"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    if-eqz p0, :cond_0

    .line 26
    const-string v1, "key"

    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    return-object v0
.end method
