.class public Lorg/pgsqlite/CallbackContext;
.super Ljava/lang/Object;
.source "CallbackContext.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private errorCallback:Lcom/facebook/react/bridge/Callback;

.field private successCallback:Lcom/facebook/react/bridge/Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lorg/pgsqlite/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/pgsqlite/CallbackContext;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .param p1, "success"    # Lcom/facebook/react/bridge/Callback;
    .param p2, "error"    # Lcom/facebook/react/bridge/Callback;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/pgsqlite/CallbackContext;->successCallback:Lcom/facebook/react/bridge/Callback;

    .line 25
    iput-object p2, p0, Lorg/pgsqlite/CallbackContext;->errorCallback:Lcom/facebook/react/bridge/Callback;

    .line 26
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/pgsqlite/CallbackContext;->errorCallback:Lcom/facebook/react/bridge/Callback;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public error(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "message"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 80
    :try_start_0
    invoke-static {p1}, Lorg/pgsqlite/SQLitePluginConverter;->jsonToReact(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 81
    .local v1, "writableMap":Lcom/facebook/react/bridge/WritableMap;
    iget-object v2, p0, Lorg/pgsqlite/CallbackContext;->errorCallback:Lcom/facebook/react/bridge/Callback;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "writableMap":Lcom/facebook/react/bridge/WritableMap;
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "ex":Lorg/json/JSONException;
    iget-object v2, p0, Lorg/pgsqlite/CallbackContext;->errorCallback:Lcom/facebook/react/bridge/Callback;

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Internal error converting results:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public success()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lorg/pgsqlite/CallbackContext;->successCallback:Lcom/facebook/react/bridge/Callback;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Success"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/pgsqlite/CallbackContext;->successCallback:Lcom/facebook/react/bridge/Callback;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public success(Lorg/json/JSONArray;)V
    .locals 7
    .param p1, "message"    # Lorg/json/JSONArray;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 58
    :try_start_0
    invoke-static {p1}, Lorg/pgsqlite/SQLitePluginConverter;->jsonToReact(Lorg/json/JSONArray;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 59
    .local v1, "writableArray":Lcom/facebook/react/bridge/WritableArray;
    iget-object v2, p0, Lorg/pgsqlite/CallbackContext;->successCallback:Lcom/facebook/react/bridge/Callback;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "writableArray":Lcom/facebook/react/bridge/WritableArray;
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "ex":Lorg/json/JSONException;
    iget-object v2, p0, Lorg/pgsqlite/CallbackContext;->errorCallback:Lcom/facebook/react/bridge/Callback;

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Internal error converting results:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "message"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 35
    :try_start_0
    invoke-static {p1}, Lorg/pgsqlite/SQLitePluginConverter;->jsonToReact(Lorg/json/JSONObject;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 36
    .local v1, "writableMap":Lcom/facebook/react/bridge/WritableMap;
    iget-object v2, p0, Lorg/pgsqlite/CallbackContext;->successCallback:Lcom/facebook/react/bridge/Callback;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v1    # "writableMap":Lcom/facebook/react/bridge/WritableMap;
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "ex":Lorg/json/JSONException;
    iget-object v2, p0, Lorg/pgsqlite/CallbackContext;->errorCallback:Lcom/facebook/react/bridge/Callback;

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Internal error converting results:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    goto :goto_0
.end method
