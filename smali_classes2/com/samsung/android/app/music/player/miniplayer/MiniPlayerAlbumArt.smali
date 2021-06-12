.class final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;
.super Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/PlayerSceneStateListener;
.implements Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MiniPlayerAlbumArt"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/View;

.field private final d:Lcom/samsung/android/app/music/widget/MusicImageSwitcher;

.field private e:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;

.field private f:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private g:Landroid/widget/ProgressBar;

.field private h:I

.field private i:Z

.field private j:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

.field private k:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

.field private l:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private m:Z

.field private n:Z

.field private o:Z

.field private final p:Landroid/os/Handler;

.field private final q:Landroid/os/Handler;

.field private final r:Ljava/lang/Runnable;

.field private s:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;-><init>()V

    const v0, 0x7f0202e5

    .line 75
    iput v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->f:I

    const v0, 0x7f1000b9

    .line 80
    iput v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->h:I

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->i:Z

    const/4 v1, 0x1

    .line 90
    iput-boolean v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->m:Z

    .line 92
    iput-boolean v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->n:Z

    .line 94
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->o:Z

    .line 330
    new-instance v1, Landroid/os/Handler;

    .line 331
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$2;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->p:Landroid/os/Handler;

    .line 347
    new-instance v1, Landroid/os/Handler;

    .line 348
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$3;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->q:Landroid/os/Handler;

    .line 389
    new-instance v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$4;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->r:Ljava/lang/Runnable;

    .line 415
    new-instance v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$5;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->s:Ljava/lang/Runnable;

    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->b:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->c:Landroid/view/View;

    const p1, 0x7f130259

    .line 100
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->d:Lcom/samsung/android/app/music/widget/MusicImageSwitcher;

    .line 101
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->d:Lcom/samsung/android/app/music/widget/MusicImageSwitcher;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->setAnimateFirstView(Z)V

    .line 102
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->d:Lcom/samsung/android/app/music/widget/MusicImageSwitcher;

    new-instance p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$1;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->g:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->k:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    return-object p1
.end method

.method private a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)V
    .locals 4
    .param p1    # Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 401
    sget-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAlbumArt converter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->e:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", album id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-static {p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->c(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->c(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 405
    iget v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->h:I

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    .line 406
    invoke-static {p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->b(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->c(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->q:Landroid/os/Handler;

    .line 407
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/os/Handler;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 410
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->d:Lcom/samsung/android/app/music/widget/MusicImageSwitcher;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->reset()V

    .line 411
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->q:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->s:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;I)Z
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->i(I)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->l:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->g:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->d:Lcom/samsung/android/app/music/widget/MusicImageSwitcher;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->d:Lcom/samsung/android/app/music/widget/MusicImageSwitcher;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 123
    instance-of v2, v1, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;

    if-eqz v2, :cond_0

    .line 124
    check-cast v1, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->setTagEnabled(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Landroid/view/View;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->c:Landroid/view/View;

    return-object p0
.end method

.method private c(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->d:Lcom/samsung/android/app/music/widget/MusicImageSwitcher;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->d:Lcom/samsung/android/app/music/widget/MusicImageSwitcher;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 133
    instance-of v2, v1, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;

    if-eqz v2, :cond_0

    .line 134
    check-cast v1, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->setBackgroundEnabled(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Landroid/widget/ProgressBar;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->g:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private d(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->n:Z

    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->j:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    return-object p0
.end method

.method private e(I)V
    .locals 0

    const p1, 0x7f0202e5

    .line 194
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->c(I)V

    return-void
.end method

.method private f(I)V
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->g(I)Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->a(Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;)V

    return-void
.end method

.method static synthetic f(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->n:Z

    return p0
.end method

.method private g(I)Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;
    .locals 2

    .line 202
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1005b1

    .line 203
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f1005ae

    .line 205
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 204
    invoke-static {v0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->createFromSize(III)Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;

    move-result-object p1

    return-object p1
.end method

.method static synthetic g(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->e:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;

    return-object p0
.end method

.method static synthetic h(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/music/widget/MusicImageSwitcher;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->d:Lcom/samsung/android/app/music/widget/MusicImageSwitcher;

    return-object p0
.end method

.method private h(I)V
    .locals 3

    .line 209
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->b()V

    .line 210
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->i(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 211
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->m:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->p:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 215
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->p:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x1

    .line 216
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->m:Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic i(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->f:I

    return p0
.end method

.method private i(I)Z
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->d:Lcom/samsung/android/app/music/widget/MusicImageSwitcher;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->d:Lcom/samsung/android/app/music/widget/MusicImageSwitcher;

    .line 227
    invoke-virtual {v0}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    .line 232
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->j:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    if-nez p1, :cond_1

    .line 233
    new-instance p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->l:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->j:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    .line 235
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->j:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->j:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    .line 236
    invoke-static {p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->b(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->d(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v1
.end method

.method static synthetic j(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->k:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->l:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->h(I)V

    return-void
.end method

.method public a(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 314
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->c(Z)V

    .line 315
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->o:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->b(Z)V

    .line 316
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->d(Z)V

    goto :goto_0

    .line 308
    :cond_0
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->c(Z)V

    .line 309
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->b(Z)V

    .line 310
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->d(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->d:Lcom/samsung/android/app/music/widget/MusicImageSwitcher;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->e:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;

    return-void
.end method

.method a(Z)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->d:Lcom/samsung/android/app/music/widget/MusicImageSwitcher;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->d:Lcom/samsung/android/app/music/widget/MusicImageSwitcher;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public b(I)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 140
    iput p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->h:I

    return-object p0
.end method

.method public c(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 156
    iput p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->f:I

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->e(I)V

    .line 190
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->f(I)V

    return-void
.end method

.method public getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->l:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 0

    .line 250
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;->onCreateCalled(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 251
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->m:Z

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 271
    new-instance v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->j:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    .line 273
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->n:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEditedMetadata()Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->b()V

    .line 282
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->o:Z

    .line 283
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->o:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->b(Z)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    .line 288
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->h(I)V

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
    .locals 2

    .line 256
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->i:Z

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->a()V

    :cond_0
    return-void
.end method

.method public onStopCalled()V
    .locals 0

    .line 265
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->b()V

    .line 266
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;->onStopCalled()V

    return-void
.end method

.method public setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->l:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-void
.end method
