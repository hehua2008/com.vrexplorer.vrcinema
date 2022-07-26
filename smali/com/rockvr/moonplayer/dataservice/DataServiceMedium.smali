.class public Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;
.super Ljava/lang/Object;
.source "DataServiceMedium.java"

# interfaces
.implements Lcom/rockvr/moonplayer/dataservice/IDataServiceMedium;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mICallback:Lcom/rockvr/moonplayer/dataservice/ICallback$Stub;

.field private mIDataService:Lcom/rockvr/moonplayer/dataservice/IDataService;

.field private mIDataServiceMediumCallback:Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;

.field private mIsBound:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$1;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$1;-><init>(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mICallback:Lcom/rockvr/moonplayer/dataservice/ICallback$Stub;

    .line 76
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$2;

    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$2;-><init>(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mConnection:Landroid/content/ServiceConnection;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mIDataServiceMediumCallback:Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Lcom/rockvr/moonplayer/dataservice/IDataService;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mIDataService:Lcom/rockvr/moonplayer/dataservice/IDataService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;Lcom/rockvr/moonplayer/dataservice/IDataService;)Lcom/rockvr/moonplayer/dataservice/IDataService;
    .locals 0
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;
    .param p1, "x1"    # Lcom/rockvr/moonplayer/dataservice/IDataService;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mIDataService:Lcom/rockvr/moonplayer/dataservice/IDataService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Lcom/rockvr/moonplayer/dataservice/ICallback$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mICallback:Lcom/rockvr/moonplayer/dataservice/ICallback$Stub;

    return-object v0
.end method

.method static synthetic access$300(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public bindService()V
    .locals 4

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mContext:Landroid/content/Context;

    const-class v2, Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .local v0, "service":Landroid/content/Intent;
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mIsBound:Z

    .line 180
    return-void
.end method

.method public getVideosByCallback()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$3;

    invoke-direct {v1, p0}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$3;-><init>(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    return-void
.end method

.method public isSearching()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mIDataService:Lcom/rockvr/moonplayer/dataservice/IDataService;

    if-nez v2, :cond_0

    .line 127
    :goto_0
    return v1

    .line 124
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mIDataService:Lcom/rockvr/moonplayer/dataservice/IDataService;

    invoke-interface {v2}, Lcom/rockvr/moonplayer/dataservice/IDataService;->isSearching()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataServiceMediumCallback(Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;)V
    .locals 0
    .param p1, "IDataServiceMediumCallback"    # Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mIDataServiceMediumCallback:Lcom/rockvr/moonplayer/dataservice/IDataServiceMediumCallback;

    .line 25
    return-void
.end method

.method public startRefresh()V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$4;

    invoke-direct {v1, p0}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$4;-><init>(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    return-void
.end method

.method public startService()V
    .locals 3

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mContext:Landroid/content/Context;

    const-class v2, Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v0, "service":Landroid/content/Intent;
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 168
    return-void
.end method

.method public stopRefresh()V
    .locals 2

    .prologue
    .line 152
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mIDataService:Lcom/rockvr/moonplayer/dataservice/IDataService;

    if-nez v1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 156
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mIDataService:Lcom/rockvr/moonplayer/dataservice/IDataService;

    invoke-interface {v1}, Lcom/rockvr/moonplayer/dataservice/IDataService;->stopRefreshVideos()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopService()V
    .locals 3

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mContext:Landroid/content/Context;

    const-class v2, Lcom/rockvr/moonplayer/dataservice/DataService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v0, "service":Landroid/content/Intent;
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 174
    return-void
.end method

.method public unbindService()V
    .locals 2

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mIsBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->mIsBound:Z

    .line 188
    :cond_0
    return-void
.end method
