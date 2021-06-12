.class Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/DummySurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummySurfaceThread"
.end annotation


# instance fields
.field private final a:[I

.field private b:Landroid/opengl/EGLDisplay;

.field private c:Landroid/opengl/EGLContext;

.field private d:Landroid/opengl/EGLSurface;

.field private e:Landroid/os/Handler;

.field private f:Landroid/graphics/SurfaceTexture;

.field private g:Ljava/lang/Error;

.field private h:Ljava/lang/RuntimeException;

.field private i:Lcom/google/android/exoplayer2/video/DummySurface;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "dummySurface"

    .line 183
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 184
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->a:[I

    return-void
.end method

.method private b()V
    .locals 4

    const/4 v0, 0x0

    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->f:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->f:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v1, 0x1

    .line 341
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->a:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->d:Landroid/opengl/EGLSurface;

    if-eqz v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->b:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->d:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->c:Landroid/opengl/EGLContext;

    if-eqz v1, :cond_2

    .line 348
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->b:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->c:Landroid/opengl/EGLContext;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 350
    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->d:Landroid/opengl/EGLSurface;

    .line 351
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->c:Landroid/opengl/EGLContext;

    .line 352
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->b:Landroid/opengl/EGLDisplay;

    .line 353
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->i:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 354
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->f:Landroid/graphics/SurfaceTexture;

    return-void

    :catchall_0
    move-exception v1

    .line 344
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->d:Landroid/opengl/EGLSurface;

    if-eqz v2, :cond_3

    .line 345
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->b:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->d:Landroid/opengl/EGLSurface;

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 347
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->c:Landroid/opengl/EGLContext;

    if-eqz v2, :cond_4

    .line 348
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->b:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->c:Landroid/opengl/EGLContext;

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 350
    :cond_4
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->d:Landroid/opengl/EGLSurface;

    .line 351
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->c:Landroid/opengl/EGLContext;

    .line 352
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->b:Landroid/opengl/EGLDisplay;

    .line 353
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->i:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 354
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->f:Landroid/graphics/SurfaceTexture;

    throw v1
.end method

.method private b(I)V
    .locals 13

    const/4 v0, 0x0

    .line 259
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->b:Landroid/opengl/EGLDisplay;

    .line 260
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->b:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "eglGetDisplay failed"

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Assertions;->b(ZLjava/lang/Object;)V

    const/4 v1, 0x2

    .line 262
    new-array v3, v1, [I

    .line 263
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->b:Landroid/opengl/EGLDisplay;

    invoke-static {v4, v3, v0, v3, v2}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v3

    const-string v4, "eglInitialize failed"

    .line 264
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Assertions;->b(ZLjava/lang/Object;)V

    const/16 v3, 0x11

    .line 266
    new-array v5, v3, [I

    fill-array-data v5, :array_0

    .line 278
    new-array v3, v2, [Landroid/opengl/EGLConfig;

    .line 279
    new-array v12, v2, [I

    .line 280
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->b:Landroid/opengl/EGLDisplay;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object v7, v3

    move-object v10, v12

    .line 281
    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 282
    aget v4, v12, v0

    if-lez v4, :cond_1

    aget-object v4, v3, v0

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-string v5, "eglChooseConfig failed"

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Assertions;->b(ZLjava/lang/Object;)V

    .line 285
    aget-object v3, v3, v0

    const/4 v4, 0x5

    if-nez p1, :cond_2

    const/4 v5, 0x3

    .line 288
    new-array v5, v5, [I

    fill-array-data v5, :array_1

    goto :goto_2

    .line 290
    :cond_2
    new-array v5, v4, [I

    fill-array-data v5, :array_2

    .line 299
    :goto_2
    iget-object v6, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->b:Landroid/opengl/EGLDisplay;

    sget-object v7, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 300
    invoke-static {v6, v3, v7, v5, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->c:Landroid/opengl/EGLContext;

    .line 302
    iget-object v5, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->c:Landroid/opengl/EGLContext;

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    const-string v6, "eglCreateContext failed"

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Assertions;->b(ZLjava/lang/Object;)V

    if-ne p1, v2, :cond_4

    .line 306
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    goto :goto_6

    :cond_4
    if-ne p1, v1, :cond_5

    const/4 v1, 0x7

    .line 310
    new-array v1, v1, [I

    fill-array-data v1, :array_3

    goto :goto_4

    .line 321
    :cond_5
    new-array v1, v4, [I

    fill-array-data v1, :array_4

    .line 323
    :goto_4
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->b:Landroid/opengl/EGLDisplay;

    invoke-static {v4, v3, v1, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->d:Landroid/opengl/EGLSurface;

    .line 324
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->d:Landroid/opengl/EGLSurface;

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    const-string v3, "eglCreatePbufferSurface failed"

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Assertions;->b(ZLjava/lang/Object;)V

    .line 325
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->d:Landroid/opengl/EGLSurface;

    .line 328
    :goto_6
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->b:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->c:Landroid/opengl/EGLContext;

    invoke-static {v3, v1, v1, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v1

    const-string v3, "eglMakeCurrent failed"

    .line 329
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Assertions;->b(ZLjava/lang/Object;)V

    .line 331
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->a:[I

    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 332
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->a:[I

    aget v3, v3, v0

    invoke-direct {v1, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->f:Landroid/graphics/SurfaceTexture;

    .line 333
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->f:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 334
    new-instance v1, Lcom/google/android/exoplayer2/video/DummySurface;

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->f:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    const/4 p1, 0x0

    invoke-direct {v1, p0, v3, v0, p1}, Lcom/google/android/exoplayer2/video/DummySurface;-><init>(Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;ZLcom/google/android/exoplayer2/video/DummySurface$1;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->i:Lcom/google/android/exoplayer2/video/DummySurface;

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
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
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
        0x3098
        0x2
        0x32c0
        0x1
        0x3038
    .end array-data

    :array_3
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x32c0
        0x1
        0x3038
    .end array-data

    :array_4
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data
.end method


# virtual methods
.method public a(I)Lcom/google/android/exoplayer2/video/DummySurface;
    .locals 3

    .line 188
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->start()V

    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->e:Landroid/os/Handler;

    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 193
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->i:Lcom/google/android/exoplayer2/video/DummySurface;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->h:Ljava/lang/RuntimeException;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->g:Ljava/lang/Error;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 195
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 200
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 203
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 205
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->h:Ljava/lang/RuntimeException;

    if-nez p1, :cond_3

    .line 207
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->g:Ljava/lang/Error;

    if-nez p1, :cond_2

    .line 210
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->i:Lcom/google/android/exoplayer2/video/DummySurface;

    return-object p1

    .line 208
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->g:Ljava/lang/Error;

    throw p1

    .line 206
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->h:Ljava/lang/RuntimeException;

    throw p1

    :catchall_0
    move-exception p1

    .line 200
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->e:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 225
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    .line 246
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->quit()Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "DummySurface"

    const-string v2, "Failed to release dummy surface"

    .line 248
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return v1

    .line 250
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->quit()Z

    throw p1

    .line 242
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->f:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return v1

    .line 228
    :pswitch_2
    :try_start_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->b(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 236
    monitor-enter p0

    .line 237
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 238
    monitor-exit p0

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :try_start_4
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    .line 233
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->g:Ljava/lang/Error;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 236
    monitor-enter p0

    .line 237
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 238
    monitor-exit p0

    goto :goto_3

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1

    :catch_2
    move-exception p1

    :try_start_6
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    .line 230
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->h:Ljava/lang/RuntimeException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 236
    monitor-enter p0

    .line 237
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 238
    monitor-exit p0

    :goto_3
    return v1

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p1

    .line 236
    :goto_4
    monitor-enter p0

    .line 237
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 238
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw p1

    :catchall_5
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 220
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->e:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
