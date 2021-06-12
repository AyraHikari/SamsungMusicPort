.class Lcom/samsung/android/app/music/cover/CoverQueueWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/cover/CoverQueueWrapper$AlbumArtUpdateHandler;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/ImageView;

.field private final e:Landroid/widget/ImageView;

.field private final f:Landroid/widget/ProgressBar;

.field private final g:Landroid/view/View;

.field private final h:Lcom/samsung/android/app/music/cover/CoverQueue;

.field private i:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/cover/CoverQueueFragment;Landroid/view/View;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper$AlbumArtUpdateHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/cover/CoverQueueWrapper$AlbumArtUpdateHandler;-><init>(Lcom/samsung/android/app/music/cover/CoverQueueWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->a:Landroid/os/Handler;

    .line 47
    new-instance v0, Lcom/samsung/android/app/music/cover/CoverQueue;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/cover/CoverQueue;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->h:Lcom/samsung/android/app/music/cover/CoverQueue;

    const v0, 0x7f130070

    .line 48
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->b:Landroid/widget/TextView;

    const v0, 0x7f13019a

    .line 49
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->c:Landroid/widget/TextView;

    const v0, 0x7f1301e7

    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->d:Landroid/widget/ImageView;

    const v0, 0x7f1301ea

    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->e:Landroid/widget/ImageView;

    const v0, 0x7f1301eb

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->f:Landroid/widget/ProgressBar;

    const v0, 0x7f130193

    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->g:Landroid/view/View;

    .line 56
    iget-object p2, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->g:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/cover/CoverQueueWrapper$1;-><init>(Lcom/samsung/android/app/music/cover/CoverQueueWrapper;Lcom/samsung/android/app/music/cover/CoverQueueFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/cover/CoverQueueWrapper;)Landroid/widget/ImageView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->e:Landroid/widget/ImageView;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f1000b7

    .line 115
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object p1

    .line 116
    invoke-static {p3}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, p4, p5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->a:Landroid/os/Handler;

    .line 117
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/os/Handler;)V

    .line 119
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->i:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p1

    const/4 p2, 0x0

    const/4 p4, 0x6

    if-ne p1, p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 121
    :goto_0
    invoke-static {p3}, Lcom/samsung/android/app/music/provider/CpAttrs;->c(I)Z

    move-result p3

    if-nez p3, :cond_1

    if-eqz p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 123
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->e:Landroid/widget/ImageView;

    sget p2, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->c:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->d:Landroid/widget/ImageView;

    sget p2, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->c:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/cover/CoverQueueWrapper;)Landroid/widget/ImageView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/cover/CoverQueueWrapper;)Landroid/widget/ProgressBar;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->f:Landroid/widget/ProgressBar;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->h:Lcom/samsung/android/app/music/cover/CoverQueue;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/cover/CoverQueue;->a()V

    return-void
.end method

.method a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->i:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-ne v0, p1, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->i:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->i:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 93
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->i:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->i:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->i:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->h:Lcom/samsung/android/app/music/cover/CoverQueue;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/cover/CoverQueue;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    return-void
.end method

.method a(Z)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->h:Lcom/samsung/android/app/music/cover/CoverQueue;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/cover/CoverQueue;->a(Z)V

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 6

    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v3

    long-to-int v3, v3

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v4

    move-object v0, p0

    .line 71
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/cover/CoverQueueWrapper;->a(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
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
