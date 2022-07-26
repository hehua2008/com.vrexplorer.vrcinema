.class public Lcom/google/vr/cardboard/StoragePermissionUtils;
.super Ljava/lang/Object;
.source "StoragePermissionUtils.java"


# static fields
.field private static final STORAGE_PERMISSION:Ljava/lang/String; = "android.permission.READ_EXTERNAL_STORAGE"

.field public static final STORAGE_PERMISSION_DUMMY_REQUEST_CODE:I = 0xef

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/google/vr/cardboard/StoragePermissionUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/cardboard/StoragePermissionUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestStoragePermission(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p1}, Lcom/google/vr/cardboard/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    sget-object v0, Lcom/google/vr/cardboard/StoragePermissionUtils;->TAG:Ljava/lang/String;

    const-string v1, "An Activity Context is required, aborting storage permission request."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/16 v2, 0xef

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method
