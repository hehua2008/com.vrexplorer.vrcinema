.class public interface abstract Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader;
.super Ljava/lang/Object;
.source "IVrNativeLibraryLoader.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/library/api/IVrNativeLibraryLoader$Stub;
    }
.end annotation


# virtual methods
.method public abstract closeNativeGvrLibrary(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract loadNativeGvrLibrary(III)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
