.class public interface abstract Lcom/google/vr/vrcore/library/api/IVrCreator;
.super Ljava/lang/Object;
.source "IVrCreator.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/library/api/IVrCreator$Stub;
    }
.end annotation


# virtual methods
.method public abstract DEPRECATED_newNativeLibraryLoader(Lcom/google/vr/vrcore/library/api/IObjectWrapper;)Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract newNativeLibraryLoader(Lcom/google/vr/vrcore/library/api/IObjectWrapper;Lcom/google/vr/vrcore/library/api/IObjectWrapper;)Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
