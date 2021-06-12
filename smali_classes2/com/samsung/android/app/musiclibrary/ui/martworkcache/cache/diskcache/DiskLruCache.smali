.class public final Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;,
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;,
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field private static final p:Ljava/io/OutputStream;


# instance fields
.field final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:Ljava/io/File;

.field private final g:I

.field private h:J

.field private final i:I

.field private j:J

.field private k:Ljava/io/Writer;

.field private final l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:J

.field private final o:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-z0-9_-]{1,120}"

    .line 113
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a:Ljava/util/regex/Pattern;

    .line 754
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$2;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->p:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    .line 177
    iput-wide v2, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->j:J

    .line 181
    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    .line 191
    iput-wide v2, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->n:J

    .line 194
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 197
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;)V

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->o:Ljava/util/concurrent/Callable;

    .line 214
    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->c:Ljava/io/File;

    move/from16 v2, p2

    .line 215
    iput v2, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->g:I

    .line 216
    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->d:Ljava/io/File;

    .line 217
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->e:Ljava/io/File;

    .line 218
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->f:Ljava/io/File;

    move/from16 v1, p3

    .line 219
    iput v1, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->i:I

    move-wide/from16 v1, p4

    .line 220
    iput-wide v1, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->h:J

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;I)I
    .locals 0

    .line 98
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->m:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 490
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->g()V

    .line 491
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->e(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 494
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->e(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p2, v1, p2

    if-eqz p2, :cond_1

    .line 495
    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-nez v0, :cond_2

    .line 498
    :try_start_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;

    invoke-direct {v0, p0, p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$1;)V

    .line 499
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 500
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 501
    monitor-exit p0

    return-object v3

    .line 504
    :cond_3
    :goto_0
    :try_start_2
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    invoke-direct {p2, p0, v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$1;)V

    .line 505
    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    .line 508
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->k:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIRTY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 509
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->k:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 510
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    .line 489
    monitor-exit p0

    throw p1
.end method

.method public static a(Ljava/io/File;IIJ)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_4

    if-lez p2, :cond_3

    .line 242
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 249
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 254
    :cond_1
    :goto_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 255
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    :try_start_0
    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->c()V

    .line 258
    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "ArtWork"

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", removing"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a()V

    .line 268
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 269
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 270
    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->e()V

    return-object v0

    .line 238
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 235
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;)Ljava/io/Writer;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->k:Ljava/io/Writer;

    return-object p0
.end method

.method private declared-synchronized a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 545
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;

    move-result-object v0

    .line 546
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_a

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 551
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->d(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 552
    :goto_0
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->i:I

    if-ge v2, v3, :cond_2

    .line 553
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 558
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 559
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 554
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->b()V

    .line 555
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 565
    :cond_2
    :goto_1
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->i:I

    if-ge v1, p1, :cond_5

    .line 566
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->b(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 568
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 569
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a(I)Ljava/io/File;

    move-result-object v2

    .line 570
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 571
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    .line 572
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 573
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    .line 574
    iget-wide v7, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->j:J

    const/4 p1, 0x0

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->j:J

    goto :goto_2

    .line 577
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 581
    :cond_5
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->m:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->m:I

    const/4 p1, 0x0

    .line 582
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    .line 583
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->d(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    if-eqz p1, :cond_6

    .line 584
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;Z)Z

    .line 585
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->c(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .line 587
    iget-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->n:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->n:J

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;J)J

    goto :goto_3

    .line 590
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->c(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->k:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REMOVE "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->c(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 593
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->k:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 595
    iget-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->j:J

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->h:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->f()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 596
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->o:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    :cond_9
    monitor-exit p0

    return-void

    .line 547
    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 544
    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 428
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a(Ljava/io/File;)V

    .line 430
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 431
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method static synthetic b()Ljava/io/OutputStream;
    .locals 1

    .line 98
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->p:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->h()V

    return-void
.end method

.method private c()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->d:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/Util;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 278
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v3

    .line 281
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v4

    .line 282
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "libcore.io.DiskLruCache"

    .line 283
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->g:I

    .line 284
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->i:I

    .line 285
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 294
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    :catch_0
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->m:I

    .line 303
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->e()V

    goto :goto_1

    .line 306
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->d:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/Util;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->k:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    :goto_1
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/Util;->a(Ljava/io/Closeable;)V

    return-void

    .line 286
    :cond_1
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal header: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    .line 311
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/Util;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method static synthetic c(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;)Z
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->f()Z

    move-result p0

    return p0
.end method

.method private d()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->e:Ljava/io/File;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a(Ljava/io/File;)V

    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 361
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;

    .line 362
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 363
    :goto_1
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->i:I

    if-ge v3, v2, :cond_0

    .line 364
    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->j:J

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->j:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 367
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    .line 368
    :goto_2
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->i:I

    if-ge v3, v2, :cond_2

    .line 369
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a(Ljava/io/File;)V

    .line 370
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->b(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 372
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->e()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 316
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    add-int/lit8 v3, v1, 0x1

    .line 322
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 325
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "REMOVE"

    .line 326
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v1, v4, :cond_1

    const-string v4, "REMOVE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 327
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 331
    :cond_0
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 334
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 336
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;

    invoke-direct {v4, p0, v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$1;)V

    .line 337
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eq v0, v2, :cond_3

    const-string v3, "CLEAN"

    .line 340
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_3

    const-string v3, "CLEAN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 341
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 342
    invoke-static {v4, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;Z)Z

    .line 343
    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    .line 344
    invoke-static {v4, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    const-string v3, "DIRTY"

    .line 345
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_4

    const-string v3, "DIRTY"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 346
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    invoke-direct {p1, p0, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$1;)V

    invoke-static {v4, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    goto :goto_0

    :cond_4
    if-ne v0, v2, :cond_5

    const-string v0, "READ"

    .line 347
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v1, v0, :cond_5

    const-string v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_0
    return-void

    .line 350
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic e(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->i:I

    return p0
.end method

.method private declared-synchronized e()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->k:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 386
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->e:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/Util;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    .line 389
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 390
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "1"

    .line 391
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 392
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 393
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 394
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 395
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 396
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 397
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;

    .line 400
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_1

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRTY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->c(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->c(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 407
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 410
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 411
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->d:Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->f:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 413
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->e:Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->d:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 414
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 416
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->d:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/Util;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->k:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 418
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 407
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 381
    monitor-exit p0

    throw v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .line 695
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 696
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 697
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic f(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;)Ljava/io/File;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->c:Ljava/io/File;

    return-object p0
.end method

.method private f()Z
    .locals 2

    .line 606
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->m:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->m:I

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    .line 607
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g()V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->k:Ljava/io/Writer;

    if-eqz v0, :cond_0

    return-void

    .line 651
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    :goto_0
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->j:J

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 680
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->c(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 441
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->g()V

    .line 442
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->e(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 445
    monitor-exit p0

    return-object v1

    .line 448
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->d(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 449
    monitor-exit p0

    return-object v1

    .line 455
    :cond_1
    :try_start_2
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->i:I

    new-array v8, v2, [Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 457
    :goto_0
    :try_start_3
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->i:I

    if-ge v3, v4, :cond_2

    .line 458
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v8, v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 472
    :cond_2
    :try_start_4
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->m:I

    .line 473
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->k:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 474
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 475
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->o:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 478
    :cond_3
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->e(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)J

    move-result-wide v6

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)[J

    move-result-object v9

    const/4 v10, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Snapshot;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    .line 462
    :catch_0
    :goto_1
    :try_start_5
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->i:I

    if-ge v2, p1, :cond_4

    .line 463
    aget-object p1, v8, v2

    if-eqz p1, :cond_4

    .line 464
    aget-object p1, v8, v2

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/Util;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 469
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 440
    monitor-exit p0

    throw p1
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 690
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->close()V

    .line 691
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/Util;->a(Ljava/io/File;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 486
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->a(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 617
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->g()V

    .line 618
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->e(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 620
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 624
    :cond_0
    :goto_0
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->i:I

    if-ge v1, v2, :cond_3

    .line 625
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a(I)Ljava/io/File;

    move-result-object v2

    .line 626
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 627
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 629
    :cond_2
    :goto_1
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->j:J

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    const/4 v4, 0x0

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->j:J

    .line 630
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 633
    :cond_3
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->m:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->m:I

    .line 634
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->k:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 635
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->f()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 638
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->o:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    :cond_4
    monitor-exit p0

    return v1

    .line 621
    :cond_5
    :goto_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 616
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 664
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->k:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 665
    monitor-exit p0

    return-void

    .line 667
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;

    .line 668
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 669
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Entry;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache$Editor;->b()V

    goto :goto_0

    .line 672
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->h()V

    .line 673
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    .line 674
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/DiskLruCache;->k:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 675
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 663
    monitor-exit p0

    throw v0
.end method
