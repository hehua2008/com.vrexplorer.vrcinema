.class public Lcom/google/unity/GoogleUnityActivity;
.super Landroid/app/Activity;
.source "GoogleUnityActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;
    }
.end annotation


# static fields
.field private static final RETURN_2D_ACTIVITY_EXTRA:Ljava/lang/String; = "RETURN_2D_ACTIVITY_EXTRA"

.field private static final RETURN_ACTIVITY_EXTRA:Ljava/lang/String; = "RETURN_ACTIVITY_EXTRA"

.field static final TAG:Ljava/lang/String;

.field protected static final VIBRATION_TIME_TILT_MS:I = 0xc8


# instance fields
.field protected mAndroidLifecycleListener:Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;

.field private mAndroidView:Landroid/view/View;

.field private mGvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field protected mReturn2DActivityName:Ljava/lang/String;

.field protected mReturnActivityName:Ljava/lang/String;

.field protected mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field protected mUnityQuit:Z

.field private shouldUseImmersiveMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "gvrunity"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 69
    const-class v0, Lcom/google/unity/GoogleUnityActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/unity/GoogleUnityActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityQuit:Z

    .line 86
    iput-object v1, p0, Lcom/google/unity/GoogleUnityActivity;->mReturnActivityName:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/google/unity/GoogleUnityActivity;->mReturn2DActivityName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/google/unity/GoogleUnityActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/google/unity/GoogleUnityActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/unity/GoogleUnityActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/GoogleUnityActivity;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/unity/GoogleUnityActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/unity/GoogleUnityActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/unity/GoogleUnityActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/unity/GoogleUnityActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/GoogleUnityActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidView:Landroid/view/View;

    return-object p1
.end method

