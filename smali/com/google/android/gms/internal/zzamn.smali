.class public final Lcom/google/android/gms/internal/zzamn;
.super Ljava/lang/Thread;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/google/android/gms/internal/zzamm;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field private static final a:[F


# instance fields
.field private volatile A:Z

.field private volatile B:Z

.field private final b:Lcom/google/android/gms/internal/zzamk;

.field private final c:[F

.field private final d:[F

.field private final e:[F

.field private final f:[F

.field private final g:[F

.field private final h:[F

.field private final i:[F

.field private j:F

.field private k:F

.field private l:F

.field private m:I

.field private n:I

.field private o:Landroid/graphics/SurfaceTexture;

.field private p:Landroid/graphics/SurfaceTexture;

.field private q:I

.field private r:I

.field private s:I

.field private t:Ljava/nio/FloatBuffer;

.field private final u:Ljava/util/concurrent/CountDownLatch;

.field private final v:Ljava/lang/Object;

.field private w:Ljavax/microedition/khronos/egl/EGL10;

.field private x:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private y:Ljavax/microedition/khronos/egl/EGLContext;

.field private z:Ljavax/microedition/khronos/egl/EGLSurface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/zzamn;->a:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "SphericalVideoProcessor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzamn;->a:[F

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamn;->t:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->t:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/google/android/gms/internal/zzamn;->a:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/zzamn;->c:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/zzamn;->d:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/zzamn;->e:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/zzamn;->f:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/zzamn;->g:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/gms/internal/zzamn;->h:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamn;->i:[F

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/google/android/gms/internal/zzamn;->j:F

    new-instance v0, Lcom/google/android/gms/internal/zzamk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzamk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamn;->b:Lcom/google/android/gms/internal/zzamk;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzamn;->b:Lcom/google/android/gms/internal/zzamk;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzamk;->a(Lcom/google/android/gms/internal/zzamm;)V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamn;->u:Ljava/util/concurrent/CountDownLatch;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamn;->v:Ljava/lang/Object;

    return-void
.end method

.method private static a(ILjava/lang/String;)I
    .locals 4

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const-string v1, "createShader"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    const-string p1, "shaderSource"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const-string p1, "compileShader"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v2, 0x8b81

    invoke-static {v0, v2, p1, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    const-string v2, "getShaderiv"

    invoke-static {v2}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    aget p1, p1, v1

    if-nez p1, :cond_0

    const-string p1, "SphericalVideoRenderer"

    const/16 v2, 0x25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Could not compile shader "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "SphericalVideoRenderer"

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const-string p0, "deleteShader"

    invoke-static {p0}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SphericalVideoRenderer"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": glError "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static a([FF)V
    .locals 5

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v0, p0, v1

    const/4 v1, 0x2

    aput v0, p0, v1

    const/4 v1, 0x3

    aput v0, p0, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p1, v3

    const/4 v3, 0x4

    aput p1, p0, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float p1, v3

    const/4 v3, 0x5

    aput p1, p0, v3

    const/4 p1, 0x6

    aput v0, p0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float p1, v3

    const/4 v0, 0x7

    aput p1, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/16 v0, 0x8

    aput p1, p0, v0

    return-void
.end method

.method private static a([F[F[F)V
    .locals 12

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p2, v0

    mul-float v1, v1, v2

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x3

    aget v5, p2, v4

    mul-float v3, v3, v5

    add-float/2addr v1, v3

    const/4 v3, 0x2

    aget v5, p1, v3

    const/4 v6, 0x6

    aget v7, p2, v6

    mul-float v5, v5, v7

    add-float/2addr v1, v5

    aput v1, p0, v0

    aget v1, p1, v0

    aget v5, p2, v2

    mul-float v1, v1, v5

    aget v5, p1, v2

    const/4 v7, 0x4

    aget v8, p2, v7

    mul-float v5, v5, v8

    add-float/2addr v1, v5

    aget v5, p1, v3

    const/4 v8, 0x7

    aget v9, p2, v8

    mul-float v5, v5, v9

    add-float/2addr v1, v5

    aput v1, p0, v2

    aget v1, p1, v0

    aget v5, p2, v3

    mul-float v1, v1, v5

    aget v5, p1, v2

    const/4 v9, 0x5

    aget v10, p2, v9

    mul-float v5, v5, v10

    add-float/2addr v1, v5

    aget v5, p1, v3

    const/16 v10, 0x8

    aget v11, p2, v10

    mul-float v5, v5, v11

    add-float/2addr v1, v5

    aput v1, p0, v3

    aget v1, p1, v4

    aget v5, p2, v0

    mul-float v1, v1, v5

    aget v5, p1, v7

    aget v11, p2, v4

    mul-float v5, v5, v11

    add-float/2addr v1, v5

    aget v5, p1, v9

    aget v11, p2, v6

    mul-float v5, v5, v11

    add-float/2addr v1, v5

    aput v1, p0, v4

    aget v1, p1, v4

    aget v5, p2, v2

    mul-float v1, v1, v5

    aget v5, p1, v7

    aget v11, p2, v7

    mul-float v5, v5, v11

    add-float/2addr v1, v5

    aget v5, p1, v9

    aget v11, p2, v8

    mul-float v5, v5, v11

    add-float/2addr v1, v5

    aput v1, p0, v7

    aget v1, p1, v4

    aget v5, p2, v3

    mul-float v1, v1, v5

    aget v5, p1, v7

    aget v11, p2, v9

    mul-float v5, v5, v11

    add-float/2addr v1, v5

    aget v5, p1, v9

    aget v11, p2, v10

    mul-float v5, v5, v11

    add-float/2addr v1, v5

    aput v1, p0, v9

    aget v1, p1, v6

    aget v0, p2, v0

    mul-float v1, v1, v0

    aget v0, p1, v8

    aget v4, p2, v4

    mul-float v0, v0, v4

    add-float/2addr v1, v0

    aget v0, p1, v10

    aget v4, p2, v6

    mul-float v0, v0, v4

    add-float/2addr v1, v0

    aput v1, p0, v6

    aget v0, p1, v6

    aget v1, p2, v2

    mul-float v0, v0, v1

    aget v1, p1, v8

    aget v2, p2, v7

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    aget v1, p1, v10

    aget v2, p2, v8

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    aput v0, p0, v8

    aget v0, p1, v6

    aget v1, p2, v3

    mul-float v0, v0, v1

    aget v1, p1, v8

    aget v2, p2, v9

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    aget p1, p1, v10

    aget p2, p2, v10

    mul-float p1, p1, p2

    add-float/2addr v0, p1

    aput v0, p0, v10

    return-void
.end method

.method private static b([FF)V
    .locals 4

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    const/4 v2, 0x0

    aput p1, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    double-to-float p1, v2

    const/4 v2, 0x1

    aput p1, p0, v2

    const/4 p1, 0x0

    const/4 v2, 0x2

    aput p1, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x3

    aput v2, p0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x4

    aput v0, p0, v1

    const/4 v0, 0x5

    aput p1, p0, v0

    const/4 v0, 0x6

    aput p1, p0, v0

    const/4 v0, 0x7

    aput p1, p0, v0

    const/16 p1, 0x8

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p0, p1

    return-void
.end method

.method private final d()V
    .locals 13

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/zzamn;->s:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->o:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget v0, p0, Lcom/google/android/gms/internal/zzamn;->s:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzamn;->s:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->b:Lcom/google/android/gms/internal/zzamk;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamn;->c:[F

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzamk;->a([F)Z

    move-result v0

    const v2, 0x3fc90fdb

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzamn;->j:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->c:[F

    const/4 v6, 0x3

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    new-array v8, v6, [F

    aget v9, v0, v5

    aget v10, v7, v5

    mul-float v9, v9, v10

    aget v10, v0, v1

    aget v11, v7, v1

    mul-float v10, v10, v11

    add-float/2addr v9, v10

    const/4 v10, 0x2

    aget v11, v0, v10

    aget v12, v7, v10

    mul-float v11, v11, v12

    add-float/2addr v9, v11

    aput v9, v8, v5

    aget v6, v0, v6

    aget v9, v7, v5

    mul-float v6, v6, v9

    aget v9, v0, v4

    aget v11, v7, v1

    mul-float v9, v9, v11

    add-float/2addr v6, v9

    aget v9, v0, v3

    aget v11, v7, v10

    mul-float v9, v9, v11

    add-float/2addr v6, v9

    aput v6, v8, v1

    const/4 v6, 0x6

    aget v6, v0, v6

    aget v9, v7, v5

    mul-float v6, v6, v9

    const/4 v9, 0x7

    aget v9, v0, v9

    aget v11, v7, v1

    mul-float v9, v9, v11

    add-float/2addr v6, v9

    const/16 v9, 0x8

    aget v0, v0, v9

    aget v7, v7, v10

    mul-float v0, v0, v7

    add-float/2addr v6, v0

    aput v6, v8, v10

    aget v0, v8, v1

    float-to-double v6, v0

    aget v0, v8, v5

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v0, v6

    sub-float/2addr v0, v2

    neg-float v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/zzamn;->j:F

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->h:[F

    iget v6, p0, Lcom/google/android/gms/internal/zzamn;->j:F

    iget v7, p0, Lcom/google/android/gms/internal/zzamn;->k:F

    add-float/2addr v6, v7

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->c:[F

    const v6, -0x4036f025

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/zzamn;->a([FF)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->h:[F

    iget v6, p0, Lcom/google/android/gms/internal/zzamn;->k:F

    :goto_1
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/zzamn;->b([FF)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->d:[F

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzamn;->a([FF)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->e:[F

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamn;->h:[F

    iget-object v6, p0, Lcom/google/android/gms/internal/zzamn;->d:[F

    invoke-static {v0, v2, v6}, Lcom/google/android/gms/internal/zzamn;->a([F[F[F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->f:[F

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamn;->c:[F

    iget-object v6, p0, Lcom/google/android/gms/internal/zzamn;->e:[F

    invoke-static {v0, v2, v6}, Lcom/google/android/gms/internal/zzamn;->a([F[F[F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->g:[F

    iget v2, p0, Lcom/google/android/gms/internal/zzamn;->l:F

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzamn;->a([FF)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->i:[F

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamn;->g:[F

    iget-object v6, p0, Lcom/google/android/gms/internal/zzamn;->f:[F

    invoke-static {v0, v2, v6}, Lcom/google/android/gms/internal/zzamn;->a([F[F[F)V

    iget v0, p0, Lcom/google/android/gms/internal/zzamn;->r:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamn;->i:[F

    invoke-static {v0, v1, v5, v2, v5}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "drawArrays"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->w:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamn;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamn;->z:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private final e()Z
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->z:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->z:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->w:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzamn;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamn;->w:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzamn;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzamn;->z:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v1

    or-int/2addr v1, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzamn;->z:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->y:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->w:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzamn;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzamn;->y:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    or-int/2addr v1, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzamn;->y:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->w:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzamn;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    move-result v0

    or-int/2addr v1, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzamn;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->v:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzamn;->v:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(FF)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/zzamn;->n:I

    iget v1, p0, Lcom/google/android/gms/internal/zzamn;->m:I

    const v2, 0x3fdf66f3

    if-le v0, v1, :cond_0

    mul-float p1, p1, v2

    iget v0, p0, Lcom/google/android/gms/internal/zzamn;->n:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    mul-float p2, p2, v2

    iget v0, p0, Lcom/google/android/gms/internal/zzamn;->n:I

    :goto_0
    int-to-float v0, v0

    div-float/2addr p2, v0

    goto :goto_1

    :cond_0
    mul-float p1, p1, v2

    iget v0, p0, Lcom/google/android/gms/internal/zzamn;->m:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    mul-float p2, p2, v2

    iget v0, p0, Lcom/google/android/gms/internal/zzamn;->m:I

    goto :goto_0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/zzamn;->k:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zzamn;->k:F

    iget p1, p0, Lcom/google/android/gms/internal/zzamn;->l:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/zzamn;->l:F

    iget p1, p0, Lcom/google/android/gms/internal/zzamn;->l:F

    const p2, -0x4036f025

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    iput p2, p0, Lcom/google/android/gms/internal/zzamn;->l:F

    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/zzamn;->l:F

    const p2, 0x3fc90fdb

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    iput p2, p0, Lcom/google/android/gms/internal/zzamn;->l:F

    :cond_2
    return-void
.end method

.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->v:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/zzamn;->n:I

    iput p2, p0, Lcom/google/android/gms/internal/zzamn;->m:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzamn;->A:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzamn;->v:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/zzamn;->n:I

    iput p3, p0, Lcom/google/android/gms/internal/zzamn;->m:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamn;->p:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->v:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzamn;->B:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzamn;->p:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamn;->v:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->p:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->u:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->o:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget p1, p0, Lcom/google/android/gms/internal/zzamn;->s:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzamn;->s:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzamn;->v:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->v:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->p:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    const-string v0, "SphericalVideoProcessor started with no output texture."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->u:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamn;->w:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->w:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamn;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamn;->w:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzamn;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v5, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-array v0, v3, [I

    new-array v1, v3, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v5, 0xb

    new-array v7, v5, [I

    fill-array-data v7, :array_0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzamn;->w:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzamn;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v9, 0x1

    move-object v8, v1

    move-object v10, v0

    invoke-interface/range {v5 .. v10}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v5

    if-eqz v5, :cond_4

    aget v0, v0, v4

    if-lez v0, :cond_4

    aget-object v0, v1, v4

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iget-object v5, p0, Lcom/google/android/gms/internal/zzamn;->w:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzamn;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v5, v6, v0, v7, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzamn;->y:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamn;->y:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamn;->y:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v5, :cond_6

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzamn;->w:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzamn;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzamn;->p:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v5, v0, v6, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamn;->z:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->z:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->z:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->w:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamn;->x:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzamn;->z:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzamn;->z:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzamn;->y:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x1

    :goto_2
    const v1, 0x8b31

    sget-object v5, Lcom/google/android/gms/internal/zznh;->aV:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzmx;->b()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_3

    :cond_9
    const-string v5, "attribute highp vec3 aPosition;varying vec3 pos;void main() {  gl_Position = vec4(aPosition, 1.0);  pos = aPosition;}"

    :goto_3
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/zzamn;->a(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    :goto_4
    const/4 v6, 0x0

    goto/16 :goto_6

    :cond_a
    const v5, 0x8b30

    sget-object v6, Lcom/google/android/gms/internal/zznh;->aW:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzmx;->b()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_5

    :cond_b
    const-string v6, "#extension GL_OES_EGL_image_external : require\n#define INV_PI 0.3183\nprecision highp float;varying vec3 pos;uniform samplerExternalOES uSplr;uniform mat3 uVMat;uniform float uFOVx;uniform float uFOVy;void main() {  vec3 ray = vec3(pos.x * tan(uFOVx), pos.y * tan(uFOVy), -1);  ray = (uVMat * ray).xyz;  ray = normalize(ray);  vec2 texCrd = vec2(    0.5 + atan(ray.x, - ray.z) * INV_PI * 0.5, acos(ray.y) * INV_PI);  gl_FragColor = vec4(texture2D(uSplr, texCrd).xyz, 1.0);}"

    :goto_5
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/zzamn;->a(ILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_c

    goto :goto_4

    :cond_c
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v6

    const-string v7, "createProgram"

    invoke-static {v7}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    if-eqz v6, :cond_e

    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v1, "attachShader"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v1, "attachShader"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const-string v1, "linkProgram"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    new-array v1, v3, [I

    const v5, 0x8b82

    invoke-static {v6, v5, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    const-string v5, "getProgramiv"

    invoke-static {v5}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    aget v1, v1, v4

    if-eq v1, v3, :cond_d

    const-string v1, "SphericalVideoRenderer"

    const-string v5, "Could not link program: "

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SphericalVideoRenderer"

    invoke-static {v6}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const-string v1, "deleteProgram"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    invoke-static {v6}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    const-string v1, "validateProgram"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    :cond_e
    :goto_6
    iput v6, p0, Lcom/google/android/gms/internal/zzamn;->q:I

    iget v1, p0, Lcom/google/android/gms/internal/zzamn;->q:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v1, "useProgram"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/internal/zzamn;->q:I

    const-string v5, "aPosition"

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0xc

    iget-object v11, p0, Lcom/google/android/gms/internal/zzamn;->t:Ljava/nio/FloatBuffer;

    move v6, v1

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v5, "vertexAttribPointer"

    invoke-static {v5}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v1, "enableVertexAttribArray"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    new-array v1, v3, [I

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v5, "genTextures"

    invoke-static {v5}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    aget v1, v1, v4

    const v5, 0x8d65

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v6, "bindTextures"

    invoke-static {v6}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    const/16 v6, 0x2800

    const/16 v7, 0x2601

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v6, "texParameteri"

    invoke-static {v6}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    const/16 v6, 0x2801

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v6, "texParameteri"

    invoke-static {v6}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    const/16 v6, 0x2802

    const v7, 0x812f

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v6, "texParameteri"

    invoke-static {v6}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    const/16 v6, 0x2803

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v5, "texParameteri"

    invoke-static {v5}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    iget v5, p0, Lcom/google/android/gms/internal/zzamn;->q:I

    const-string v6, "uVMat"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/google/android/gms/internal/zzamn;->r:I

    const/16 v5, 0x9

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    iget v6, p0, Lcom/google/android/gms/internal/zzamn;->r:I

    invoke-static {v6, v3, v4, v5, v4}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    iget v5, p0, Lcom/google/android/gms/internal/zzamn;->q:I

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    goto :goto_7

    :cond_f
    const/4 v5, 0x0

    :goto_7
    if-eqz v0, :cond_15

    if-nez v5, :cond_10

    goto/16 :goto_b

    :cond_10
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzamn;->o:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->o:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->u:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->b:Lcom/google/android/gms/internal/zzamk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamk;->a()V

    :try_start_0
    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzamn;->A:Z

    :catch_0
    :goto_8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamn;->B:Z

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamn;->d()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzamn;->A:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/google/android/gms/internal/zzamn;->n:I

    iget v1, p0, Lcom/google/android/gms/internal/zzamn;->m:I

    invoke-static {v4, v4, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string v0, "viewport"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzamn;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzamn;->q:I

    const-string v1, "uFOVx"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzamn;->q:I

    const-string v3, "uFOVy"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget v3, p0, Lcom/google/android/gms/internal/zzamn;->n:I

    iget v5, p0, Lcom/google/android/gms/internal/zzamn;->m:I

    const v6, 0x3f5f66f3

    if-le v3, v5, :cond_11

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/google/android/gms/internal/zzamn;->m:I

    int-to-float v0, v0

    mul-float v0, v0, v6

    iget v3, p0, Lcom/google/android/gms/internal/zzamn;->n:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_9

    :cond_11
    iget v3, p0, Lcom/google/android/gms/internal/zzamn;->n:I

    int-to-float v3, v3

    mul-float v3, v3, v6

    iget v5, p0, Lcom/google/android/gms/internal/zzamn;->m:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {v1, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_9
    iput-boolean v4, p0, Lcom/google/android/gms/internal/zzamn;->A:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_12
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->v:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzamn;->B:Z

    if-nez v1, :cond_13

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzamn;->A:Z

    if-nez v1, :cond_13

    iget v1, p0, Lcom/google/android/gms/internal/zzamn;->s:I

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamn;->v:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    :cond_13
    monitor-exit v0

    goto :goto_8

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->b:Lcom/google/android/gms/internal/zzamk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamk;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->o:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzamn;->o:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamn;->e()Z

    return-void

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "SphericalVideoProcessor died."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v1

    const-string v3, "SphericalVideoProcessor.run.2"

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/zzaft;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->b:Lcom/google/android/gms/internal/zzamk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamk;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->o:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzamn;->o:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamn;->e()Z

    return-void

    :catch_2
    :try_start_5
    const-string v0, "SphericalVideoProcessor halted unexpectedly."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->b:Lcom/google/android/gms/internal/zzamk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamk;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->o:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzamn;->o:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamn;->e()Z

    return-void

    :goto_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzamn;->b:Lcom/google/android/gms/internal/zzamk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzamk;->b()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamn;->o:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzamn;->o:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamn;->e()Z

    throw v0

    :cond_15
    :goto_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->w:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EGL initialization failed: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_c
    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v0, "SphericalVideoProcessor.run.1"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzaft;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamn;->e()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamn;->u:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    nop

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
        0x3025
        0x10
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
