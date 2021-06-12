.class public final Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->g:Z

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->a:Landroid/content/Context;

    const p1, 0x7f130298

    .line 51
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->b:Landroid/view/View;

    const p1, 0x7f130070

    .line 52
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->c:Landroid/widget/TextView;

    const p1, 0x7f13019a

    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->d:Landroid/widget/TextView;

    .line 55
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1b

    if-lt p1, p2, :cond_0

    .line 56
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/util/MarqueeAccessibilityDelegate;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/MarqueeAccessibilityDelegate;-><init>()V

    .line 59
    iget-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->c:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 60
    iget-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method

.method private a()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(ZZ)V
    .locals 3

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x190

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 167
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    invoke-static {p2, p1, v0, v1, v2}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 168
    iget-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    invoke-static {p2, p1, v0, v1, v2}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 170
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->b:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/4 p1, 0x4

    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->e:Ljava/lang/String;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public getState()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->g:Z

    return v0
.end method

.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroyCalled()V
    .locals 0

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 127
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->a:Landroid/content/Context;

    const v1, 0x7f0b02c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->e:Ljava/lang/String;

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->e:Ljava/lang/String;

    .line 132
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->f:Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->a()V

    return-void
.end method

.method public onPauseCalled()V
    .locals 0

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

.method public onResumeCalled()V
    .locals 0

    return-void
.end method

.method public onStartCalled()V
    .locals 1

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->a(Z)V

    return-void
.end method

.method public onStopCalled()V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->a(Z)V

    return-void
.end method

.method public setState(Z)V
    .locals 1

    .line 159
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->g:Z

    .line 160
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->g:Z

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockPlayerPlayingItemText;->a(ZZ)V

    return-void
.end method
