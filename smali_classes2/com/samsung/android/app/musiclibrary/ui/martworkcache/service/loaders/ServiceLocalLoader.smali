.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceLocalLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->c:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceLocalLoader;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceLocalLoader;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    const-string v0, "-local-temp"

    .line 116
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceLocalLoader;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceLocalLoader;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 124
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceLocalLoader;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->d()V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceLocalLoader;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->d()V

    throw p1

    .line 135
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 136
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_3
    :try_start_1
    const-string v0, "tempBitmap"

    const-string v1, ""

    .line 139
    invoke-static {v0, v1, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    .line 96
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v1}, Lokio/Okio;->a(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 97
    :try_start_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceLocalLoader;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 105
    :try_start_2
    invoke-interface {p2}, Lokio/Source;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    return-object v0

    .line 101
    :cond_1
    :try_start_3
    invoke-static {p1}, Lokio/Okio;->b(Ljava/io/File;)Lokio/Sink;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 102
    :try_start_4
    invoke-interface {v1, p2}, Lokio/BufferedSink;->a(Lokio/Source;)J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_2

    .line 103
    :try_start_5
    invoke-interface {v1}, Lokio/BufferedSink;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_2
    if-eqz p2, :cond_3

    .line 105
    :try_start_6
    invoke-interface {p2}, Lokio/Source;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 101
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    move-object v3, v2

    move-object v2, p1

    move-object p1, v3

    :goto_0
    if-eqz v1, :cond_5

    if-eqz v2, :cond_4

    .line 103
    :try_start_8
    invoke-interface {v1}, Lokio/BufferedSink;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_9
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Lokio/BufferedSink;->close()V

    :cond_5
    :goto_1
    throw p1
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception p1

    .line 96
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v1

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    :goto_2
    if-eqz p2, :cond_7

    if-eqz v1, :cond_6

    .line 105
    :try_start_b
    invoke-interface {p2}, Lokio/Source;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_3

    :catch_3
    move-exception p2

    :try_start_c
    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {p2}, Lokio/Source;->close()V

    :cond_7
    :goto_3
    throw p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    :catch_4
    return-object v0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 172
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    :try_start_0
    const-string p3, "r"

    .line 66
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    if-nez p2, :cond_1

    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceLocalLoader;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 71
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    return-object p1

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "There is no: android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceLocalLoader;->a(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_2

    .line 80
    invoke-static {p2, p5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a(Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object p1

    return-object p1

    .line 82
    :cond_2
    invoke-static {p1, p5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a(Ljava/io/File;Landroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 91
    :catch_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, ".+"

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/net/Uri;)Z
    .locals 1

    .line 168
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sec.android.app.music"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/net/Uri;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public d(Landroid/net/Uri;)J
    .locals 2

    const-wide/16 v0, 0x7d0

    return-wide v0
.end method
