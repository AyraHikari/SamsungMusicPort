.class public final Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;
.implements Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$OnTagEventListener;
.implements Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;,
        Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;,
        Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/view/View;

.field private f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private g:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

.field private h:J

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private final q:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;

.field private final r:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;)V
    .locals 2

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;-><init>(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->b:Ljava/util/List;

    .line 68
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;-><init>(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;

    const/4 v0, 0x1

    .line 80
    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->i:I

    .line 82
    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->j:I

    .line 84
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->k:Z

    .line 88
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->m:Z

    .line 92
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->o:Z

    .line 94
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->p:Z

    .line 186
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;-><init>(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$OnTagEventListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->q:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;

    .line 188
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->r:Landroid/content/BroadcastReceiver;

    .line 200
    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->a(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->e:Landroid/view/View;

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->d:Landroid/content/Context;

    .line 202
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;-><init>(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->g:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->g:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-nez v0, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->g:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    iget-object v1, v1, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;)V
    .locals 7

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;->a()V

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->b(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 209
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    array-length v2, v2

    new-array v2, v2, [Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;

    const/4 v3, 0x0

    .line 211
    :goto_1
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 212
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;

    aget-object v4, v4, v3

    .line 213
    new-instance v5, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;

    invoke-direct {v5, v4}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;-><init>(Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;)V

    .line 215
    aput-object v5, v2, v3

    .line 216
    iget-object v6, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;

    invoke-interface {v4}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;->dataClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;->a(Ljava/lang/Class;Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 218
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->b:Ljava/util/List;

    new-instance v4, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    .line 219
    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->c(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;)Ljava/util/Map;

    move-result-object v6

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;

    invoke-direct {v4, v5, v1, v2}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;[Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagObservable;)V

    .line 218
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->c()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->b(Z)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->k:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 332
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$LyricsType;->a(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$LyricsType;

    move-result-object p1

    .line 331
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Private;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Private;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Landroid/os/Bundle;)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->d:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Landroid/os/Bundle;)Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Drm;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Drm;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    if-eqz p1, :cond_3

    .line 344
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->l:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->m:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 350
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->e:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "AlbumTagUpdater"

    const-string v0, "setTagsVisibility : Visible"

    .line 351
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 353
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->e:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "AlbumTagUpdater"

    const-string v0, "setTagsVisibility : Invisible"

    .line 354
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private c()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;

    .line 360
    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter;->a()V

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;->a()V

    return-void
.end method

.method private d()V
    .locals 4

    .line 386
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->c:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;

    const-class v1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$ObservableManager;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->r:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private e()V
    .locals 2

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->l:Z

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;->c()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;->a(I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;)V
    .locals 2

    .line 238
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->g:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    .line 239
    iget-object v0, p1, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 240
    iget-object v0, p1, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    iget-object v1, p1, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getContent()Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Landroid/os/Bundle;)V

    .line 241
    iget-object v0, p1, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 242
    iget-object p1, p1, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->c:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    .line 243
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->d:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 245
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->l:Z

    .line 246
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->c()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->p:Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;->b()V

    return-void
.end method

.method public getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method public getState()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->m:Z

    return v0
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onLyricLoadFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V
    .locals 0

    .line 314
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    .line 315
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->c()V

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;->a()V

    const-string v0, "SMUSIC-AlbumTagUpdater"

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onMetadataChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isRadio : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->g:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->g:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->g:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    iget-object v1, v1, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->g:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    iget-object v1, v1, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getContent()Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Landroid/os/Bundle;)V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->g:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->c:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    .line 264
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 265
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 266
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->c()V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 6

    .line 276
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    .line 277
    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->n:Z

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->o:Z

    if-eqz v1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    const/16 v1, 0x190

    .line 279
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(I)V

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->b()V

    .line 283
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->n:Z

    .line 284
    iput-boolean v2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->o:Z

    .line 288
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->i:I

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->j:I

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getSoundPath()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 289
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->i:I

    .line 290
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getSoundPath()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->j:I

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->d:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 295
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->g:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    if-eqz v0, :cond_5

    .line 296
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getContentTimeStamp()J

    move-result-wide v0

    .line 297
    iget-wide v4, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->h:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_5

    .line 298
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->g:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;

    iget-object v2, v2, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector$CollectedEventsArgs;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getContent()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Landroid/os/Bundle;)V

    .line 300
    iput-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->h:J

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_6

    .line 304
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->c()V

    :cond_6
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

.method public onStart()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->d()V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->q:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->a()V

    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->q:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->b()V

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->e()V

    return-void
.end method

.method public setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-string v0, "AlbumTagUpdater"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMediaChangeObservable :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->q:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 112
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->q:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->q:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->q:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagEventCollector;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method public setState(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->m:Z

    .line 147
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->m:Z

    if-eqz p1, :cond_1

    .line 148
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->p:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x190

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(I)V

    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->b()V

    :goto_1
    return-void
.end method
