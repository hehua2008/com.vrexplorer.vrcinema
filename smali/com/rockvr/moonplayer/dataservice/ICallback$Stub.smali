.class public abstract Lcom/rockvr/moonplayer/dataservice/ICallback$Stub;
.super Landroid/os/Binder;
.source "ICallback.java"

# interfaces
.implements Lcom/rockvr/moonplayer/dataservice/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockvr/moonplayer/dataservice/ICallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockvr/moonplayer/dataservice/ICallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.rockvr.moonplayer.dataservice.ICallback"

.field static final TRANSACTION_onGetVideosCompleted:I = 0x4

.field static final TRANSACTION_onNotExistVideoMedia:I = 0x5

.field static final TRANSACTION_onPublishVideoMedia:I = 0x2

.field static final TRANSACTION_onSearchCompleted:I = 0x3

.field static final TRANSACTION_onUpdateThumbnail:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.rockvr.moonplayer.dataservice.ICallback"

    invoke-virtual {p0, p0, v0}, Lcom/rockvr/moonplayer/dataservice/ICallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/rockvr/moonplayer/dataservice/ICallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.rockvr.moonplayer.dataservice.ICallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/rockvr/moonplayer/dataservice/ICallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/rockvr/moonplayer/dataservice/ICallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/rockvr/moonplayer/dataservice/ICallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/rockvr/moonplayer/dataservice/ICallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "com.rockvr.moonplayer.dataservice.ICallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.rockvr.moonplayer.dataservice.ICallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    sget-object v3, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .line 55
    .local v0, "_arg0":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer/dataservice/ICallback$Stub;->onUpdateThumbnail(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 53
    .end local v0    # "_arg0":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    goto :goto_1

    .line 61
    .end local v0    # "_arg0":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    :sswitch_2
    const-string v3, "com.rockvr.moonplayer.dataservice.ICallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    sget-object v3, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .line 69
    .restart local v0    # "_arg0":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer/dataservice/ICallback$Stub;->onPublishVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    goto :goto_2

    .line 75
    .end local v0    # "_arg0":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    :sswitch_3
    const-string v3, "com.rockvr.moonplayer.dataservice.ICallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/rockvr/moonplayer/dataservice/ICallback$Stub;->onSearchCompleted()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 82
    :sswitch_4
    const-string v3, "com.rockvr.moonplayer.dataservice.ICallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    sget-object v3, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 85
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;>;"
    invoke-virtual {p0, v1}, Lcom/rockvr/moonplayer/dataservice/ICallback$Stub;->onGetVideosCompleted(Ljava/util/List;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 91
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;>;"
    :sswitch_5
    const-string v3, "com.rockvr.moonplayer.dataservice.ICallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    sget-object v3, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;

    .line 99
    .restart local v0    # "_arg0":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/rockvr/moonplayer/dataservice/ICallback$Stub;->onNotExistVideoMedia(Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 97
    .end local v0    # "_arg0":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/rockvr/moonplayer/dataservice/model/LocalVideoMedia;
    goto :goto_3

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
