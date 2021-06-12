.class public Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$HighlightPlayRunnable;,
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$LowBatteryPopup;,
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;,
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;,
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnHighlightExtractProgressListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PreviewPlayer"

.field private static final b:Ljava/lang/String;

.field private static final c:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Landroid/os/Handler;

.field private final f:Landroid/media/AudioManager;

.field private final g:Landroid/os/BatteryManager;

.field private final h:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$HighlightPlayRunnable;

.field private i:Landroid/media/MediaPlayer;

.field private j:Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;

.field private k:Landroid/net/Uri;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

.field private r:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;

.field private s:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnHighlightExtractProgressListener;

.field private t:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$LowBatteryPopup;

.field private final u:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b:Ljava/lang/String;

    .line 43
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->c:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->e:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$HighlightPlayRunnable;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$HighlightPlayRunnable;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->h:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$HighlightPlayRunnable;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->o:I

    .line 70
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->p:I

    .line 656
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->u:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d:Landroid/content/Context;

    .line 122
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->f:Landroid/media/AudioManager;

    .line 123
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d:Landroid/content/Context;

    const-string v0, "batterymanager"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->g:Landroid/os/BatteryManager;

    .line 124
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    .line 125
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 126
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 127
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 128
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->r:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;

    return-object p0
.end method

.method private a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .line 465
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d:Landroid/content/Context;

    const-string v1, "_data"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 466
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 469
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_data"

    .line 470
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_0

    .line 474
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method

