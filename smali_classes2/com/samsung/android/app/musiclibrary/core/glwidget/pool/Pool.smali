.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "com.samsung.android.app.musiclibrary.core.glwidget.pool.Pool"

.field public static final UNLIMITED:I = -0x1


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final mFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;

.field private final mMaxSize:I

.field private mPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->lock:Ljava/lang/Object;

    .line 65
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mMaxSize:I

    .line 66
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;

    return-void
.end method

.method public static benchmark()V
    .locals 17

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    const v1, 0x100001

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    const/high16 v6, 0x100000

    if-ge v4, v6, :cond_0

    .line 147
    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;

    invoke-direct {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;-><init>()V

    .line 148
    iput v5, v6, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;->test:I

    .line 149
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 152
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v1

    .line 155
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    const/16 v1, 0x10

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1;

    invoke-direct {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;-><init>(ILcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;)V

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_1

    .line 165
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->obtain()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;

    .line 166
    iput v5, v9, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;->test:I

    .line 167
    invoke-virtual {v0, v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->recycle(Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 169
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v1

    .line 173
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "RellocPool benchmark"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 175
    :goto_2
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_2

    .line 176
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_2

    .line 178
    :cond_2
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v11, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$2;

    invoke-direct {v11, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;)V

    invoke-direct {v2, v4, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const/4 v4, 0x0

    :goto_3
    const/16 v13, 0x2800

    if-ge v4, v13, :cond_3

    .line 188
    new-instance v13, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;

    invoke-direct {v13}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;-><init>()V

    .line 189
    iput v5, v13, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;->test:I

    .line 190
    invoke-virtual {v2, v3, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 191
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    const/4 v4, 0x0

    .line 193
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 194
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_4

    .line 196
    :cond_4
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v14, v11

    .line 198
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 201
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "RellocPool benchmark1"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 203
    :goto_5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_5

    .line 204
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_5

    .line 206
    :cond_5
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    new-instance v12, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$3;

    invoke-direct {v12, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;)V

    invoke-direct {v2, v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v13, :cond_6

    .line 216
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->obtain()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;

    .line 217
    iput v5, v13, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool$1TestElem;->test:I

    .line 218
    invoke-virtual {v2, v3, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 219
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v6, v6, 0x1

    const/16 v13, 0x2800

    goto :goto_6

    .line 221
    :cond_6
    :goto_7
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 222
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_7

    .line 224
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v11

    .line 225
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 227
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "benchmark results, local object count: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v4, 0x100000

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " multithread object count: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2800

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new in single thread take "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms, new in multi threads take "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "obtain in single thread take "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms, obtain in multi threads take "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public obtain()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    .line 81
    iget-object v3, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;->next:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    .line 82
    iput-object v2, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;->next:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    const/4 v2, 0x0

    .line 83
    iput-boolean v2, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;->isRecycled:Z

    .line 84
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mSize:I

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 89
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;->makeInstance()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    move-result-object v1

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    .line 89
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public recycle(Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;->clear()V

    .line 111
    iget-boolean v0, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Double recycle for elem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " check obtain/recycle balance!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_0
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mMaxSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mSize:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mMaxSize:I

    if-ge v1, v2, :cond_2

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    iput-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;->next:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    const/4 v1, 0x1

    .line 118
    iput-boolean v1, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;->isRecycled:Z

    .line 119
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    .line 120
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mSize:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->mSize:I

    .line 122
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
