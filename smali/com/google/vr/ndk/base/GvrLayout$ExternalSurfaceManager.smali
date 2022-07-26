.class public interface abstract Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceManager;
.super Ljava/lang/Object;
.source "GvrLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/GvrLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExternalSurfaceManager"
.end annotation


# virtual methods
.method public abstract createExternalSurface()I
.end method

.method public abstract createExternalSurface(Lcom/google/vr/ndk/base/GvrLayout$ExternalSurfaceListener;Landroid/os/Handler;)I
.end method

.method public abstract getSurface(I)Landroid/view/Surface;
.end method

.method public abstract getSurfaceCount()I
.end method

.method public abstract releaseExternalSurface(I)V
.end method
