.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;,
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$FileUtils;,
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;
    }
.end annotation


# static fields
.field private static final CUSTOM_IMAGE:Ljava/lang/String; = "/custom_image"

.field private static final DATA_USER:Ljava/lang/String; = "/data/user/"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final GRADIENT_BASE_COLOR:I

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaCenter"

.field private static final ORIGINAL_BLUR_IMAGE_FILE_NAME:Ljava/lang/String; = "OriginalBlurImage.jpg"

.field private static final PREF_KEY_LAST_SAVED_URI:Ljava/lang/String; = "last_saved_uri_as_starting_window"

.field private static final SEPARATOR:Ljava/lang/String; = "/"

.field private static final STARTING_WINDOW_FILE_NAME_LAND:Ljava/lang/String; = "CustomStartingWindowImage_land.jpg"

.field private static final STARTING_WINDOW_FILE_NAME_PORT:Ljava/lang/String; = "CustomStartingWindowImage_port.jpg"

.field private static final SUB_TAG:Ljava/lang/String; = "StartingWindow: "

.field private static final TAG:Ljava/lang/String; = "SV-MediaCenter"

.field private static final THREAD_NAME_STARTING_WINDOW:Ljava/lang/String; = "smusic_window_saver"

.field private static final USE_LATEST_SAVE_METHOD:Z

.field private static volatile sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private volatile mAndroidBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

.field private mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

.field private mBgSaveThread:Landroid/os/HandlerThread;

.field private final mBlurSizeResId:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field

.field private final mClsAppMain:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentAlbumId:J

.field private mDefaultBlurAlbumArt:Landroid/graphics/Bitmap;

.field private mLastSavedUri:Landroid/net/Uri;

.field private final mSupportLandscape:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->USE_LATEST_SAVE_METHOD:Z

    const/16 v0, 0xfa

    .line 219
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->GRADIENT_BASE_COLOR:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/Class;IZ)V
    .locals 0
    .param p3    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;IZ)V"
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    .line 173
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mClsAppMain:Ljava/lang/Class;

    .line 174
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBlurSizeResId:I

    .line 175
    iput-boolean p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mSupportLandscape:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;)Landroid/content/Context;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 62
    sget v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->GRADIENT_BASE_COLOR:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->save(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;)V

    return-void
.end method

.method private cancelSaveRequest()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/Class;I)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 147
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->createInstance(Landroid/content/Context;Ljava/lang/Class;IZ)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    move-result-object p0

    return-object p0
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/Class;IZ)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;IZ)",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;"
        }
    .end annotation

    .line 152
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    if-nez v0, :cond_1

    .line 153
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    monitor-enter v0

    .line 154
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;-><init>(Landroid/content/Context;Ljava/lang/Class;IZ)V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    .line 158
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 160
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    return-object p0
.end method