.method private a([Ljava/lang/StackTraceElement;II)Ljava/lang/String;
    .locals 2

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr p3, p2

    .line 713
    array-length v1, p1

    if-ge v1, p3, :cond_0

    array-length p3, p1

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_1

    .line 715
    aget-object v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 716
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 718
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(I)V
    .locals 1

    .line 132
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->o:I

    if-eq p1, v0, :cond_0

    .line 133
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->o:I

    .line 134
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->r:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->r:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->o:I

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;->a(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->c(I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 374
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSourceInternal() - path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 376
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b:Ljava/lang/String;

    const-string v0, "setDataSourceInternal() - Media player is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 380
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 381
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 382
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 390
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSourceInternal() - SecurityException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->playback_failed_msg:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d(I)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 387
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSourceInternal() - IOException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->playback_failed_msg:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d(I)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 384
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSourceInternal() - IllegalStateException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->playback_failed_msg:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d(I)V

    :goto_0
    return-void
.end method

.method private b(J)Landroid/net/Uri;
    .locals 1

    .line 169
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->e:Landroid/os/Handler;

    return-object p0
.end method

.method private b(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->p:I

    return-void
.end method

.method private b(Landroid/net/Uri;)V
    .locals 2

    if-nez p1, :cond_0

    .line 486
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b:Ljava/lang/String;

    const-string v0, "extractHighlight uri is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->s()V

    return-void

    .line 490
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 491
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->c:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 493
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->l:I

    .line 494
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->l:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->c(I)V

    .line 495
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->q:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    if-eqz p1, :cond_1

    .line 496
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->q:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;->a(Z)V

    .line 497
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->q:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;->e()V

    .line 499
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->p()V

    return-void

    .line 503
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i()V

    .line 504
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->h:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$HighlightPlayRunnable;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$HighlightPlayRunnable;->a(Landroid/net/Uri;)V

    .line 505
    new-instance v1, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;

    invoke-direct {v1}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->j:Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;

    .line 506
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->j:Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;

    invoke-virtual {v1, p1, v0, p0}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->extractHighlight(Landroid/net/Uri;Ljava/lang/String;Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d(I)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->q:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    return-object p0
.end method

.method private c(I)V
    .locals 2

    .line 281
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->o:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->o:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 286
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b:Ljava/lang/String;

    const-string v0, "seekInternal() - Media player is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void

    .line 282
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->s()V

    return-void
.end method

.method private d(I)V
    .locals 4

    .line 444
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 445
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleError() - message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b(Ljava/lang/String;)V

    .line 448
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->highlights_track_not_supported:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 450
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->q:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    if-eqz p1, :cond_2

    .line 451
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->q:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;->a(Z)V

    goto :goto_1

    .line 454
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->q:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    if-eqz p1, :cond_2

    .line 455
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->q:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;->g()V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->o()V

    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->p()V

    return-void
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m()Landroid/util/LruCache;
    .locals 1

    .line 33
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->c:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic n()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a:Ljava/lang/String;

    return-object v0
.end method

.method private o()V
    .locals 3

    .line 145
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->o:I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->p:I

    if-eq v0, v1, :cond_1

    .line 146
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeToTargetStateInternal() state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", target-state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->p:I

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 160
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b()V

    return-void

    :pswitch_1
    const/4 v0, 0x1

    .line 157
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(Z)V

    return-void

    .line 154
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->p()V

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->c()V

    return-void

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private p()V
    .locals 5

    .line 222
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status"

    const/4 v2, 0x1

    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 226
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->g:Landroid/os/BatteryManager;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-gt v1, v2, :cond_0

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->t:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$LowBatteryPopup;

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->t:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$LowBatteryPopup;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$LowBatteryPopup;->a()V

    return-void

    .line 242
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->n:Z

    if-eqz v0, :cond_1

    .line 243
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a:Ljava/lang/String;

    const-string v1, "playInternal() - only playReady"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->n:Z

    return-void

    .line 247
    :cond_1
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->w:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d:Landroid/content/Context;

    .line 248
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->unable_to_play_during_call:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b(Ljava/lang/String;)V

    return-void

    .line 254
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->o:I

    const/4 v1, 0x3

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->o:I

    if-eq v0, v1, :cond_3

    .line 255
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->s()V

    return-void

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    if-nez v0, :cond_4

    .line 259
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b:Ljava/lang/String;

    const-string v1, "playInternal() - Media player is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 263
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->f:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->u:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 264
    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMUSIC-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playInternal() - request audio focus result : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 270
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(I)V

    return-void
.end method

.method private q()V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->s:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnHighlightExtractProgressListener;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->s:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnHighlightExtractProgressListener;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnHighlightExtractProgressListener;->a()V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->s:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnHighlightExtractProgressListener;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->s:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnHighlightExtractProgressListener;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnHighlightExtractProgressListener;->b()V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 5

    .line 693
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 694
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 695
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->o:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " called from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    .line 696
    invoke-direct {p0, v0, v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a([Ljava/lang/StackTraceElement;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 695
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 699
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 0

    .line 636
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b(J)Landroid/net/Uri;

    move-result-object p1

    .line 637
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->c:Landroid/util/LruCache;

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 641
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(Z)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->p()V

    :goto_0
    return-void
.end method

.method public a(JZZ)V
    .locals 3

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b(J)Landroid/net/Uri;

    move-result-object v0

    .line 183
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/privatemode/DefaultPrivateUtils;->a(Landroid/content/Context;J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 187
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->personal_item_set_as_error:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d(I)V

    return-void

    .line 190
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    move-result-object p1

    .line 191
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 192
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->error_not_support_type:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d(I)V

    return-void

    .line 195
    :cond_2
    iput-boolean p4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->n:Z

    .line 196
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->m:Z

    const/4 p1, 0x0

    .line 197
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->l:I

    .line 198
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->k:Landroid/net/Uri;

    if-ne p2, v0, :cond_4

    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->o:I

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    .line 200
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b(Landroid/net/Uri;)V

    goto :goto_0

    .line 202
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->c(I)V

    .line 203
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->p()V

    :goto_0
    return-void

    .line 207
    :cond_4
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->k:Landroid/net/Uri;

    .line 208
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 209
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b(I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$LowBatteryPopup;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->t:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$LowBatteryPopup;

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnHighlightExtractProgressListener;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->s:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnHighlightExtractProgressListener;

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->r:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;)V
    .locals 0

    .line 645
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->q:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 294
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->o:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->s()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->h()V

    .line 301
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    if-nez p1, :cond_2

    .line 302
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b:Ljava/lang/String;

    const-string v0, "pause() - Media player is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 305
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    const/4 p1, 0x3

    .line 306
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(I)V

    .line 307
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b(I)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->h()V

    .line 312
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->m:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->q:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->q:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;->a(Z)V

    .line 317
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->o:I

    if-nez v0, :cond_1

    .line 318
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->s()V

    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    .line 322
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b:Ljava/lang/String;

    const-string v1, "stopPlayer() - Media player is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x4

    .line 326
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(I)V

    .line 327
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b(I)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->h()V

    const/4 v0, 0x0

    .line 335
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->l:I

    const/4 v1, 0x0

    .line 336
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->k:Landroid/net/Uri;

    .line 337
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(I)V

    .line 338
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b(I)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 342
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b()V

    .line 343
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i()V

    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 346
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 353
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->q:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    .line 354
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->r:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;

    .line 355
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->s:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnHighlightExtractProgressListener;

    .line 357
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->k:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 358
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->l:I

    return-void
.end method

.method public e()I
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    :goto_0
    return v0
.end method

.method public f()I
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->f:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->u:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public i()V
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->j:Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->j:Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->close()V

    const/4 v0, 0x0

    .line 618
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->j:Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;

    .line 620
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->r()V

    return-void
.end method

.method public j()Landroid/content/Intent;
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->k:Landroid/net/Uri;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->l:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->getResultIntent(Landroid/net/Uri;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public k()Landroid/net/Uri;
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->k:Landroid/net/Uri;

    return-object v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 411
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a:Ljava/lang/String;

    const-string v0, "onCompletion()"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->q:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    if-eqz p1, :cond_0

    .line 413
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->q:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;->f()V

    :cond_0
    const/4 p1, 0x0

    .line 415
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(Z)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 420
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer onError() - what : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extra : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    if-nez p3, :cond_0

    .line 423
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/app/musiclibrary/R$string;->sdcard_removed_msg:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 424
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_0
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->playback_failed_msg:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d(I)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onExtractError(I)V
    .locals 3

    .line 594
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExtractError - error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->r()V

    const/4 v0, 0x0

    .line 596
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->l:I

    .line 598
    sget v0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->OPEN_ERR_UNSUPPORT_FILE_TYPE:I

    if-ne p1, v0, :cond_1

    .line 599
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->highlights_track_not_supported:I

    .line 600
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->q:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->q:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;->e()V

    .line 603
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->p()V

    goto :goto_0

    .line 605
    :cond_1
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->error_unknown:I

    .line 607
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->e:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExtractFinished(Landroid/net/Uri;J)V
    .locals 3

    .line 522
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExtractFinished offset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->i()V

    .line 524
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    long-to-int p2, p2

    .line 525
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->l:I

    goto :goto_0

    .line 527
    :cond_0
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->l:I

    .line 529
    :goto_0
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->l:I

    if-gez p2, :cond_1

    .line 530
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->l:I

    .line 531
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a:Ljava/lang/String;

    const-string p2, "Extract canceled"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 534
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->h:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$HighlightPlayRunnable;

    iget p3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->l:I

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$HighlightPlayRunnable;->a(Landroid/net/Uri;I)V

    return-void
.end method

.method public onExtractStarted(Z)V
    .locals 3

    .line 511
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExtractStarted isStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 513
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->q:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    if-eqz p1, :cond_0

    .line 514
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->q:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;->a(Z)V

    .line 516
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->q()V

    :cond_1
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 397
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SMUSIC-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared() - fromHighlight  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 398
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(I)V

    .line 399
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->m:Z

    if-eqz p1, :cond_0

    .line 400
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->k:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b(Landroid/net/Uri;)V

    goto :goto_0

    .line 402
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->q:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    if-eqz p1, :cond_1

    .line 403
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->q:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;->e()V

    .line 405
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->p()V

    :goto_0
    return-void
.end method
