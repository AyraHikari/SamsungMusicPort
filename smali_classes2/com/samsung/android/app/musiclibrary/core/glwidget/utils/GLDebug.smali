.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLDebug;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLDebug;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLDebug;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugSurfaceFormat(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 7

    const/4 v0, 0x6

    .line 36
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-string v1, "EGL_DEPTH_SIZE"

    const-string v2, "EGL_STENCIL_SIZE"

    const-string v3, "EGL_ALPHA_SIZE"

    const-string v4, "EGL_RED_SIZE"

    const-string v5, "EGL_GREEN_SIZE"

    const-string v6, "EGL_BLUE_SIZE"

    .line 38
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLDebug;->getConfigAttributes(Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/StringBuilder;[I[Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 43
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    const-string v1, "GLES20.GL_MAX_TEXTURE_IMAGE_UNITS"

    const-string v3, "GLES20.GL_MAX_TEXTURE_SIZE"

    .line 44
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLDebug;->getIntegerValues(Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/StringBuilder;[I[Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 47
    new-array p1, p1, [I

    fill-array-data p1, :array_2

    const-string v0, "GL_VENDOR"

    const-string v1, "GL_EXTENSIONS"

    const-string v3, "GL_RENDERER"

    const-string v4, "GL_VERSION"

    .line 49
    filled-new-array {v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {p0, v2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLDebug;->getStringValues(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/StringBuilder;[I[Ljava/lang/String;)V

    .line 53
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLDebug;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 4
        0x3025
        0x3026
        0x3021
        0x3024
        0x3023
        0x3022
    .end array-data

    :array_1
    .array-data 4
        0x8872
        0xd33
    .end array-data

    :array_2
    .array-data 4
        0x1f00
        0x1f03
        0x1f01
        0x1f02
    .end array-data
.end method

.method public static getConfigAttributes(Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/StringBuilder;[I[Ljava/lang/String;)V
    .locals 6

    .line 58
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 59
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    const/4 v2, 0x1

    .line 61
    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 62
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_0

    .line 63
    aget v5, p2, v4

    invoke-interface {v0, v1, p0, v5, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 64
    aget-object v5, p3, v4

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    .line 65
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    aget v5, v2, v3

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    .line 67
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getIntegerValues(Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/StringBuilder;[I[Ljava/lang/String;)V
    .locals 3

    const/4 p0, 0x1

    .line 73
    new-array p0, p0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 74
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 75
    aget v2, p2, v1

    invoke-static {v2, p0, v0}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 76
    aget-object v2, p3, v1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    .line 77
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    aget v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 79
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getStringValues(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/StringBuilder;[I[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 84
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 85
    aget-object v1, p3, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    aget v1, p2, v0

    invoke-interface {p0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 88
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