.method private deleteMusicLaunchImage(Landroid/content/Context;)V
    .locals 4

    .line 390
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->getSavedFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 392
    invoke-direct {p0, p1, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->setCustomStartingImage(Landroid/content/Context;ILjava/lang/String;)V

    const/4 v3, 0x1

    .line 393
    invoke-direct {p0, p1, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->setCustomStartingImage(Landroid/content/Context;ILjava/lang/String;)V

    .line 396
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 400
    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v1, p1, v2

    .line 402
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensureLastSavedUri()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mLastSavedUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->getLastSavedUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 256
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mLastSavedUri:Landroid/net/Uri;

    return-void
.end method

.method private declared-synchronized ensureSaverThread()V
    .locals 2

    monitor-enter p0

    .line 584
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 585
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "smusic_window_saver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveThread:Landroid/os/HandlerThread;

    .line 586
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

    if-nez v0, :cond_1

    .line 589
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 583
    monitor-exit p0

    throw v0
.end method

.method private getAlphaMaskBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "SMUSIC-SV-MediaCenter"

    const-string v0, "StartingWindow: trying to alpha masking but it\'s result is null. Please check alpha masking logic"

    .line 496
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 500
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 501
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 502
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 503
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    .line 504
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 505
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v3, 0xa2

    .line 507
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    .line 508
    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 481
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mAndroidBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    if-nez v0, :cond_0

    .line 482
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    .line 483
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBlurSizeResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mAndroidBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mAndroidBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "SMUSIC-SV-MediaCenter"

    const-string v0, "StartingWindow: trying to apply blur effect, the the result is null. Please check the blur method."

    .line 487
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_1
    return-object p1
.end method

.method private static getCenterCrop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 7

    .line 554
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 555
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v2, p1, v0

    .line 557
    div-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    mul-int p2, p2, v1

    .line 558
    div-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    sub-int p1, v0, v2

    .line 559
    div-int/lit8 p1, p1, 0x2

    sub-int v3, v1, p2

    .line 560
    div-int/lit8 v3, v3, 0x2

    if-eqz p3, :cond_0

    const-string v4, "SMUSIC-SV-MediaCenter"

    .line 562
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartingWindow: saveMusicLaunchImage newWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " width : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " cropX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v4, "SMUSIC-SV-MediaCenter"

    .line 566
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartingWindow: saveMusicLaunchImage newHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " height : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " cropY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v4, 0x0

    if-eqz p3, :cond_1

    .line 572
    :try_start_0
    invoke-static {p0, p1, v4, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 574
    :cond_1
    invoke-static {p0, v4, v3, v0, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    const-string p1, "SMUSIC-SV-MediaCenter"

    .line 577
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "StartingWindow: IllegalArgumentException during saveMusicLaunchImage msg : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 577
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getDefaultBlurAlbumArt()Landroid/graphics/Bitmap;
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mDefaultBlurAlbumArt:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mDefaultBlurAlbumArt:Landroid/graphics/Bitmap;

    return-object v0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_blur_default_bg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "SMUSIC-SV-MediaCenter"

    const-string v1, "default image is not exist !!"

    .line 308
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 311
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 312
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mDefaultBlurAlbumArt:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;
    .locals 2

    .line 164
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    return-object v0

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please call createInstance method first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getLastSavedUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "music_service_pref"

    const/4 v1, 0x4

    .line 384
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "last_saved_uri_as_starting_window"

    const/4 v1, 0x0

    .line 386
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOriginalBlurFromDisk(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    .line 423
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/custom_image"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 426
    new-instance v0, Ljava/io/File;

    const-string v1, "OriginalBlurImage.jpg"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 429
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getSavedFolder(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 410
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->USE_LATEST_SAVE_METHOD:Z

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/custom_image"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 414
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/UserHandleCompat;->myUserId()I

    move-result v0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/user/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/custom_image"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 417
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$FileUtils;->access$300(Ljava/io/File;)V

    return-object p0
.end method

.method private isLatestRequest(Landroid/net/Uri;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 264
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 265
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mCurrentAlbumId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private resizeBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 4

    .line 514
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "SMUSIC-SV-MediaCenter"

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartingWindow: saveMusicLaunchImage width : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isPortrait : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    .line 526
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 527
    :goto_0
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v3, :cond_1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_2

    :cond_1
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_2

    .line 529
    :cond_2
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_3

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    :cond_3
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 530
    :goto_1
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v3, :cond_4

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_2

    :cond_4
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 536
    :goto_2
    invoke-static {p1, v1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->getCenterCrop(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_5

    const-string p1, "SMUSIC-SV-MediaCenter"

    const-string v0, "StartingWindow: trying to save music launch image but it is fail to crop. Please check the album art spec."

    .line 538
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_5
    const/4 v2, 0x0

    .line 543
    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p1, "SMUSIC-SV-MediaCenter"

    const-string v0, "StartingWindow: trying to scale to screen size but it\'s result is null. Please check sale logic"

    .line 545
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_6
    return-object p1
.end method

.method private save(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;)V
    .locals 7

    .line 333
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;->bm:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 334
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->getDefaultBlurAlbumArt()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "SMUSIC-SV-MediaCenter"

    const-string v0, "The default image doesn\'t exist. Please check logic."

    .line 336
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->deleteMusicLaunchImage(Landroid/content/Context;)V

    return-void

    .line 340
    :cond_0
    iput-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;->bm:Landroid/graphics/Bitmap;

    .line 341
    iput-boolean v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;->isBlur:Z

    .line 344
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 345
    iget-boolean v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;->isBlur:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;->bm:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;->bm:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    const-string p1, "SMUSIC-SV-MediaCenter"

    const-string v0, "Blur bitmap is null. It seems to be failed parsing in FW side."

    .line 348
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 351
    :cond_3
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;->artKey:Landroid/net/Uri;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mLastSavedUri:Landroid/net/Uri;

    .line 352
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->getSavedFolder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "OriginalBlurImage.jpg"

    .line 353
    invoke-direct {p0, v0, p1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->saveToPrivateData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->getAlphaMaskBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 359
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->resizeBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v5, "CustomStartingWindowImage_port.jpg"

    .line 361
    invoke-direct {p0, v4, p1, v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->saveToPrivateData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 362
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->setCustomStartingImage(Landroid/content/Context;ILjava/lang/String;)V

    .line 363
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mSupportLandscape:Z

    if-eqz v4, :cond_4

    .line 364
    invoke-direct {p0, v0, v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->resizeBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v4, "CustomStartingWindowImage_land.jpg"

    invoke-direct {p0, v0, p1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->saveToPrivateData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 366
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->setCustomStartingImage(Landroid/content/Context;ILjava/lang/String;)V

    :cond_4
    const-string p1, "SMUSIC-SV-MediaCenter"

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartingWindow: saveMusicLaunchImage elapsed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " milli sec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mLastSavedUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->saveLastSaveInfo(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private static saveLastSaveInfo(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    const-string v0, "music_service_pref"

    const/4 v1, 0x4

    .line 376
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 378
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "last_saved_uri_as_starting_window"

    .line 379
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveToPrivateData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 435
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 438
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 441
    :cond_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 442
    :try_start_0
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x0

    .line 443
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    :try_start_2
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 442
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 444
    :try_start_4
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception p3

    :try_start_5
    invoke-virtual {v0, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p1

    .line 445
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 447
    :goto_2
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setCustomStartingImage(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    .line 451
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mClsAppMain:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/UserHandleCompat;->myUserId()I

    move-result v1

    const-string v2, "activity"

    .line 453
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    if-nez p3, :cond_0

    .line 457
    invoke-static {p1, v0, v1, v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->a(Landroid/app/ActivityManager;Landroid/content/ComponentName;ILjava/io/FileDescriptor;I)Z

    goto :goto_2

    .line 464
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 467
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p3

    invoke-static {p1, v0, v1, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->a(Landroid/app/ActivityManager;Landroid/content/ComponentName;ILjava/io/FileDescriptor;I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v2, p1

    .line 464
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v2, :cond_1

    .line 473
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception p2

    :try_start_5
    invoke-virtual {v2, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p1

    const-string p2, "SMUSIC-SV-MediaCenter"

    .line 474
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StartingWindow: setCustomStartingImage ignored : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private updateGradientBitmap(Landroid/net/Uri;)V
    .locals 9

    const-string v0, "SMUSIC-SV-MediaCenter"

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateGradientBitmap() called with: uri = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 227
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 228
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBlurSizeResId:I

    new-instance v8, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$1;

    invoke-direct {v8, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;Landroid/net/Uri;)V

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;JILcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;)V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->cancelSaveRequest()V

    .line 182
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mCurrentAlbumId:J

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 270
    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    .line 271
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mAndroidBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    .line 272
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mAndroidBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->release()V

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 278
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    .line 281
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 282
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveThread:Landroid/os/HandlerThread;

    :cond_2
    return-void
.end method

.method public requestSaveStartingWindow(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V
    .locals 3

    const-string v0, "SMUSIC-SV-MediaCenter"

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartingWindow: requestSaveStartingWindow. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$1;)V

    .line 290
    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;->artKey:Landroid/net/Uri;

    .line 291
    iput-object p2, v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;->bm:Landroid/graphics/Bitmap;

    .line 292
    iput-boolean p3, v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;->isBlur:Z

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->ensureSaverThread()V

    .line 295
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 296
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 297
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 298
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->mBgSaveHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
