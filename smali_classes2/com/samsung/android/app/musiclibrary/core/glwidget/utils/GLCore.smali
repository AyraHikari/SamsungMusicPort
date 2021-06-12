.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
    }
.end annotation


# static fields
.field static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "GLCore"

.field private static final MSAA_4:Z = true


# instance fields
.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGl:Ljavax/microedition/khronos/opengles/GL10;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    const/4 v0, 0x1

    .line 187
    new-array v7, v0, [I

    .line 188
    new-array v0, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->getConfig()[I

    move-result-object v3

    .line 190
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x1

    move-object v4, v0

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 193
    aget v2, v7, v1

    if-lez v2, :cond_0

    .line 194
    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglChooseConfig failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 192
    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2

    const/4 v0, 0x3

    .line 182
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 183
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private failRuntimeException(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 223
    :goto_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 224
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    const/4 p1, 0x2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    const-string p1, "%s code: %d msg: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private getConfig()[I
    .locals 4

    const/16 v0, 0xf

    .line 200
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 207
    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 208
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x3031

    .line 210
    aput v3, v1, v0

    add-int/lit8 v0, v2, 0x1

    const/4 v3, 0x4

    .line 211
    aput v3, v1, v2

    const/16 v2, 0x3038

    .line 212
    aput v2, v1, v0

    return-object v1

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x10
        0x3026
        0x0
        0x3038
    .end array-data
.end method


# virtual methods
.method public checkGLCurrent()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    .line 97
    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 98
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->LOG_TAG:Ljava/lang/String;

    const-string v1, "switching GLContext back to ours"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "eglMakeCurrent failed"

    .line 100
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->failRuntimeException(Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_2
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->LOG_TAG:Ljava/lang/String;

    const-string v1, "switching GLContext back succeeded"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "invalid egl/eglContext/eglSurface"

    .line 94
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->failRuntimeException(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public init(Landroid/graphics/SurfaceTexture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
        }
    .end annotation

    .line 58
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    const-string v0, "eglGetDisplay failed"

    .line 62
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->failRuntimeException(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    .line 65
    new-array v0, v0, [I

    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "eglInitialize failed"

    .line 67
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->failRuntimeException(Ljava/lang/String;)V

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_2

    const-string v0, "eglConfig not initialized"

    .line 72
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->failRuntimeException(Ljava/lang/String;)V

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_4

    :cond_3
    const-string v0, "createWindowSurface failed"

    .line 80
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->failRuntimeException(Ljava/lang/String;)V

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "eglMakeCurrent failed"

    .line 84
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->failRuntimeException(Ljava/lang/String;)V

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 89
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initGL end obj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDrawFrame(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->checkGLCurrent()V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1, v0}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 165
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Landroid/opengl/GLSurfaceView$Renderer;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 118
    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 p2, 0x0

    .line 119
    invoke-static {p2, p2, p2, p2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p2, 0x4000

    .line 120
    invoke-static {p2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->swapBuffers()V

    .line 123
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {p1, p2, p3}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
        }
    .end annotation

    .line 138
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz p1, :cond_2

    .line 140
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 142
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz p1, :cond_1

    .line 146
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglDestroySurface mEglSurface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mEglDisplay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result p1

    .line 150
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglDestroySurface result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 152
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 153
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 154
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 155
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 157
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleTextureDestroyed"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSurfaceSizeChanged(Landroid/opengl/GLSurfaceView$Renderer;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 129
    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v0, 0x0

    .line 130
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 131
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->swapBuffers()V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1, v0, p2, p3}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    return-void
.end method

.method public swapBuffers()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->checkGLCurrent()V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_0
    return-void
.end method
