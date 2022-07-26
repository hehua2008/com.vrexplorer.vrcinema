.class Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$2;
.super Ljava/lang/Object;
.source "DataServiceMedium.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;


# direct methods
.method constructor <init>(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$2;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$2;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-static {p2}, Lcom/rockvr/moonplayer/dataservice/IDataService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/rockvr/moonplayer/dataservice/IDataService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->access$102(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;Lcom/rockvr/moonplayer/dataservice/IDataService;)Lcom/rockvr/moonplayer/dataservice/IDataService;

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$2;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-static {v1}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->access$100(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Lcom/rockvr/moonplayer/dataservice/IDataService;

    move-result-object v1

    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$2;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-static {v2}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->access$200(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Lcom/rockvr/moonplayer/dataservice/ICallback$Stub;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/rockvr/moonplayer/dataservice/IDataService;->registerCallback(Lcom/rockvr/moonplayer/dataservice/ICallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$2;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-static {v1}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->access$100(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Lcom/rockvr/moonplayer/dataservice/IDataService;

    move-result-object v1

    iget-object v2, p0, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium$2;->this$0:Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;

    invoke-static {v2}, Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;->access$200(Lcom/rockvr/moonplayer/dataservice/DataServiceMedium;)Lcom/rockvr/moonplayer/dataservice/ICallback$Stub;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/rockvr/moonplayer/dataservice/IDataService;->unregisterCallback(Lcom/rockvr/moonplayer/dataservice/ICallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
