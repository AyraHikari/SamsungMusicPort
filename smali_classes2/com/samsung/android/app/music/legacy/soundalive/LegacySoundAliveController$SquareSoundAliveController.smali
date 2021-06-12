.class Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$ISoundAliveController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SquareSoundAliveController"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "LegacySoundAliveController$SquareSoundAliveController"

.field private static final b:Landroid/util/SparseIntArray;

.field private static final c:Landroid/util/SparseIntArray;

.field private static final d:Landroid/util/SparseIntArray;


# instance fields
.field private final e:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

.field private f:I

.field private g:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 425
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->b:Landroid/util/SparseIntArray;

    .line 428
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->c:Landroid/util/SparseIntArray;

    .line 431
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->d:Landroid/util/SparseIntArray;

    .line 434
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->c:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->b:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 435
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->c:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->c:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 436
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->c:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->e:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 437
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->c:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->f:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 439
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->b:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->g:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 441
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->d:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 442
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->d:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->i:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 444
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->b:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 445
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->b:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->l:I

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 446
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->b:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->m:I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 447
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->b:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->n:I

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 448
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->b:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 449
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->b:Landroid/util/SparseIntArray;

    sget v1, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->o:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 0

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->e:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    return-void
.end method

.method private a(SS)V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->g:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->setBandLevel(SS)V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 372
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 4

    .line 463
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->g:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->f:I

    iget-object v1, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->e:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getAudioSessionId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->e:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->f:I

    .line 465
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->f:I

    new-instance v3, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController$1;-><init>(Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;-><init>(IILcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$OnSdlErrorListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->g:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    .line 472
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->g:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->setEnabled(Z)V

    const-string v0, "SMUSIC-LegacySoundAlive"

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - SquareSoundAlive is created! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Audio session id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private d()V
    .locals 2

    .line 484
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->c()V

    .line 488
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->g:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->usePreset(S)V

    .line 489
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->g:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->setSquarePosition(II)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->g:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    if-nez v0, :cond_0

    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->g:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->release()V

    return-void
.end method

.method public a(Landroid/media/MediaPlayer;I)V
    .locals 3

    .line 494
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->c()V

    .line 495
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->d()V

    .line 496
    sget-object p1, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->c:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 498
    div-int/lit8 v1, p1, 0x5

    .line 499
    rem-int/lit8 p1, p1, 0x5

    .line 500
    iget-object v2, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->g:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    invoke-virtual {v2, v1, p1}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->setSquarePosition(II)V

    .line 503
    :cond_0
    sget-object p1, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->b:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    int-to-short p1, p1

    if-eq p1, v0, :cond_1

    .line 505
    iget-object v1, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->g:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->usePreset(S)V

    .line 508
    :cond_1
    sget-object p1, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->d:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    int-to-short p1, p1

    if-eq p1, v0, :cond_2

    .line 510
    iget-object p2, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->g:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->setStrength(SS)V

    :cond_2
    return-void
.end method

.method public a(Landroid/media/MediaPlayer;[I)V
    .locals 1

    .line 516
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->c()V

    const/4 p1, 0x0

    .line 520
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 521
    aget v0, p2, p1

    int-to-short v0, v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->a(SS)V

    add-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Landroid/media/MediaPlayer;[I)V
    .locals 7

    .line 531
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->c()V

    const/4 p1, 0x3

    .line 536
    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 537
    aget v1, p2, v0

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    aput v1, p1, v0

    const/4 v1, 0x1

    .line 538
    aget v2, p2, v1

    int-to-double v5, v2

    mul-double v5, v5, v3

    double-to-int v2, v5

    aput v2, p1, v1

    const/4 v1, 0x4

    .line 539
    aget p2, p2, v1

    int-to-double v1, p2

    mul-double v1, v1, v3

    double-to-int p2, v1

    const/4 v1, 0x2

    aput p2, p1, v1

    .line 545
    :goto_0
    array-length p2, p1

    if-ge v0, p2, :cond_0

    .line 546
    iget-object p2, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->g:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    aget v1, p1, v0

    int-to-short v1, v1

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->setStrength(SS)V

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    :cond_0
    return-void
.end method
