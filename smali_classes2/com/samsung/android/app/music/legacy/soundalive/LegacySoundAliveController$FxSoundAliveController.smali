.class Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$FxSoundAliveController;
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
    name = "FxSoundAliveController"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "LegacySoundAliveController$FxSoundAliveController"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$1;)V
    .locals 0

    .line 602
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$FxSoundAliveController;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/media/MediaPlayer;I)V
    .locals 5

    .line 611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.media.IMediaPlayer"

    .line 612
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 613
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 615
    :try_start_0
    sget v2, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;->SET_PRESET:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/support/android/media/MediaPlayerCompat;->setSoundAlive(Landroid/media/MediaPlayer;Landroid/os/Parcel;Landroid/os/Parcel;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_1
    const-string v2, "SMUSIC-LegacySoundAlive"

    .line 619
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$FxSoundAliveController;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - setSoundAlivePreset(), mp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", we might invoke with error state"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 622
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public a(Landroid/media/MediaPlayer;[I)V
    .locals 4

    .line 632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.media.IMediaPlayer"

    .line 633
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 634
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 636
    :try_start_0
    sget v2, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;->SET_USER_EQ_DATA:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    .line 637
    aget v2, p2, v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    .line 638
    aget v2, p2, v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x2

    .line 639
    aget v2, p2, v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x3

    .line 640
    aget v2, p2, v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x4

    .line 641
    aget v2, p2, v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x5

    .line 642
    aget v2, p2, v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x6

    .line 643
    aget p2, p2, v2

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/support/android/media/MediaPlayerCompat;->setSoundAlive(Landroid/media/MediaPlayer;Landroid/os/Parcel;Landroid/os/Parcel;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "SMUSIC-LegacySoundAlive"

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSoundAliveUserEqInternal(), we might invoke with error state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 649
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public b(Landroid/media/MediaPlayer;[I)V
    .locals 4

    .line 659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.media.IMediaPlayer"

    .line 660
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 663
    :try_start_0
    sget v2, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;->SET_USER_EXT_PARAM:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    .line 664
    aget v2, p2, v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    .line 665
    aget v2, p2, v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x2

    .line 666
    aget v2, p2, v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x3

    .line 667
    aget v2, p2, v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x4

    .line 668
    aget p2, p2, v2

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/support/android/media/MediaPlayerCompat;->setSoundAlive(Landroid/media/MediaPlayer;Landroid/os/Parcel;Landroid/os/Parcel;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "SMUSIC-LegacySoundAlive"

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSoundAliveUserExtInternal(), we might invoke with error state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 675
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 674
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 675
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
