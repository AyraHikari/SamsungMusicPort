.class final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;

.field private final e:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;

.field private f:J

.field private g:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 44
    iput-wide v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->f:J

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->g:Z

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->a:Landroid/content/Context;

    const p1, 0x7f130070

    .line 51
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->b:Landroid/widget/TextView;

    .line 52
    new-instance p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->b:Landroid/widget/TextView;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->d:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;

    const p1, 0x7f13019a

    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->c:Landroid/widget/TextView;

    .line 54
    new-instance p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;

    iget-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->c:Landroid/widget/TextView;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->e:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;

    .line 56
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1b

    if-lt p1, p2, :cond_0

    .line 57
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/util/MarqueeAccessibilityDelegate;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/MarqueeAccessibilityDelegate;-><init>()V

    .line 60
    iget-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 61
    iget-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->c:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method

.method private a()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->d:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->a()V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->e:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->a()V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->a:Landroid/content/Context;

    const v2, 0x7f0b02c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->i(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 116
    :pswitch_0
    iget-object p4, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->b:Landroid/widget/TextView;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->c:Landroid/widget/TextView;

    const-string p4, "%s / %s"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-static {p4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    if-eqz p4, :cond_0

    .line 108
    iget-object p3, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->d:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;

    invoke-virtual {p3, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->a(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->e:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->b:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
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
    .locals 8

    .line 188
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    long-to-int v0, v0

    .line 189
    invoke-static {p1}, Lcom/samsung/android/app/music/service/metadata/MediaDataUtils;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->a()V

    goto :goto_1

    .line 192
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbum()Ljava/lang/String;

    move-result-object p1

    .line 195
    iget-boolean v4, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->g:Z

    if-nez v4, :cond_1

    iget-wide v4, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->f:J

    int-to-long v6, v0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-direct {p0, v1, v3, p1, v4}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 197
    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->g:Z

    int-to-long v0, v0

    .line 198
    iput-wide v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->f:J

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

    .line 162
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->b(Z)V

    return-void
.end method

.method public onStopCalled()V
    .locals 1

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->g:Z

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerPlayingItemText;->b(Z)V

    return-void
.end method
