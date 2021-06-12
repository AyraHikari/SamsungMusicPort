.class final Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContentsTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;
    }
.end annotation


# static fields
.field static final NO_CACHING_ERROR_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContentCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;",
            ">;"
        }
    .end annotation
.end field

.field private final mDebugTracer:Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;

.field private final mFileNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 248
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    .line 251
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    const/16 v1, -0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    const/16 v2, -0x67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    const/16 v2, -0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    const/16 v2, -0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    const/16 v2, -0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    const/16 v2, -0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    const/16 v1, -0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    const/16 v1, -0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;)V
    .locals 2

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mDebugTracer:Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;

    .line 266
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mFileNameMap:Landroid/util/SparseArray;

    .line 268
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$1;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mContentCache:Landroid/util/LruCache;

    .line 282
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;)Landroid/util/SparseArray;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mFileNameMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;)Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    return-object p0
.end method

.method private isTTL(J)Z
    .locals 2

    .line 378
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0xbb8

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private trace()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mDebugTracer:Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DebugTracer;->trace()V

    return-void
.end method


# virtual methods
.method close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mFileNameMap:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getFd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 342
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mContentCache:Landroid/util/LruCache;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;

    if-eqz v1, :cond_2

    .line 349
    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;->content:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getPlayingUri()Landroid/net/Uri;

    move-result-object v1

    .line 350
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getPlayingUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 353
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 354
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "URI reloaded content!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 359
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mContentCache:Landroid/util/LruCache;

    invoke-virtual {p1, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 343
    :cond_3
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Not opened or Already closed content!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method closeAll()V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mContentCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method get(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .locals 8

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mContentCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 302
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;->content:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    .line 303
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getFd()I

    move-result v3

    .line 304
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getErrorCode()I

    move-result v4

    if-ltz v3, :cond_1

    if-lez v3, :cond_2

    .line 308
    :try_start_0
    sget v5, Landroid/system/OsConstants;->F_OK:I

    invoke-static {p1, v5}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 309
    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v5

    .line 313
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "File check error"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    :cond_2
    iget-wide v5, v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;->time:J

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->isTTL(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 317
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    return-object v1

    .line 322
    :cond_3
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->NO_CACHING_ERROR_SET:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 327
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 329
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sd card path file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    return-object v1

    :cond_5
    return-object v2

    .line 323
    :cond_6
    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    return-object v1
.end method

.method put(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mFileNameMap:Landroid/util/SparseArray;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getFd()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->mContentCache:Landroid/util/LruCache;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;->obtain(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable$WrappedContent;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
