.class public final Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader$Companion;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;


# instance fields
.field private final c:Lkotlin/Lazy;

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

.field private final e:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "client"

    const-string v4, "getClient()Lokhttp3/OkHttpClient;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader$Companion;

    .line 156
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->c:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->g:Ljava/lang/String;

    .line 159
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->d:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lokhttp3/OkHttpClient;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "clientProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uriRegexp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->e:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->f:Ljava/lang/String;

    .line 44
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->e:Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->c:Lkotlin/Lazy;

    .line 143
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    .line 41
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    return-void
.end method

.method private final a(Landroid/content/Context;)Ljava/io/File;
    .locals 8

    const-string v0, "-network-temp"

    .line 96
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tempFolder"

    .line 99
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->a(Ljava/io/File;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->d()V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->b()V

    :cond_1
    :goto_0
    const/4 v0, 0x3

    const-wide/16 v1, 0x64

    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v4, v3, 0x1

    if-ge v3, v0, :cond_4

    .line 106
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 107
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_3

    const-string v0, "tempBitmap"

    const-string v1, ""

    .line 111
    invoke-static {v0, v1, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    const-string v0, "File.createTempFile(\"tempBitmap\", \"\", tempFolder)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 179
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create temp folder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", retry"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    move v3, v4

    goto :goto_1

    .line 105
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create temp folder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final a(Ljava/io/File;)V
    .locals 3

    .line 115
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 118
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 119
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-void
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->h:Ljava/lang/String;

    return-object v0
.end method

.method private final c()Lokhttp3/OkHttpClient;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 8

    .line 56
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 57
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->a()Lokhttp3/Request;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadArtwork uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 62
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->c()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->a()Lokhttp3/Response;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    move-object v3, v0

    check-cast v3, Lokhttp3/Response;

    const-string v4, "response"

    .line 63
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lokhttp3/Response;->d()Z

    move-result v4

    if-nez v4, :cond_0

    .line 164
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->b()Ljava/lang/String;

    move-result-object p1

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected code "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    const-string v1, "ServiceArtworkLoadingResult.Empty"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    .line 66
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Lokhttp3/Response;->h()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "response.body()\n        \u2026ot return any response\" }"

    .line 167
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 69
    invoke-static {p1}, Lokio/Okio;->b(Ljava/io/File;)Lokio/Sink;

    move-result-object v4

    invoke-static {v4}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v4

    check-cast v4, Ljava/io/Closeable;

    check-cast v1, Ljava/lang/Throwable;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    move-object v5, v4

    check-cast v5, Lokio/BufferedSink;

    .line 70
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->c()Lokio/BufferedSource;

    move-result-object v6

    check-cast v6, Lokio/Source;

    invoke-interface {v5, v6}, Lokio/BufferedSink;->a(Lokio/Source;)J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    :try_start_5
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->b()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 168
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->b()Ljava/lang/String;

    move-result-object v1

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadArtwork uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", options "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, " config: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " remove wrong size file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " contentLength: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->b()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " file size: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    const-string v1, "ServiceArtworkLoadingResult.Empty"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    return-object p1

    .line 80
    :cond_1
    :try_start_7
    invoke-static {p1, p5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a(Ljava/io/File;Landroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object p1

    const-string v1, "ServiceArtworkLoadingResult.open(tempFile, config)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 69
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_0
    :try_start_a
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 166
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Server did not return any response"

    .line 67
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    const-string v1, "ServiceArtworkLoadingResult.Empty"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 62
    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_1
    :try_start_d
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    :catch_2
    move-exception p1

    .line 170
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->b()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load uri: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' size: \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\' options: \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' config: \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    const-string p2, "ServiceArtworkLoadingResult.Empty"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 162
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Context is null"

    .line 60
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    const-string p2, "ServiceArtworkLoadingResult.Empty"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b(Landroid/net/Uri;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public c(Landroid/net/Uri;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/net/Uri;)J
    .locals 2

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->c()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->a()I

    move-result p1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;->c()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->b()I

    move-result v0

    add-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0
.end method
