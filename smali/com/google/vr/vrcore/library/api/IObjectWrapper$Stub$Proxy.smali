.class Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub$Proxy;
.super Ljava/lang/Object;
.source "IObjectWrapper.java"

# interfaces
.implements Lcom/google/vr/vrcore/library/api/IObjectWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 61
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/vr/vrcore/library/api/IObjectWrapper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "com.google.vr.vrcore.library.api.IObjectWrapper"

    return-object v0
.end method
