.class public Lcom/airbnb/lottie/LottieCompositionFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->a:Ljava/util/Map;

    return-void
.end method

.method private static a(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;)Lcom/airbnb/lottie/LottieImageAsset;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 310
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->j()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieImageAsset;

    .line 311
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 157
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->a(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 163
    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->b(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 166
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->a(Ljava/io/Closeable;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->a(Ljava/io/Closeable;)V

    .line 168
    :cond_1
    throw p1
.end method

.method public static a(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 253
    :try_start_0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->b(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->a(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->a(Ljava/io/Closeable;)V

    .line 256
    throw p1
.end method

.method public static a(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieTask;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 114
    invoke-static {p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/airbnb/lottie/LottieCompositionFactory$2;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory$2;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-static {p0, p1}, Lcom/airbnb/lottie/network/NetworkFetcher;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Lcom/airbnb/lottie/LottieCompositionFactory$6;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory$6;-><init>(Landroid/util/JsonReader;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;>;)",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 325
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->a()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/model/LottieCompositionCache;->a(Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    new-instance p0, Lcom/airbnb/lottie/LottieTask;

    new-instance p1, Lcom/airbnb/lottie/LottieCompositionFactory$8;

    invoke-direct {p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory$8;-><init>(Lcom/airbnb/lottie/LottieComposition;)V

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0

    .line 335
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    sget-object p1, Lcom/airbnb/lottie/LottieCompositionFactory;->a:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieTask;

    return-object p0

    .line 339
    :cond_1
    new-instance v0, Lcom/airbnb/lottie/LottieTask;

    invoke-direct {v0, p1}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 340
    new-instance p1, Lcom/airbnb/lottie/LottieCompositionFactory$9;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieCompositionFactory$9;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieTask;->a(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 348
    new-instance p1, Lcom/airbnb/lottie/LottieCompositionFactory$10;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieCompositionFactory$10;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieTask;->c(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 353
    sget-object p1, Lcom/airbnb/lottie/LottieCompositionFactory;->a:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2
    .param p0    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rawRes_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .line 39
    sget-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static b(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieResult;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 129
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 131
    new-instance p1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static b(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 229
    :try_start_0
    invoke-static {p0}, Lcom/airbnb/lottie/parser/LottieCompositionParser;->a(Landroid/util/JsonReader;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object p0

    .line 230
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->a()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/airbnb/lottie/model/LottieCompositionCache;->a(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    .line 231
    new-instance p1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 233
    new-instance p1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private static b(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 265
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 267
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "__MACOSX"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_1

    .line 269
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 270
    invoke-static {p0, p1, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->a(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieResult;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieComposition;

    move-object v2, v1

    goto :goto_1

    .line 271
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 272
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 273
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    .line 274
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 276
    :cond_2
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 279
    :goto_1
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    .line 287
    new-instance p0, Lcom/airbnb/lottie/LottieResult;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parse composition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 290
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 291
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->a(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;)Lcom/airbnb/lottie/LottieImageAsset;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 293
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieImageAsset;->a(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 298
    :cond_6
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->j()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 299
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieImageAsset;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieImageAsset;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_7

    .line 300
    new-instance p0, Lcom/airbnb/lottie/LottieResult;

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no image for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieImageAsset;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieImageAsset;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 304
    :cond_8
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->a()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Lcom/airbnb/lottie/model/LottieCompositionCache;->a(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    .line 305
    new-instance p0, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {p0, v2}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 282
    new-instance p1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 79
    new-instance v0, Lcom/airbnb/lottie/LottieCompositionFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 96
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asset_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip"

    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->a(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 102
    new-instance p1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method
