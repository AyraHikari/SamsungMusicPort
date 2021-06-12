.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# instance fields
.field private final d:Landroid/graphics/Bitmap$CompressFormat;

.field private final e:I

.field private final f:Ljava/io/File;

.field private final g:J

.field private h:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

.field private volatile i:J

.field private final j:Ljava/lang/Object;

.field private final k:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

.field private l:I

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final n:Ljava/lang/Runnable;

.field private final o:Ljava/lang/Runnable;

.field private final p:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

.field private final q:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 58
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap$CompressFormat;I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArtWork"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->b:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;)V
    .locals 3

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 117
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->i:J

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->j:Ljava/lang/Object;

    .line 121
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->k:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 127
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->n:Ljava/lang/Runnable;

    .line 134
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->o:Ljava/lang/Runnable;

    const-string v0, "ApplyPendingRequests"

    .line 143
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;)V

    const/16 v2, 0x1f4

    .line 144
    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->a(Ljava/lang/String;ILjava/lang/Runnable;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->p:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    const-string v0, "DiskCacheMaintenance"

    .line 151
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$4;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;)V

    const v2, 0xea60

    .line 152
    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->a(Ljava/lang/String;ILjava/lang/Runnable;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->q:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    .line 160
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->f:Ljava/io/File;

    .line 161
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;->b:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->g:J

    .line 162
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;->c:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->d:Landroid/graphics/Bitmap$CompressFormat;

    .line 163
    iget p1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;->d:I

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->e:I

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Ljava/io/File;
    .locals 4

    :try_start_0
    const-string v0, "MD5"

    .line 402
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 403
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 404
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 406
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hashKeyForDisk - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 409
    :goto_0
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->f:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".data"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method private static a([B)Ljava/lang/String;
    .locals 6

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 458
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 459
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/16 v4, 0x30

    .line 460
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 462
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->c()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 317
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 321
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->f:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const p1, 0xea60

    .line 388
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->l:I

    goto :goto_0

    .line 390
    :cond_0
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->l:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->l:I

    .line 392
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->l:I

    int-to-double v0, p1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    const p1, 0x7fffffff

    .line 393
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->l:I

    .line 396
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->q:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->l:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->a(I)V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x1

    .line 247
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a(Z)V

    .line 248
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 249
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->c:Ljava/lang/String;

    const-string p2, "failed to put image to disk cache, out of space?"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 253
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->c:Ljava/lang/String;

    const-string v3, "recreate disk cache folder"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 260
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->c:Ljava/lang/String;

    const-string p2, "failed to put image to disk cache after recreate"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->b()V

    return v2

    :cond_1
    return v0

    .line 255
    :cond_2
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->c:Ljava/lang/String;

    const-string p2, "recreate disk cache folder failed!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->h:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 298
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->i:J

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->g:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->k:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->h()V

    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->k:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 418
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->k:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->b()V

    .line 419
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->h()V

    return-void

    .line 423
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->j:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 427
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->g()Ljava/lang/String;

    move-result-object v1

    .line 428
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->h:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    .line 429
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->h:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->d()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->i:J

    .line 430
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 431
    :try_start_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 433
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->k:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->d()V

    return-void

    :catchall_0
    move-exception p1

    .line 430
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 433
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->k:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->d()V

    throw p1
.end method

.method private b(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 2
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.ACTION_DISK_CACHE_THUMBNAILS_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_disk_cache_removed_uri"

    .line 206
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "extra_disk_cache_removed_size"

    .line 207
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private c()V
    .locals 6

    .line 304
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 305
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->i:J

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->i:J

    iget-wide v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->g:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->h:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->g:J

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->i:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->a(JJ)Ljava/util/List;

    move-result-object v1

    .line 309
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->h:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->d()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->i:J

    .line 310
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a(Ljava/util/List;)V

    .line 312
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->e()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->p:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->a()V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->h:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->h:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->a()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 332
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private e()V
    .locals 4

    .line 351
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->f()Ljava/util/List;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->h:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 353
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a(Ljava/util/List;)V

    .line 354
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a(Z)V

    .line 355
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size after maintenance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private f()Ljava/util/List;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 368
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 370
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 371
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 374
    :cond_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->b:Ljava/lang/String;

    const-string v2, "unable to get list of files"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5459b01c

    if-eq v1, v2, :cond_1

    const v2, -0x4c60f8b5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "remote-albums"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "albums"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 445
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to determine database name"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "DiskCacheRemoteAlbumsJournal.db"

    return-object v0

    :pswitch_1
    const-string v0, "DiskCacheJournal.db"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private h()V
    .locals 0

    .line 450
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->d()V

    .line 451
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 173
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->b(Landroid/content/Context;)V

    .line 174
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->h:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_0

    .line 176
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    return-object p1

    .line 180
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->f:Ljava/io/File;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 181
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->d:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a(Landroid/os/ParcelFileDescriptor;ILandroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object p1

    return-object p1

    .line 184
    :catch_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->h:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->h:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->b()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    .line 338
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->b(Landroid/content/Context;)V

    .line 340
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->j:Ljava/lang/Object;

    monitor-enter p1

    .line 341
    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->i:J

    .line 342
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->h:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->c()V

    const-wide/16 v2, 0x0

    .line 343
    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->i:J

    .line 344
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->f()Ljava/util/List;

    move-result-object p1

    .line 346
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a(Ljava/util/List;)V

    .line 347
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCache from size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " files removed"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 344
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 6
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 190
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->b(Landroid/content/Context;)V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->i:J

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->h:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->a(Ljava/lang/String;I)J

    move-result-wide v3

    const/4 v5, 0x0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->i:J

    .line 193
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->b(Landroid/content/Context;Landroid/net/Uri;I)V

    return-void

    :catchall_0
    move-exception p1

    .line 193
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;I)V
    .locals 5

    monitor-enter p0

    .line 269
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p3, :cond_0

    .line 271
    monitor-exit p0

    return-void

    .line 278
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :try_start_2
    const-string v0, "tempFile"

    const-string v1, ""

    .line 283
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->f:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 289
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x0

    .line 290
    :try_start_4
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->d:Landroid/graphics/Bitmap$CompressFormat;

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->e:I

    invoke-virtual {p3, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 291
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p3

    goto :goto_0

    :catch_0
    move-exception p3

    move-object v2, p3

    .line 289
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_0
    if-eqz v2, :cond_2

    .line 291
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :goto_1
    throw p3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_2
    move-exception p3

    .line 292
    :try_start_9
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to save bitmap to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    :goto_2
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Ljava/io/File;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 295
    monitor-exit p0

    return-void

    :catch_3
    move-exception p1

    .line 285
    :try_start_a
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->c:Ljava/lang/String;

    const-string p3, "Failed to create temp file, out of space?"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 286
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 287
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 268
    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Ljava/io/File;I)V
    .locals 6

    .line 213
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->b(Landroid/content/Context;)V

    if-nez p3, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Ljava/io/File;

    move-result-object p1

    .line 226
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 229
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 230
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result p3

    if-nez p3, :cond_2

    return-void

    .line 234
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 235
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->j:Ljava/lang/Object;

    monitor-enter p3

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->h:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/Journal;->a(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;JI)J

    move-result-wide p1

    .line 237
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->i:J

    const/4 p4, 0x0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->i:J

    .line 241
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->b()V

    return-void

    :catchall_0
    move-exception p1

    .line 241
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
