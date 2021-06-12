.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$SyncArtworkLoaderHolder;,
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

.field public static final b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field private static final e:[J

.field private static k:I


# instance fields
.field private f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;",
            "[J>;"
        }
    .end annotation
.end field

.field private h:Landroid/app/Application;

.field private final i:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

.field private j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 53
    new-array v1, v0, [J

    sput-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->e:[J

    .line 142
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;-><init>(Landroid/graphics/Bitmap;IILcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$1;)V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    .line 144
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;-><init>(Landroid/graphics/Bitmap;IILcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$1;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArtWork"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->c:Ljava/lang/String;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->d:Ljava/lang/String;

    const v0, 0x7fffffff

    .line 155
    sput v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->k:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->g:Ljava/util/Map;

    .line 62
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->i:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    return-void
.end method

.method private static a(I)I
    .locals 1

    if-ltz p0, :cond_0

    .line 486
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->k:I

    if-le p0, v0, :cond_1

    .line 487
    :cond_0
    sget p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->k:I

    :cond_1
    return p0
.end method

.method private static a(III)I
    .locals 2

    const/4 v0, 0x1

    if-gt p2, p0, :cond_0

    if-le p1, p0, :cond_1

    .line 435
    :cond_0
    div-int/lit8 p2, p2, 0x2

    .line 436
    div-int/lit8 p1, p1, 0x2

    .line 443
    :goto_0
    div-int v1, p2, v0

    if-lt v1, p0, :cond_1

    div-int v1, p1, v0

    if-lt v1, p0, :cond_1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static a(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 354
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(I)I

    move-result p0

    .line 355
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le v0, p0, :cond_3

    .line 359
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 360
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 362
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v0, p0

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    int-to-float v1, p0

    div-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_0

    :cond_2
    int-to-float v1, p0

    mul-float v1, v1, v0

    float-to-int v0, v1

    move v4, v0

    move v0, p0

    move p0, v4

    :goto_0
    const/4 v1, 0x1

    .line 380
    invoke-static {p1, p0, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_3
    return-object p1

    :catchall_0
    move-exception p0

    .line 387
    throw p0
.end method

.method public static a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 398
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->c:Ljava/lang/String;

    const-string p1, "getLocalBitmapFromFileDescriptor() : file does not exist"

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 410
    :try_start_0
    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 411
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 413
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 414
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 416
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(III)I

    move-result p2

    iput p2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 417
    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 418
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 420
    throw p0
.end method

.method public static a(Landroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .line 333
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-nez p0, :cond_0

    .line 335
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->a:Landroid/graphics/Bitmap$Config;

    .line 337
    :cond_0
    iput-object p0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 p0, 0x0

    .line 338
    iput-boolean p0, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
    .locals 3

    .line 75
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;-><init>(Landroid/graphics/Bitmap;IILcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$1;)V

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;II)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
    .locals 2

    .line 89
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;-><init>(Landroid/graphics/Bitmap;IILcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$1;)V

    return-object v0
.end method

.method public static a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;
    .locals 1

    .line 322
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$SyncArtworkLoaderHolder;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    return-object v0
.end method

.method private a(Landroid/app/Application;Ljava/lang/Runnable;)V
    .locals 1

    .line 498
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->h:Landroid/app/Application;

    .line 499
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->j:Ljava/lang/Runnable;

    .line 500
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceLocalLoader;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceLocalLoader;-><init>()V

    .line 501
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

    .line 502
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->g:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->e:[J

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/app/Application;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 311
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Ljava/util/concurrent/Callable;)V

    .line 312
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 313
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sput p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->k:I

    .line 314
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAutoMaxHeight res: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object p1

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Landroid/app/Application;Ljava/lang/Runnable;)V

    return-void
.end method

.method private b()V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->i:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->i:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->i:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->b()V

    return-void

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->j:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 530
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->i:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->d()V

    return-void
.end method

.method private e(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->a(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 188
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->b()V

    .line 189
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->e(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 195
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->b:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    return-object p1

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->h:Landroid/app/Application;

    .line 198
    invoke-static {p1, p2, p3, p5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->c(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->f()Z

    move-result p2

    if-nez p2, :cond_1

    .line 200
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    return-object p1

    .line 203
    :cond_1
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a(I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a()I

    move-result p3

    .line 204
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a()I

    move-result p1

    .line 203
    invoke-static {p2, p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Landroid/graphics/Bitmap;II)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->b()V

    .line 100
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->b()V

    .line 95
    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ArtworkLoadingListener;)V
    .locals 1

    .line 460
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ArtworkLoadingListener;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 456
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->e:[J

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;[J)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;Z)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 481
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;Z)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;[J)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [J
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 471
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->f:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;)V

    .line 472
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    move-result-object v0

    .line 475
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;[J)V

    return-void
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 1

    .line 264
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->b()V

    .line 265
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->e(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;->b(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/net/Uri;)Z
    .locals 1

    .line 275
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->b()V

    .line 276
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->e(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;->a(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/net/Uri;)Z
    .locals 1

    .line 284
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->b()V

    .line 285
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->e(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;->c(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public d(Landroid/net/Uri;)J
    .locals 8

    .line 292
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->b()V

    .line 293
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->e(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    .line 294
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 295
    array-length v2, v1

    if-lez v2, :cond_1

    const-wide/16 v2, 0x0

    .line 297
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-wide v6, v1, v5

    add-long/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 301
    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;->d(Landroid/net/Uri;)J

    move-result-wide v4

    array-length p1, v1

    int-to-long v0, p1

    mul-long v4, v4, v0

    add-long/2addr v4, v2

    return-wide v4

    .line 303
    :cond_1
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;->d(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method
