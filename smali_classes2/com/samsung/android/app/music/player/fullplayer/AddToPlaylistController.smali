.class public Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;


# static fields
.field private static final a:Ljava/lang/String; = "AddToPlaylistController"

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Landroid/app/Activity;

.field private final d:Landroid/view/View;

.field private e:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->f:Z

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->c:Landroid/app/Activity;

    const v0, 0x7f13028e

    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->d:Landroid/view/View;

    .line 55
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->d:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->d:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 71
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f(Landroid/content/Context;)Z

    move-result p2

    const v0, 0x7f0b020f

    if-eqz p2, :cond_0

    .line 72
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->d:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->a:I

    sget v2, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->f:I

    or-int/2addr v1, v2

    invoke-static {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a(Landroid/view/View;I)V

    .line 73
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->d:Landroid/view/View;

    .line 74
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {p2, v1}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setContent(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 76
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->d:Landroid/view/View;

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;)Landroid/app/Activity;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->c:Landroid/app/Activity;

    return-object p0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->e:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 105
    sget-object p1, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->b:Ljava/lang/String;

    const-string v0, "addToPlaylistSingleItem but id is empty id !!!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 108
    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide v0, v2, v3

    const/4 v0, 0x0

    invoke-static {p1, v2, v0}, Lcom/samsung/android/app/music/activity/AddToPlaylistActivity;->a(Landroid/app/Activity;[JLandroid/os/Bundle;)V

    .line 109
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "301"

    const-string v1, "4029"

    .line 110
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;Landroid/app/Activity;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Z)V
    .locals 0

    .line 120
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->d:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 121
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->d:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ebd70a4    # 0.37f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->e:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method public getState()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->f:Z

    return v0
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->f:Z

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Z)V

    .line 83
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 85
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->a(Z)V

    :cond_1
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

.method public setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->e:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-void
.end method

.method public setState(Z)V
    .locals 1

    .line 145
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->f:Z

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->e:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->e:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/AddToPlaylistController;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Z)V

    :cond_0
    return-void
.end method
