.class Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;
.super Ljava/lang/Object;
.source "GvrSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/GvrSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EglHelper"
.end annotation


# static fields
.field public static final EGL_FRONT_BUFFER_AUTO_REFRESH:I = 0x314c


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGvrSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/vr/ndk/base/GvrSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/vr/ndk/base/GvrSurfaceView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mGvrSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 993
    return-void
.end method

.method private destroySurfaceImp()V
    .locals 5

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 1182
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1184
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mGvrSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/ndk/base/GvrSurfaceView;

    .line 1185
    if-eqz v0, :cond_0

    .line 1186
    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$600(Lcom/google/vr/ndk/base/GvrSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1188
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1190
    :cond_1
    return-void
.end method

.method public static formatEglError(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1227
    invoke-static {p1}, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getErrorString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1237
    packed-switch p0, :pswitch_data_0

    .line 1269
    invoke-static {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1239
    :pswitch_0
    const-string v0, "EGL_SUCCESS"

    goto :goto_0

    .line 1241
    :pswitch_1
    const-string v0, "EGL_NOT_INITIALIZED"

    goto :goto_0

    .line 1243
    :pswitch_2
    const-string v0, "EGL_BAD_ACCESS"

    goto :goto_0

    .line 1245
    :pswitch_3
    const-string v0, "EGL_BAD_ALLOC"

    goto :goto_0

    .line 1247
    :pswitch_4
    const-string v0, "EGL_BAD_ATTRIBUTE"

    goto :goto_0

    .line 1249
    :pswitch_5
    const-string v0, "EGL_BAD_CONFIG"

    goto :goto_0

    .line 1251
    :pswitch_6
    const-string v0, "EGL_BAD_CONTEXT"

    goto :goto_0

    .line 1253
    :pswitch_7
    const-string v0, "EGL_BAD_CURRENT_SURFACE"

    goto :goto_0

    .line 1255
    :pswitch_8
    const-string v0, "EGL_BAD_DISPLAY"

    goto :goto_0

    .line 1257
    :pswitch_9
    const-string v0, "EGL_BAD_MATCH"

    goto :goto_0

    .line 1259
    :pswitch_a
    const-string v0, "EGL_BAD_NATIVE_PIXMAP"

    goto :goto_0

    .line 1261
    :pswitch_b
    const-string v0, "EGL_BAD_NATIVE_WINDOW"

    goto :goto_0

    .line 1263
    :pswitch_c
    const-string v0, "EGL_BAD_PARAMETER"

    goto :goto_0

    .line 1265
    :pswitch_d
    const-string v0, "EGL_BAD_SURFACE"

    goto :goto_0

    .line 1267
    :pswitch_e
    const-string v0, "EGL_CONTEXT_LOST"

    goto :goto_0

    .line 1237
    nop

    :pswitch_data_0
    .packed-switch 0x3000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private static getHex(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1232
    const-string v1, "0x"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1223
    invoke-static {p1, p2}, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 1211
    return-void
.end method

.method public static throwEglException(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1214
    invoke-static {p0, p1}, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1219
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method createGL()Ljavax/microedition/khronos/opengles/GL;
    .locals 5

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1126
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mGvrSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/ndk/base/GvrSurfaceView;

    .line 1127
    if-eqz v0, :cond_2

    .line 1128
    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$700(Lcom/google/vr/ndk/base/GvrSurfaceView;)Lcom/google/vr/ndk/base/GvrSurfaceView$GLWrapper;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1129
    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$700(Lcom/google/vr/ndk/base/GvrSurfaceView;)Lcom/google/vr/ndk/base/GvrSurfaceView$GLWrapper;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/vr/ndk/base/GvrSurfaceView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1132
    :cond_0
    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$800(Lcom/google/vr/ndk/base/GvrSurfaceView;)I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_2

    .line 1133
    const/4 v2, 0x0

    .line 1134
    const/4 v3, 0x0

    .line 1135
    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$800(Lcom/google/vr/ndk/base/GvrSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 1136
    const/4 v2, 0x1

    .line 1138
    :cond_1
    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$800(Lcom/google/vr/ndk/base/GvrSurfaceView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 1139
    new-instance v0, Lcom/google/vr/ndk/base/GvrSurfaceView$LogWriter;

    invoke-direct {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$LogWriter;-><init>()V

    .line 1141
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1144
    :cond_2
    return-object v1

    :cond_3
    move-object v0, v3

    goto :goto_0
.end method

.method public createSurface()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1067
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    .line 1068
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_1

    .line 1071
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1073
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_2

    .line 1074
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1081
    :cond_2
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->destroySurfaceImp()V

    .line 1086
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mGvrSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/ndk/base/GvrSurfaceView;

    .line 1087
    if-eqz v0, :cond_5

    .line 1089
    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$600(Lcom/google/vr/ndk/base/GvrSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1090
    invoke-virtual {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1089
    invoke-interface {v2, v3, v4, v5, v0}, Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1095
    :goto_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v2, :cond_6

    .line 1096
    :cond_3
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1097
    const/16 v2, 0x300b

    if-ne v0, v2, :cond_4

    .line 1098
    const-string v0, "EglHelper"

    const-string v2, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v0, v1

    .line 1116
    :goto_1
    return v0

    .line 1092
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    .line 1107
    :cond_6
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1112
    const-string v0, "EGLHelper"

    const-string v2, "eglMakeCurrent"

    iget-object v3, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    .line 1113
    goto :goto_1

    .line 1116
    :cond_7
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public destroySurface()V
    .locals 0

    .prologue
    .line 1162
    invoke-direct {p0}, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->destroySurfaceImp()V

    .line 1163
    return-void
.end method

.method public finish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1196
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    .line 1197
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mGvrSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/ndk/base/GvrSurfaceView;

    .line 1198
    if-eqz v0, :cond_0

    .line 1199
    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$400(Lcom/google/vr/ndk/base/GvrSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1201
    :cond_0
    iput-object v4, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1203
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 1204
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1205
    iput-object v4, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1207
    :cond_2
    return-void
.end method

.method public setEglSurfaceAttrib(II)V
    .locals 3

    .prologue
    .line 1166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    .line 1167
    const-string v0, "EglHelper"

    const-string v1, "Cannot call eglSurfaceAttrib. API version is too low."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 1173
    const/16 v1, 0x3059

    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v1

    .line 1174
    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGL14;->eglSurfaceAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;II)Z

    move-result v0

    .line 1175
    if-nez v0, :cond_0

    .line 1176
    const-string v0, "EglHelper"

    const/16 v1, 0x42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "eglSurfaceAttrib() failed. attribute="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1002
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 1007
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1009
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 1010
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1016
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1017
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1018
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1020
    :cond_1
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mGvrSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/ndk/base/GvrSurfaceView;

    .line 1021
    if-nez v0, :cond_4

    .line 1022
    iput-object v4, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1023
    iput-object v4, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1042
    :goto_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_3

    .line 1043
    :cond_2
    iput-object v4, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1044
    const-string v0, "createContext"

    invoke-direct {p0, v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 1051
    :cond_3
    iput-object v4, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1052
    return-void

    .line 1027
    :cond_4
    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$300(Lcom/google/vr/ndk/base/GvrSurfaceView;)Lcom/google/vr/cardboard/EglReadyListener;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1028
    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$300(Lcom/google/vr/ndk/base/GvrSurfaceView;)Lcom/google/vr/cardboard/EglReadyListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/vr/cardboard/EglReadyListener;->getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    .line 1029
    if-eqz v2, :cond_5

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v1, :cond_7

    .line 1030
    :cond_5
    const-string v1, "Unable to obtain application\'s OpenGL context."

    invoke-direct {p0, v1}, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 1038
    :cond_6
    :goto_1
    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$500(Lcom/google/vr/ndk/base/GvrSurfaceView;)Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v1

    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v3}, Landroid/opengl/GLSurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1039
    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$400(Lcom/google/vr/ndk/base/GvrSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0

    .line 1034
    :cond_7
    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$400(Lcom/google/vr/ndk/base/GvrSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;

    move-result-object v1

    check-cast v1, Lcom/google/vr/cardboard/EglFactory;

    invoke-virtual {v1, v2}, Lcom/google/vr/cardboard/EglFactory;->setSharedContext(Ljavax/microedition/khronos/egl/EGLContext;)V

    goto :goto_1
.end method

.method public swap()I
    .locals 3

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1155
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3000

    goto :goto_0
.end method
