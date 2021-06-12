.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewControllerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->d_:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->isSupport3DEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewControllerKt;->a:Z

    return-void
.end method

.method public static final synthetic a(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewControllerKt;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewControllerKt;->a:Z

    return v0
.end method

.method private static final b(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    const-string p0, "Settling"

    goto :goto_0

    :pswitch_1
    const-string p0, "Dragging"

    goto :goto_0

    :pswitch_2
    const-string p0, "Idle"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
