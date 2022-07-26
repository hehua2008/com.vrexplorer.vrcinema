.class public interface abstract Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService;
.super Ljava/lang/Object;
.source "IVrCoreLoggingService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/logging/api/IVrCoreLoggingService$Stub;
    }
.end annotation


# virtual methods
.method public abstract log(Lcom/google/vr/vrcore/logging/api/VREventParcelable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract logBatched([Lcom/google/vr/vrcore/logging/api/VREventParcelable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
