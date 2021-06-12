.class public final Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintUriInfoRequest;,
        Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;,
        Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;,
        Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;,
        Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;,
        Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintColorCacheHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_TSP:Z = true

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final mUriValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDefaultBitmapColors:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUiUriHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->DEBUG:Z

    .line 31
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->LOG_TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mValues:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mUriValues:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mUiHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Landroid/os/Handler;

    .line 49
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mUiUriHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 25
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mDefaultBitmapColors:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    return-object p0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mDefaultBitmapColors:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getGradientColorResult(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500()Ljava/util/Map;
    .locals 1

    .line 25
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mValues:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800()Ljava/util/Map;
    .locals 1

    .line 25
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mUriValues:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mUiUriHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getGradientColorResult(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 335
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 337
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    .line 341
    invoke-static {p1, v3, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 344
    :cond_0
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    invoke-static {p1}, Lcom/sec/android/gradient_color_extractor/music/MusicColorExtractor;->a(Landroid/graphics/Bitmap;)Lcom/sec/android/gradient_color_extractor/music/MusicColorExtractor$ExtractionResult;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/gradient_color_extractor/music/MusicColorExtractor$ExtractionResult;->e:Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;-><init>(Lcom/sec/android/gradient_color_extractor/music/MusicColorSet;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$1;)V

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 347
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGradientColorResult() takes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->primaryColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorB:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;
    .locals 1

    .line 63
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintColorCacheHolder;->access$000()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getColor(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
    .locals 2

    if-nez p3, :cond_1

    .line 306
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mDefaultBitmapColors:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    if-nez p3, :cond_0

    .line 308
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getDefaultBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 307
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getGradientColorResult(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mDefaultBitmapColors:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    .line 310
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mDefaultBitmapColors:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    .line 311
    sget-object p3, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mUriValues:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 314
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mUriValues:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    if-nez v0, :cond_3

    .line 316
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->bitmap_size_middle:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    if-le v0, p1, :cond_2

    const/4 v0, 0x1

    .line 320
    invoke-static {p3, p1, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 322
    :cond_2
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getGradientColorResult(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    move-result-object p1

    .line 323
    sget-object p3, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mUriValues:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getColor(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/Bitmap;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;)V
    .locals 2
    .param p3    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 229
    sget-boolean p3, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->DEBUG:Z

    if-eqz p3, :cond_0

    .line 230
    sget-object p3, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getColor() called with: baseUri = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], info = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_0
    sget-object p3, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mValues:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    if-eqz p3, :cond_2

    .line 236
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 237
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPublishArtwork getColor cached. baseUri = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " res ="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->primaryColor:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorA:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;->gradientColorB:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_1
    invoke-interface {p5, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;->onGetTintUriInfo(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V

    return-void

    :cond_2
    if-nez p4, :cond_3

    .line 249
    sget p3, Lcom/samsung/android/app/musiclibrary/R$dimen;->bitmap_size_middle:I

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p3

    new-instance p4, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$4;

    invoke-direct {p4, p0, p1, p2, p5}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$4;-><init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;Landroid/content/Context;Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;)V

    .line 250
    invoke-virtual {p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    goto :goto_0

    .line 290
    :cond_3
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mUriValues:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    if-nez p1, :cond_4

    .line 292
    invoke-direct {p0, p4}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getGradientColorResult(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    move-result-object p1

    .line 293
    sget-object p3, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mUriValues:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_4
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mUiUriHandler:Landroid/os/Handler;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    .line 298
    new-instance p4, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintUriInfoRequest;

    const/4 v0, 0x0

    invoke-direct {p4, p5, p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintUriInfoRequest;-><init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$1;)V

    iput-object p4, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 299
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public getColor(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;)V
    .locals 6
    .param p3    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 224
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/Bitmap;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintUriInfo;)V

    return-void
.end method

.method public getColor(Landroid/content/Context;Landroid/net/Uri;JILcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;)V
    .locals 8
    .param p5    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    .line 150
    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;JILcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;Landroid/os/Looper;)V

    return-void
.end method

.method public getColor(Landroid/content/Context;Landroid/net/Uri;JILcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;Landroid/os/Looper;)V
    .locals 11
    .param p5    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    move-object v6, p2

    move-wide v7, p3

    move-object/from16 v5, p6

    .line 155
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getColor() called with: baseUri = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], albumId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "], l = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    new-instance v3, Landroid/util/Pair;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v3, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mValues:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    if-eqz v0, :cond_1

    .line 163
    invoke-interface {v5, p2, p3, p4, v0}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;->onGetTintInfo(Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V

    return-void

    .line 167
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 170
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->bitmap_size_middle:I

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p7

    move-object/from16 v5, p6

    move-object v6, p2

    move-wide v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;Landroid/content/Context;Landroid/util/Pair;Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;Landroid/net/Uri;J)V

    .line 171
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    return-void
.end method
