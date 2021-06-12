.class final Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerShareableImpl;
.super Lcom/samsung/android/app/music/AbsShareableWithDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/menu/PlayerMenuGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlayerShareableImpl"
.end annotation


# instance fields
.field private final c:Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instance"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "share_music_from_player"

    .line 536
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/AbsShareableWithDialog;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    .line 537
    instance-of p1, p2, Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;

    if-nez p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p2, Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;

    iput-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerShareableImpl;->c:Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;

    return-void
.end method

.method private final c()J
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerShareableImpl;->c:Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;->k()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method


# virtual methods
.method protected b()[J
    .locals 5

    .line 544
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerShareableImpl;->c()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 545
    new-array v0, v2, [J

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 546
    new-array v0, v0, [J

    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerShareableImpl;->c()J

    move-result-wide v3

    aput-wide v3, v0, v2

    :goto_0
    return-object v0
.end method