.method private getClassNamed(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "aclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    .line 334
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 339
    :cond_0
    :goto_0
    return-object v0

    .line 335
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lcom/google/unity/GoogleUnityActivity;->TAG:Ljava/lang/String;

    const-string v3, "Could not resolve class"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setImmersiveMode()V
    .locals 2

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/google/unity/GoogleUnityActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 376
    return-void
.end method


# virtual methods
.method public attachLifecycleListener(Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidLifecycleListener:Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;

    .line 223
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 298
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 299
    invoke-virtual {p0, p1}, Lcom/google/unity/GoogleUnityActivity;->injectUnityEvent(Landroid/view/InputEvent;)Z

    move-result v0

    .line 301
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public finishActivityAndReturn(Z)V
    .locals 6
    .param p1, "backTo2D"    # Z

    .prologue
    .line 345
    const/4 v1, 0x0

    .line 347
    .local v1, "returnActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    .line 348
    iget-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mReturn2DActivityName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/unity/GoogleUnityActivity;->getClassNamed(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 350
    :cond_0
    if-nez v1, :cond_1

    .line 351
    iget-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mReturnActivityName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/unity/GoogleUnityActivity;->getClassNamed(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 354
    :cond_1
    if-eqz v1, :cond_2

    .line 355
    const-string v3, "vibrator"

    invoke-virtual {p0, v3}, Lcom/google/unity/GoogleUnityActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 356
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 357
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 359
    invoke-virtual {p0, v0}, Lcom/google/unity/GoogleUnityActivity;->startActivity(Landroid/content/Intent;)V

    .line 362
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "vibrator":Landroid/os/Vibrator;
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityQuit:Z

    .line 363
    iget-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v3}, Lcom/unity3d/player/UnityPlayer;->pause()V

    .line 364
    iget-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v3}, Lcom/unity3d/player/UnityPlayer;->quit()V

    .line 365
    invoke-virtual {p0}, Lcom/google/unity/GoogleUnityActivity;->finish()V

    .line 366
    return-void
.end method

.method public getAndroidViewLayer()Landroid/view/View;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidView:Landroid/view/View;

    return-object v0
.end method

.method public getGvrLayout()Lcom/google/vr/ndk/base/GvrLayout;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mGvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    return-object v0
.end method

.method public getUnityPlayer()Lcom/unity3d/player/UnityPlayer;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    return-object v0
.end method

.method public injectUnityEvent(Landroid/view/InputEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public launchIntent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "requestcode"    # I

    .prologue
    .line 208
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    if-eqz p3, :cond_1

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_1

    .line 212
    aget-object v3, p3, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "keyVal":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 214
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "i":I
    .end local v2    # "keyVal":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v1, p4}, Lcom/google/unity/GoogleUnityActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 219
    return-void
.end method

.method public logAndroidErrorMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/unity/GoogleUnityActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 227
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 228
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidLifecycleListener:Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidLifecycleListener:Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;->onActivityResult(IILandroid/content/Intent;)V

    .line 231
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 276
    iget-boolean v0, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityQuit:Z

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 280
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x400

    const/16 v6, 0x80

    const/4 v5, 0x1

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/google/unity/GoogleUnityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/google/unity/GoogleUnityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "RETURN_ACTIVITY_EXTRA"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mReturnActivityName:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lcom/google/unity/GoogleUnityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "RETURN_2D_ACTIVITY_EXTRA"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mReturn2DActivityName:Ljava/lang/String;

    .line 109
    :cond_0
    invoke-virtual {p0, v5}, Lcom/google/unity/GoogleUnityActivity;->requestWindowFeature(I)Z

    .line 110
    invoke-virtual {p0}, Lcom/google/unity/GoogleUnityActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    .line 112
    invoke-virtual {p0}, Lcom/google/unity/GoogleUnityActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setFormat(I)V

    .line 114
    new-instance v3, Lcom/unity3d/player/UnityPlayer;

    invoke-direct {v3, p0}, Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 115
    iget-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v3}, Lcom/unity3d/player/UnityPlayer;->getSettings()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "hide_status_bar"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/google/unity/GoogleUnityActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 120
    :cond_1
    iget-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    new-instance v4, Lcom/google/unity/GoogleUnityActivity$1;

    invoke-direct {v4, p0}, Lcom/google/unity/GoogleUnityActivity$1;-><init>(Lcom/google/unity/GoogleUnityActivity;)V

    invoke-virtual {v3, v4}, Lcom/unity3d/player/UnityPlayer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 126
    iget-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    new-instance v4, Lcom/google/unity/GoogleUnityActivity$2;

    invoke-direct {v4, p0}, Lcom/google/unity/GoogleUnityActivity$2;-><init>(Lcom/google/unity/GoogleUnityActivity;)V

    invoke-virtual {v3, v4}, Lcom/unity3d/player/UnityPlayer;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 132
    iget-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    new-instance v4, Lcom/google/unity/GoogleUnityActivity$3;

    invoke-direct {v4, p0}, Lcom/google/unity/GoogleUnityActivity$3;-><init>(Lcom/google/unity/GoogleUnityActivity;)V

    invoke-virtual {v3, v4}, Lcom/unity3d/player/UnityPlayer;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 146
    new-instance v3, Lcom/google/vr/ndk/base/GvrLayout;

    invoke-direct {v3, p0}, Lcom/google/vr/ndk/base/GvrLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mGvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    .line 147
    iget-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mGvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    iget-object v4, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v3, v4}, Lcom/google/vr/ndk/base/GvrLayout;->setPresentationView(Landroid/view/View;)V

    .line 148
    iget-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mGvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-virtual {p0, v3}, Lcom/google/unity/GoogleUnityActivity;->setContentView(Landroid/view/View;)V

    .line 151
    invoke-virtual {p0}, Lcom/google/unity/GoogleUnityActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->addFlags(I)V

    .line 152
    iget-object v3, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v3}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 154
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/unity/GoogleUnityActivity;->shouldUseImmersiveMode:Z

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/google/unity/GoogleUnityActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/unity/GoogleUnityActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 158
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 159
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "IMMERSIVE_MODE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/unity/GoogleUnityActivity;->shouldUseImmersiveMode:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/google/unity/GoogleUnityActivity;->TAG:Ljava/lang/String;

    const-string v5, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 160
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->quit()V

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityQuit:Z

    .line 238
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mGvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout;->shutdown()V

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 240
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lcom/google/unity/GoogleUnityActivity;->injectUnityEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 312
    invoke-virtual {p0, p2}, Lcom/google/unity/GoogleUnityActivity;->injectUnityEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 307
    invoke-virtual {p0, p2}, Lcom/google/unity/GoogleUnityActivity;->injectUnityEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 246
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mGvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout;->onPause()V

    .line 247
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidLifecycleListener:Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidLifecycleListener:Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;

    invoke-interface {v0}, Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;->onPause()V

    .line 250
    :cond_0
    iget-boolean v0, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityQuit:Z

    if-nez v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    .line 253
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 259
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mGvrLayout:Lcom/google/vr/ndk/base/GvrLayout;

    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrLayout;->onResume()V

    .line 260
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidLifecycleListener:Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mAndroidLifecycleListener:Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;

    invoke-interface {v0}, Lcom/google/unity/GoogleUnityActivity$AndroidLifecycleListener;->onResume()V

    .line 263
    :cond_0
    iget-boolean v0, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityQuit:Z

    if-nez v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    .line 266
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lcom/google/unity/GoogleUnityActivity;->injectUnityEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 285
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 286
    iget-boolean v0, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityQuit:Z

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/google/unity/GoogleUnityActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 289
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/google/unity/GoogleUnityActivity;->shouldUseImmersiveMode:Z

    if-eqz v0, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/google/unity/GoogleUnityActivity;->setImmersiveMode()V

    .line 292
    :cond_1
    return-void
.end method

.method public showAndroidViewLayer(I)V
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 168
    move-object v0, p0

    .line 169
    .local v0, "self":Landroid/app/Activity;
    new-instance v1, Lcom/google/unity/GoogleUnityActivity$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/unity/GoogleUnityActivity$4;-><init>(Lcom/google/unity/GoogleUnityActivity;Landroid/app/Activity;I)V

    invoke-virtual {p0, v1}, Lcom/google/unity/GoogleUnityActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method
