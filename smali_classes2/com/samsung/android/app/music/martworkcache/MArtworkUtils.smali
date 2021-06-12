.class public Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$ArtworkCacheSettingsProvider;,
        Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$CheckMilkLoadedArtworkSize;
    }
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:I

.field private static d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

.field private static final e:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

.field private static final f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

.field private static final g:[I

.field private static final h:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->c:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a:Landroid/net/Uri;

    .line 63
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->b:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->b:Landroid/net/Uri;

    .line 65
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->a:I

    sput v0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->c:I

    .line 103
    new-instance v0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;

    invoke-direct {v0}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkAlbumArtLoader;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->e:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    .line 106
    new-instance v0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkArtLoader;

    invoke-direct {v0}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkArtLoader;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    const/4 v0, 0x4

    .line 109
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->g:[I

    .line 113
    new-instance v0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$2;

    invoke-direct {v0}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->h:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    return-void

    :array_0
    .array-data 4
        0x7f100087
        0x7f100086
        0x7f1000b6
        0x7f1000b7
    .end array-data
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 218
    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 283
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 284
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 287
    invoke-static {p0, p1, p1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 291
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 292
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 293
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 294
    invoke-virtual {v6, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    sub-int p2, v4, v1

    int-to-float p2, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    sub-int v2, v4, v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 295
    invoke-virtual {v6, p0, p2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-lez p1, :cond_2

    if-le v4, p1, :cond_2

    .line 300
    invoke-static {v5, p1, p1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v5

    :goto_0
    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 239
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 240
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 242
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 243
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 245
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 246
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 247
    invoke-virtual {v2, p1, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 248
    invoke-virtual {v2, p0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static a(I)Landroid/net/Uri;
    .locals 2

    .line 123
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/CpAttrs;->a(I)I

    move-result v0

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x80000

    if-eq v0, v1, :cond_0

    .line 133
    sget-object p0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->b:Landroid/net/Uri;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1

    .line 128
    sget-object p0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->b:Landroid/net/Uri;

    return-object p0

    .line 130
    :cond_1
    sget-object p0, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$Album;->a:Landroid/net/Uri;

    return-object p0

    .line 125
    :cond_2
    sget-object p0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public static a(Landroid/net/Uri;J)Landroid/net/Uri;
    .locals 0

    .line 214
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Application;ZZ)V
    .locals 1

    .line 144
    new-instance v0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$ArtworkCacheSettingsProvider;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$ArtworkCacheSettingsProvider;-><init>(Landroid/app/Application;ZZ)V

    .line 147
    new-instance p2, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$3;-><init>(Landroid/app/Application;)V

    .line 186
    invoke-static {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(Landroid/app/Application;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)V

    .line 190
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/martworkcache/URIChangeReceiver;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->b(Z)V

    return-void
.end method

.method static a()[I
    .locals 1

    .line 318
    sget-object v0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->g:[I

    return-object v0
.end method

.method public static b(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 313
    sget p0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->c:I

    return p0

    :cond_0
    const p0, 0x7f020257

    return p0
.end method

.method public static b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 253
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 254
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    if-le v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sub-int/2addr v0, v1

    .line 260
    div-int/lit8 v0, v0, 0x2

    move v2, v1

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    if-le v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    sub-int/2addr v1, v0

    .line 263
    div-int/lit8 v1, v1, 0x2

    move v2, v0

    const/4 v0, 0x0

    .line 265
    :goto_2
    invoke-static {p0, v0, v1, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b()Lokhttp3/OkHttpClient;
    .locals 1

    .line 57
    invoke-static {}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->i()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private static b(Z)V
    .locals 2

    xor-int/lit8 p0, p0, 0x1

    .line 203
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v0

    .line 204
    invoke-static {}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->h()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;Z)V

    .line 205
    sget-object v1, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->e:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;Z)V

    .line 206
    sget-object v1, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;Z)V

    return-void
.end method

.method private static c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 222
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gt v0, p1, :cond_0

    return-object p0

    :cond_0
    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 227
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 228
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    const/4 v1, 0x1

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-gtz p1, :cond_2

    const/4 p1, 0x1

    .line 235
    :cond_2
    invoke-static {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
    .locals 1

    .line 57
    invoke-static {}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->h()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
    .locals 1

    .line 57
    sget-object v0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->e:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    return-object v0
.end method

.method static synthetic e()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
    .locals 1

    .line 57
    sget-object v0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    return-object v0
.end method

.method static synthetic f()Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;
    .locals 1

    .line 57
    sget-object v0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->h:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    return-object v0
.end method

.method static synthetic g()[I
    .locals 1

    .line 57
    sget-object v0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->g:[I

    return-object v0
.end method

.method private static declared-synchronized h()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
    .locals 4

    const-class v0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;

    new-instance v2, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$1;

    invoke-direct {v2}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$1;-><init>()V

    const-string v3, "^https{0,1}.*"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoader;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    .line 91
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 82
    monitor-exit v0

    throw v1
.end method

.method private static i()Lokhttp3/OkHttpClient;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-wide/16 v0, 0x2710

    .line 97
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoaderKt;->a(J)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/samsung/android/app/music/network/secure/CachedSystemCertificatePinning;->a()Lcom/samsung/android/app/music/network/secure/CachedSystemCertificatePinning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/network/secure/CachedSystemCertificatePinning;->b()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->a(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;

    .line 100
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->b()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
