.class public interface abstract Lcom/google/vr/vrcore/controller/api/IControllerService;
.super Ljava/lang/Object;
.source "IControllerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract initialize(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerListener(ILjava/lang/String;Lcom/google/vr/vrcore/controller/api/IControllerListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterListener(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
