.class public final Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# static fields
.field private static final TAG:Ljava/lang/String; = "PMNCreator"


# instance fields
.field private final mClazz:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;->mClazz:Ljava/lang/Class;

    return-void
.end method

.method static writeToParcel(Ljava/lang/Class;Lcom/google/protobuf/nano/MessageNano;Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/protobuf/nano/MessageNano;
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    const-string v2, "PMNCreator"

    const-string v3, "Exception trying to create proto from parcel"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_2
    const-string v2, "PMNCreator"

    const-string v3, "Exception trying to create proto from parcel"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_3
    const-string v2, "PMNCreator"

    const-string v3, "Exception trying to create proto from parcel"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_4
    const-string v2, "PMNCreator"

    const-string v3, "Exception trying to create proto from parcel"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;->mClazz:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/nano/MessageNano;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;->newArray(I)[Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    return-object v0
.end method
