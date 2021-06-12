.class public final Lcom/google/android/gms/internal/zzang;
.super Lcom/google/android/gms/internal/zzana;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/text/DecimalFormat;


# instance fields
.field private d:Ljava/io/File;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzang;->b:Ljava/util/Set;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzang;->c:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzamp;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzana;-><init>(Lcom/google/android/gms/internal/zzamp;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzang;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Context.getCacheDir() returned null"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "admobVideoStreams"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzang;->d:Ljava/io/File;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzang;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzang;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Could not create preload cache directory at "

    iget-object v1, p0, Lcom/google/android/gms/internal/zzang;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzang;->d:Ljava/io/File;

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzang;->d:Ljava/io/File;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/zzang;->d:Ljava/io/File;

    invoke-virtual {p1, v2, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p1, "Could not set cache file permissions at "

    iget-object v1, p0, Lcom/google/android/gms/internal/zzang;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzang;->d:Ljava/io/File;

    return-void
.end method

.method private final a(Ljava/io/File;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzang;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ".done"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 29

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Lcom/google/android/gms/internal/zzang;->d:Ljava/io/File;

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-nez v0, :cond_0

    const-string v0, "noCacheDir"

    :goto_0
    invoke-virtual {v8, v9, v10, v0, v10}, Lcom/google/android/gms/internal/zzana;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_0
    iget-object v0, v8, Lcom/google/android/gms/internal/zzang;->d:Ljava/io/File;

    if-nez v0, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    iget-object v0, v8, Lcom/google/android/gms/internal/zzang;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".done"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/zznh;->j:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v3, v0, :cond_9

    iget-object v0, v8, Lcom/google/android/gms/internal/zzang;->d:Ljava/io/File;

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    const-wide v0, 0x7fffffffffffffffL

    iget-object v2, v8, Lcom/google/android/gms/internal/zzang;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move-wide v4, v0

    move-object v1, v10

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_7

    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v12, ".done"

    invoke-virtual {v7, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v7, v12, v4

    if-gez v7, :cond_6

    move-object v1, v6

    move-wide v4, v12

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/zzang;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_8
    :goto_4
    if-nez v0, :cond_0

    const-string v0, "Unable to expire stream cache"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    const-string v0, "expireFailed"

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->a()Lcom/google/android/gms/internal/zzajr;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzajr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/io/File;

    iget-object v1, v8, Lcom/google/android/gms/internal/zzang;->d:Ljava/io/File;

    invoke-direct {v12, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v8, v12}, Lcom/google/android/gms/internal/zzang;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v13, 0x1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    const-string v1, "Stream cache hit at "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_5
    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v9, v1, v0}, Lcom/google/android/gms/internal/zzana;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return v13

    :cond_b
    iget-object v1, v8, Lcom/google/android/gms/internal/zzang;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    goto :goto_6

    :cond_c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v14, v2

    :goto_6
    sget-object v1, Lcom/google/android/gms/internal/zzang;->b:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/zzang;->b:Ljava/util/Set;

    invoke-interface {v2, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v0, "Stream cache already in progress at "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_d
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "inProgress"

    invoke-virtual {v8, v9, v0, v2, v10}, Lcom/google/android/gms/internal/zzana;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return v11

    :cond_e
    sget-object v2, Lcom/google/android/gms/internal/zzang;->b:Ljava/util/Set;

    invoke-interface {v2, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v15, "error"

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->p()Lcom/google/android/gms/internal/zzalg;

    sget-object v1, Lcom/google/android/gms/internal/zznh;->o:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v9, v1}, Lcom/google/android/gms/internal/zzalg;->a(Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object v1

    instance-of v2, v1, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_e

    if-eqz v2, :cond_10

    :try_start_2
    move-object v2, v1

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_10

    const-string v1, "badUrl"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v0, "HTTP request failed. Code: "

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_8

    :cond_f
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_8
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "HTTP status code "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    move-object v15, v1

    move-object/from16 v26, v10

    move-object v1, v14

    move-object v10, v3

    goto/16 :goto_17

    :catch_1
    move-exception v0

    move-object v15, v1

    goto :goto_9

    :catch_2
    move-exception v0

    :goto_9
    move-object/from16 v26, v10

    move-object v1, v14

    goto/16 :goto_17

    :cond_10
    :try_start_5
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_e

    if-gez v7, :cond_12

    :try_start_6
    const-string v0, "Stream cache aborted, missing content-length header at "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_11
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_a
    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contentLengthMissing"

    invoke-virtual {v8, v9, v0, v1, v10}, Lcom/google/android/gms/internal/zzana;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzang;->b:Ljava/util/Set;

    invoke-interface {v0, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    return v11

    :cond_12
    :try_start_7
    sget-object v2, Lcom/google/android/gms/internal/zzang;->c:Ljava/text/DecimalFormat;

    int-to-long v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/zznh;->k:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_e

    if-le v7, v6, :cond_14

    :try_start_8
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Content length "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " exceeds limit at "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    const-string v0, "File too big for full file cache. Size: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_13
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_b
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sizeExceeded"

    invoke-virtual {v8, v9, v1, v2, v0}, Lcom/google/android/gms/internal/zzana;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzang;->b:Ljava/util/Set;

    invoke-interface {v0, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    return v11

    :cond_14
    :try_start_9
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Caching "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bytes from "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v5

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_e

    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    const/high16 v1, 0x100000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v17

    sget-object v1, Lcom/google/android/gms/internal/zznh;->n:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_d

    move-object/from16 v19, v14

    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    new-instance v10, Lcom/google/android/gms/internal/zzaji;

    invoke-direct {v10, v13, v14}, Lcom/google/android/gms/internal/zzaji;-><init>(J)V

    sget-object v1, Lcom/google/android/gms/internal/zznh;->m:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v13

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const/4 v1, 0x0

    :goto_c
    invoke-interface {v5, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v20
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_c

    if-ltz v20, :cond_1b

    add-int v1, v1, v20

    if-le v1, v6, :cond_16

    :try_start_c
    const-string v2, "sizeExceeded"
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5

    :try_start_d
    const-string v0, "File too big for full file cache. Size: "

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_d

    :cond_15
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_4

    move-object v10, v1

    :goto_d
    :try_start_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream cache file size limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_3

    :catch_3
    move-exception v0

    move-object v15, v2

    move-object/from16 v26, v4

    :goto_e
    move-object/from16 v1, v19

    goto/16 :goto_17

    :catch_4
    move-exception v0

    move-object v15, v2

    goto :goto_f

    :catch_5
    move-exception v0

    :goto_f
    move-object/from16 v26, v4

    goto/16 :goto_15

    :cond_16
    :try_start_f
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_10
    invoke-virtual {v3, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v20

    if-gtz v20, :cond_1a

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v20

    const/16 v22, 0x0

    sub-long v20, v20, v17

    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v13

    cmp-long v20, v20, v22

    if-gtz v20, :cond_19

    iget-boolean v11, v8, Lcom/google/android/gms/internal/zzang;->e:Z

    if-nez v11, :cond_18

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzaji;->a()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v24, v10

    sget-object v10, Lcom/google/android/gms/internal/zzajr;->a:Landroid/os/Handler;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_c

    move-object/from16 v25, v15

    :try_start_10
    new-instance v15, Lcom/google/android/gms/internal/zzanb;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_6

    const/16 v20, 0x0

    move/from16 v21, v1

    move-object v1, v15

    move-object/from16 v22, v2

    move-object/from16 v2, p0

    move-object/from16 v23, v3

    move-object/from16 v3, p1

    move-object/from16 v26, v4

    move-object v4, v11

    move-object v11, v5

    move/from16 v5, v21

    move/from16 v27, v6

    move v6, v7

    move/from16 v28, v7

    move/from16 v7, v20

    :try_start_11
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzanb;-><init>(Lcom/google/android/gms/internal/zzana;Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-virtual {v10, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11

    :catch_6
    move-exception v0

    move-object/from16 v26, v4

    goto/16 :goto_13

    :cond_17
    move/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v26, v4

    move-object v11, v5

    move/from16 v27, v6

    move/from16 v28, v7

    move-object/from16 v24, v10

    move-object/from16 v25, v15

    :goto_11
    move-object v5, v11

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v10, v24

    move-object/from16 v15, v25

    move-object/from16 v4, v26

    move/from16 v6, v27

    move/from16 v7, v28

    const/4 v11, 0x0

    goto/16 :goto_c

    :cond_18
    move-object/from16 v26, v4

    move-object/from16 v25, v15

    const-string v15, "externalAbort"
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_b

    :try_start_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "abort requested"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_8

    :cond_19
    move-object/from16 v26, v4

    move-object/from16 v25, v15

    :try_start_13
    const-string v15, "downloadTimeout"
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_b

    :try_start_14
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Timeout exceeded. Limit: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sec"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_8

    :try_start_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream cache time limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_7

    :catch_7
    move-exception v0

    goto/16 :goto_e

    :catch_8
    move-exception v0

    goto/16 :goto_15

    :cond_1a
    const/4 v11, 0x0

    goto/16 :goto_10

    :cond_1b
    move-object/from16 v26, v4

    move-object/from16 v25, v15

    :try_start_16
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileOutputStream;->close()V

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/zzagf;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    sget-object v2, Lcom/google/android/gms/internal/zzang;->c:Ljava/text/DecimalFormat;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Preloaded "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bytes from "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    :cond_1c
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v12, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_b

    goto :goto_12

    :cond_1d
    :try_start_17
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_b

    :catch_9
    :goto_12
    :try_start_18
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v1}, Lcom/google/android/gms/internal/zzana;->a(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/gms/internal/zzang;->b:Ljava/util/Set;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_b

    move-object/from16 v1, v19

    :try_start_19
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_a

    const/4 v0, 0x1

    return v0

    :catch_a
    move-exception v0

    goto :goto_14

    :catch_b
    move-exception v0

    :goto_13
    move-object/from16 v1, v19

    :goto_14
    move-object/from16 v15, v25

    goto :goto_16

    :catch_c
    move-exception v0

    move-object/from16 v26, v4

    move-object/from16 v25, v15

    :goto_15
    move-object/from16 v1, v19

    goto :goto_16

    :catch_d
    move-exception v0

    move-object/from16 v26, v4

    move-object v1, v14

    move-object/from16 v25, v15

    :goto_16
    const/4 v10, 0x0

    goto :goto_17

    :catch_e
    move-exception v0

    move-object v1, v14

    move-object/from16 v25, v15

    const/4 v10, 0x0

    const/16 v26, 0x0

    :goto_17
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v2

    const-string v3, "VideoStreamFullFileCache.preload"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzaft;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1e
    :try_start_1a
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_f

    :catch_f
    iget-boolean v2, v8, Lcom/google/android/gms/internal/zzang;->e:Z

    if-eqz v2, :cond_1f

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Preload aborted for URL \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->d(Ljava/lang/String;)V

    goto :goto_18

    :cond_1f
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Preload failed for URL \""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_18
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "Could not delete partial cache file at "

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_20
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_19
    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    :cond_21
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v15, v10}, Lcom/google/android/gms/internal/zzana;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzang;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzang;->e:Z

    return-void
.end method
