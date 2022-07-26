.class public Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNWebViewModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "RNWebViewAndroidModule"
    .annotation build Lcom/facebook/react/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final REQUEST_SELECT_FILE:I = 0x3e9

.field private static final REQUEST_SELECT_FILE_LEGACY:I = 0x3ea


# instance fields
.field private aPackage:Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadMessageArr:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 34
    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 35
    iput-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessageArr:Landroid/webkit/ValueCallback;

    .line 40
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "RNWebViewAndroidModule"

    return-object v0
.end method

.method public getPackage()Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->aPackage:Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "Deprecated"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 153
    const/16 v2, 0x3ea

    if-ne p1, v2, :cond_4

    .line 154
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-nez v2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    if-eqz p3, :cond_2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_3

    :cond_2
    move-object v0, v1

    .line 158
    .local v0, "result":Landroid/net/Uri;
    :goto_1
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 159
    iput-object v1, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 156
    .end local v0    # "result":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 160
    :cond_4
    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 161
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessageArr:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessageArr:Landroid/webkit/ValueCallback;

    invoke-static {p2, p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 164
    iput-object v1, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessageArr:Landroid/webkit/ValueCallback;

    goto :goto_0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 169
    invoke-virtual {p0, p2, p3, p4}, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->onActivityResult(IILandroid/content/Intent;)V

    .line 170
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    return-void
.end method

.method public setPackage(Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;)V
    .locals 0
    .param p1, "aPackage"    # Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->aPackage:Lcom/rockvr/moonplayer_gvr/webview/RNWebViewPackage;

    .line 50
    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 62
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule$1;

    invoke-direct {v3, p0, p3}, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule$1;-><init>(Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;Landroid/webkit/JsResult;)V

    .line 64
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 72
    .local v0, "ad":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 73
    return-void
.end method

.method public startFileChooserIntent(Landroid/webkit/ValueCallback;Landroid/content/Intent;)Z
    .locals 6
    .param p2, "intentChoose"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 120
    const-string v3, "RNWebViewAndroidModule"

    const-string v4, "Open new file dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessageArr:Landroid/webkit/ValueCallback;

    if-eqz v3, :cond_0

    .line 123
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessageArr:Landroid/webkit/ValueCallback;

    invoke-interface {v3, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 124
    iput-object v5, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessageArr:Landroid/webkit/ValueCallback;

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessageArr:Landroid/webkit/ValueCallback;

    .line 129
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 130
    .local v0, "currentActivity":Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 131
    const-string v3, "RNWebViewAndroidModule"

    const-string v4, "No context available"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    :goto_0
    return v2

    .line 136
    :cond_2
    const/16 v3, 0x3e9

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p2, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    const/4 v2, 0x1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "RNWebViewAndroidModule"

    const-string v4, "No context available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 141
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessageArr:Landroid/webkit/ValueCallback;

    if-eqz v3, :cond_1

    .line 142
    iget-object v3, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessageArr:Landroid/webkit/ValueCallback;

    invoke-interface {v3, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 143
    iput-object v5, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessageArr:Landroid/webkit/ValueCallback;

    goto :goto_0
.end method

.method public startFileChooserIntent(Landroid/webkit/ValueCallback;Ljava/lang/String;)Z
    .locals 7
    .param p2, "acceptType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 78
    const-string v4, "RNWebViewAndroidModule"

    const-string v5, "Open old file dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v4, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v4, :cond_0

    .line 81
    iget-object v4, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v4, v6}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 82
    iput-object v6, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 87
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    :cond_1
    const-string p2, "*/*"

    .line 91
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, "intentChoose":Landroid/content/Intent;
    const-string v4, "android.intent.category.OPENABLE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0}, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 96
    .local v0, "currentActivity":Landroid/app/Activity;
    if-nez v0, :cond_4

    .line 97
    const-string v4, "RNWebViewAndroidModule"

    const-string v5, "No context available"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_3
    :goto_0
    return v3

    .line 102
    :cond_4
    const/16 v4, 0x3ea

    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v2, v4, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    const/4 v3, 0x1

    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "RNWebViewAndroidModule"

    const-string v5, "No context available"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 107
    iget-object v4, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v4, :cond_3

    .line 108
    iget-object v4, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v4, v6}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 109
    iput-object v6, p0, Lcom/rockvr/moonplayer_gvr/webview/RNWebViewModule;->mUploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_0
.end method
