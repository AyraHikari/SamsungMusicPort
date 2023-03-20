.class public final Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;
.super Ljava/lang/Object;
.source "FullPlayer.kt"

# interfaces
.implements Lcom/samsung/android/app/music/widget/transition/i$d;
.implements Lcom/samsung/android/app/music/player/fullplayer/m;
.implements Lcom/samsung/android/app/music/player/volume/i;
.implements Lcom/samsung/android/app/musiclibrary/ui/v$a;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/a;
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/j$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;,
        Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$a;
    }
.end annotation


# instance fields
.field public A:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

.field public B:Lcom/samsung/android/app/music/databinding/n;

.field public C:Lcom/samsung/android/app/music/player/fullplayer/MelonTrackDetailGetter;

.field public D:Lcom/samsung/android/app/music/player/fullplayer/n;

.field public E:Lcom/samsung/android/app/music/player/v3/PlayController;

.field public F:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

.field public G:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;

.field public H:Lcom/samsung/android/app/musiclibrary/ui/dex/e;

.field public I:Lcom/samsung/android/app/musiclibrary/ui/dex/f;

.field public J:Lcom/samsung/android/app/music/player/SeekController;

.field public K:Lcom/samsung/android/app/music/player/volume/VolumeController;

.field public L:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

.field public M:Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;

.field public N:Lcom/samsung/android/app/music/player/fullplayer/RecommendController;

.field public O:Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;

.field public P:Lcom/samsung/android/app/music/player/v3/m;

.field public Q:Lcom/samsung/android/app/music/player/v3/j;

.field public R:Lcom/samsung/android/app/music/service/v3/observers/gesture/AirBrowseController;

.field public final S:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$i;

.field public final a:Lcom/samsung/android/app/music/activity/h;

.field public final b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

.field public final c:Lkotlin/g;

.field public final d:Lkotlin/g;

.field public final e:Lkotlin/g;

.field public final f:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

.field public final g:Lcom/samsung/android/app/music/n;

.field public final h:Lkotlin/g;

.field public final o:Lkotlin/g;

.field public final p:Lkotlin/g;

.field public final q:Landroid/view/ViewGroup;

.field public final r:Landroid/view/View;

.field public final s:Lkotlin/g;

.field public t:Lcom/samsung/android/app/musiclibrary/h;

.field public u:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerCloseController;

.field public v:Lcom/samsung/android/app/music/player/v3/c;

.field public w:Lcom/samsung/android/app/music/player/v3/FavoriteController;

.field public x:Lcom/samsung/android/app/music/player/fullplayer/QueueController;

.field public y:Lcom/samsung/android/app/music/player/fullplayer/p;

.field public z:Lcom/samsung/android/app/music/lyrics/v3/LyricsController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/activity/h;Lcom/samsung/android/app/music/player/vi/PlayerViCache;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:Lcom/samsung/android/app/music/activity/h;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    .line 4
    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$b;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$b;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ktx/util/a;->a(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->c:Lkotlin/g;

    .line 5
    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$k;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$k;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 6
    new-instance v0, Landroidx/lifecycle/k0;

    const-class v1, Lcom/samsung/android/app/music/viewmodel/d;

    invoke-static {v1}, Lkotlin/jvm/internal/z;->a(Ljava/lang/Class;)Lkotlin/reflect/b;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$l;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$l;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v0, v1, v2, p2}, Landroidx/lifecycle/k0;-><init>(Lkotlin/reflect/b;Lkotlin/jvm/functions/a;Lkotlin/jvm/functions/a;)V

    .line 7
    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->d:Lkotlin/g;

    .line 8
    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$m;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$m;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ktx/util/a;->a(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->e:Lkotlin/g;

    .line 9
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/v3/a;->q:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->f:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    .line 10
    new-instance p2, Lcom/samsung/android/app/music/n;

    invoke-direct {p2}, Lcom/samsung/android/app/music/n;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->g:Lcom/samsung/android/app/music/n;

    .line 11
    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$j;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$j;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ktx/util/a;->a(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->h:Lkotlin/g;

    .line 12
    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$n;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$n;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ktx/util/a;->a(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o:Lkotlin/g;

    .line 13
    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$c;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$c;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ktx/util/a;->a(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p:Lkotlin/g;

    const p2, 0x1020002

    .line 14
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/f;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q:Landroid/view/ViewGroup;

    .line 15
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "from(activity)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "container"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->s0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->r:Landroid/view/View;

    .line 16
    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$g;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$g;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    invoke-static {p2}, Lkotlin/h;->b(Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->s:Lkotlin/g;

    .line 17
    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$i;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$i;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->S:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$i;

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p0()Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/viewmodel/d;->P()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/g;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/g;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/s;Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public static final synthetic A(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->A:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    return-object p0
.end method

.method public static final synthetic B(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/v3/a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->f:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    return-object p0
.end method

.method public static final synthetic C(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/n;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->g:Lcom/samsung/android/app/music/n;

    return-object p0
.end method

.method public static final synthetic D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:Lcom/samsung/android/app/music/activity/h;

    return-object p0
.end method

.method public static final synthetic F(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;

    return-object p0
.end method

.method public static final synthetic G(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->M:Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;

    return-object p0
.end method

.method public static final synthetic I(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->k0()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic J(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/h;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->t:Lcom/samsung/android/app/musiclibrary/h;

    return-object p0
.end method

.method public static final synthetic K(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/b;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->l0()Lcom/samsung/android/app/musiclibrary/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic L(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/RecommendController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->N:Lcom/samsung/android/app/music/player/fullplayer/RecommendController;

    return-object p0
.end method

.method public static final synthetic M(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Landroid/view/View$OnLayoutChangeListener;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->m0()Landroid/view/View$OnLayoutChangeListener;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic N(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/n;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D:Lcom/samsung/android/app/music/player/fullplayer/n;

    return-object p0
.end method

.method public static final synthetic O(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/MelonTrackDetailGetter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->C:Lcom/samsung/android/app/music/player/fullplayer/MelonTrackDetailGetter;

    return-object p0
.end method

.method public static final synthetic P(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$i;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->S:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$i;

    return-object p0
.end method

.method public static final synthetic Q(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/ui/player/c;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic R(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/vi/PlayerViCache;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    return-object p0
.end method

.method public static final synthetic S(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/viewmodel/d;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p0()Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic T(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/volume/VolumeController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->K:Lcom/samsung/android/app/music/player/volume/VolumeController;

    return-object p0
.end method

.method public static final synthetic U(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Lcom/samsung/android/app/music/viewmodel/d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->x0(Lcom/samsung/android/app/music/viewmodel/d;)V

    return-void
.end method

.method public static synthetic Z(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;IZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->Y(IZLjava/lang/String;)V

    return-void
.end method

.method public static final d0(Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;Lcom/samsung/android/app/music/viewmodel/b;)V
    .locals 1

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/music/viewmodel/b;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;->A(I)V

    return-void
.end method

.method public static final j0(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Landroid/view/View;)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p0()Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/k;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    move v1, p1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v3, "queueButton"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->Z(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;IZLjava/lang/String;ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->k0()Landroid/content/Context;

    move-result-object p0

    const-string p1, "general_click_event"

    const-string v0, "click_event"

    const-string v1, "fullplayer_click_current_playlist"

    .line 3
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/app/music/player/logger/googlefirebase/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic n(Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;Lcom/samsung/android/app/music/viewmodel/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->d0(Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;Lcom/samsung/android/app/music/viewmodel/b;)V

    return-void
.end method

.method public static synthetic q(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->s(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic r(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->j0(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Landroid/view/View;)V

    return-void
.end method

.method public static final s(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Ljava/lang/Boolean;)V
    .locals 8

    const-string v0, "Ui"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "FullPlayer"

    .line 3
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lyricQueueFullScreenEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:Lcom/samsung/android/app/music/activity/h;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ktx/app/a;->k(Landroid/app/Activity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:Lcom/samsung/android/app/music/activity/h;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ktx/app/a;->k(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->c()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 7
    :try_start_0
    instance-of v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_3

    .line 8
    new-instance v1, Landroidx/constraintlayout/widget/d;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/d;-><init>()V

    .line 9
    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/d;->g(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const-string v2, "fullMode"

    .line 10
    invoke-static {p1, v2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const v3, 0x7f0b03aa

    const/4 v4, 0x7

    const v5, 0x7f0b024b

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v1

    .line 11
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/d;->j(IIIII)V

    const v3, 0x7f0b02c7

    const/4 v4, 0x7

    const v5, 0x7f0b024b

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v1

    .line 12
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/d;->j(IIIII)V

    goto :goto_1

    :cond_2
    const v3, 0x7f0b03aa

    const/4 v4, 0x7

    const v5, 0x7f0b0225

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v1

    .line 13
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/d;->j(IIIII)V

    const v3, 0x7f0b02c7

    const/4 v4, 0x7

    const v5, 0x7f0b0225

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v1

    .line 14
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/d;->j(IIIII)V

    .line 15
    :goto_1
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/widget/d;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_2

    .line 16
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "Constraints not applied to view : "

    .line 17
    invoke-static {p1, p0}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 18
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const-string p1, "Exceptional case with constraints function "

    .line 19
    invoke-static {p1, p0}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static final synthetic t(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a0()V

    return-void
.end method

.method public static final synthetic u(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Landroid/view/View;)Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->c0(Landroid/view/View;)Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic v(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->e0()Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic w(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->f0(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic x(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/lyrics/v3/LyricsController;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->g0()Lcom/samsung/android/app/music/lyrics/v3/LyricsController;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic y(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Landroid/view/View;)Lcom/samsung/android/app/music/player/fullplayer/p;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->i0(Landroid/view/View;)Lcom/samsung/android/app/music/player/fullplayer/p;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public H(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V
    .locals 4

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    :cond_0
    const-string v1, "FullPlayer"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPlaybackStateChanged :"

    .line 4
    invoke-static {v1, p1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->M:Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;->f(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;->f(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->F:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->f(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V

    .line 8
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->E:Lcom/samsung/android/app/music/player/v3/PlayController;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/v3/PlayController;->f(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V

    .line 9
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->J:Lcom/samsung/android/app/music/player/SeekController;

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/SeekController;->f(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V

    .line 10
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->z:Lcom/samsung/android/app/music/lyrics/v3/LyricsController;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    const-string v0, "lyricsController"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/lyrics/v3/LyricsController;->F(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V

    .line 11
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->K:Lcom/samsung/android/app/music/player/volume/VolumeController;

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;->j()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;->p()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/player/volume/VolumeController;->H(II)V

    .line 12
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->R:Lcom/samsung/android/app/music/service/v3/observers/gesture/AirBrowseController;

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;->J()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/service/v3/observers/gesture/AirBrowseController;->f(Z)V

    .line 13
    :goto_6
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->A:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    if-nez v0, :cond_9

    const-string v0, "actionBarMenuController"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    move-object v1, v0

    :goto_7
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;->j()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;->p()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->G(II)V

    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->L:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

    if-nez v0, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->t(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/j;)V

    :goto_8
    return-void
.end method

.method public final V(Lcom/samsung/android/app/music/player/vi/e;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->r(Lcom/samsung/android/app/music/player/vi/e;)V

    return-void
.end method

.method public final W(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:Lcom/samsung/android/app/music/activity/h;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/r;->M(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 3
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :goto_0
    return-void
.end method

.method public final X(Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater$a;Landroid/view/View;)Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater$a;
    .locals 6

    const v0, 0x7f0b03ee

    .line 1
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.private_tag)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/samsung/android/app/music/player/v3/fullplayer/tag/p$b;

    sget-object v3, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/m;->a:Lcom/samsung/android/app/music/player/v3/fullplayer/tag/m;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater$a;->c(Landroid/view/View;[Lcom/samsung/android/app/music/player/v3/fullplayer/tag/p$b;)Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater$a;

    move-result-object v0

    const v2, 0x7f0b029b

    .line 2
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v2, "view.findViewById<TextVi\u2026>(R.id.left_bottom_tags1)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/n;

    invoke-direct {v2}, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/n;-><init>()V

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/samsung/android/app/music/player/v3/fullplayer/tag/p$b;

    .line 4
    sget-object v5, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/m;->b:Lcom/samsung/android/app/music/player/v3/fullplayer/tag/m;

    aput-object v5, v3, v4

    .line 5
    sget-object v4, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/m;->c:Lcom/samsung/android/app/music/player/v3/fullplayer/tag/m;

    aput-object v4, v3, v1

    .line 6
    sget-object v1, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/m;->d:Lcom/samsung/android/app/music/player/v3/fullplayer/tag/m;

    const/4 v4, 0x2

    aput-object v1, v3, v4

    .line 7
    sget-object v1, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/m;->e:Lcom/samsung/android/app/music/player/v3/fullplayer/tag/m;

    const/4 v4, 0x3

    aput-object v1, v3, v4

    .line 8
    invoke-virtual {v0, p2, v2, v3}, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater$a;->a(Landroid/view/View;Lcom/samsung/android/app/music/player/v3/fullplayer/tag/p$a;[Lcom/samsung/android/app/music/player/v3/fullplayer/tag/p$b;)Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater$a;

    return-object p1
.end method

.method public final Y(IZLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/player/d0;->f(IZLjava/lang/String;)V

    return-void
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->L:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->a()V

    :goto_0
    return-void
.end method

.method public final a0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b0()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:Lcom/samsung/android/app/music/activity/h;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/v;->addOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/v$a;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;Lcom/samsung/android/app/music/widget/transition/i$g;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p2}, Lcom/samsung/android/app/music/widget/transition/i$g;->b()Lcom/samsung/android/app/music/widget/transition/i$g$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/transition/i$g$a;->c()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->c()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->w0(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/music/widget/transition/i$g;->b()Lcom/samsung/android/app/music/widget/transition/i$g$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/transition/i$g$a;->a()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->w()V

    .line 5
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/app/music/widget/transition/i$g;->a()Landroid/os/Bundle;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p0()Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/player/k;->l()I

    move-result p2

    const-string v0, "key_view_type"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x0

    const-string v0, "attachScene"

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->Y(IZLjava/lang/String;)V

    return-void
.end method

.method public final b0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$d;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$d;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->l0()Lcom/samsung/android/app/musiclibrary/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/b;->addOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/h;I)V

    .line 3
    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->t:Lcom/samsung/android/app/musiclibrary/h;

    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->r:Landroid/view/View;

    return-object v0
.end method

.method public final c0(Landroid/view/View;)Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater$a;

    const v1, 0x7f0b053a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "view.findViewById(R.id.tag_container)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater$a;-><init>(Landroid/view/View;Z)V

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->X(Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater$a;Landroid/view/View;)Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater$a;

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater$a;->d()Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p0()Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/viewmodel/d;->M()Lcom/samsung/android/app/music/viewmodel/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/viewmodel/c;->o()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:Lcom/samsung/android/app/music/activity/h;

    new-instance v2, Lcom/samsung/android/app/music/player/fullplayer/h;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/music/player/fullplayer/h;-><init>(Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/s;Landroidx/lifecycle/a0;)V

    return-object p1
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->L:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->d()V

    :goto_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->L:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->e()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final e0()Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->B:Lcom/samsung/android/app/music/databinding/n;

    if-nez v1, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:Lcom/samsung/android/app/music/activity/h;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;-><init>(Lcom/samsung/android/app/music/databinding/n;Lcom/samsung/android/app/music/activity/h;)V

    .line 2
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->S:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$i;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;->y0(Landroidx/viewpager2/widget/ViewPager2$i;)V

    return-object v0
.end method

.method public f()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->K:Lcom/samsung/android/app/music/player/volume/VolumeController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->f()Z

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public final f0(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->k0()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/dex/f;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->g:Lcom/samsung/android/app/music/n;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/dex/f;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/a;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->I:Lcom/samsung/android/app/musiclibrary/ui/dex/f;

    .line 3
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/dex/e;

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->k0()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->K:Lcom/samsung/android/app/music/player/volume/VolumeController;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/app/music/player/volume/VolumeController;->y()Lcom/samsung/android/app/musiclibrary/ui/dex/h;

    move-result-object v2

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->g:Lcom/samsung/android/app/music/n;

    .line 7
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/dex/e;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/dex/h;Lcom/samsung/android/app/musiclibrary/ui/player/a;)V

    .line 8
    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->H:Lcom/samsung/android/app/musiclibrary/ui/dex/e;

    .line 9
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/dex/b;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->k0()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/dex/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_1
    return-void
.end method

.method public g()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->K:Lcom/samsung/android/app/music/player/volume/VolumeController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->g()Z

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public final g0()Lcom/samsung/android/app/music/lyrics/v3/LyricsController;
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/app/music/lyrics/v3/LyricsController;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:Lcom/samsung/android/app/music/activity/h;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p0()Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/lyrics/v3/LyricsController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Lcom/samsung/android/app/music/player/k;I)V

    .line 2
    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$e;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$e;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/lyrics/v3/LyricsController;->D(Lkotlin/jvm/functions/l;)V

    .line 3
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->M:Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$f;

    invoke-direct {v2, v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$f;-><init>(Lcom/samsung/android/app/music/lyrics/v3/LyricsController;Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;->B0(Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/d0;)V

    :goto_0
    return-object v0
.end method

.method public h(Lcom/samsung/android/app/music/widget/transition/i$g;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->t()V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/transition/i$g;->b()Lcom/samsung/android/app/music/widget/transition/i$g$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/widget/transition/i$g$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->t0(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/transition/i$g;->a()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->u0(Landroid/os/Bundle;)V

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->a()V

    return-void
.end method

.method public h0(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/p;)V
    .locals 3

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->M:Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v2, p1, v1, v2}, Lcom/samsung/android/app/music/player/vi/h$a;->d(Lcom/samsung/android/app/music/player/vi/h;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/k;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/p;ILjava/lang/Object;)V

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->P:Lcom/samsung/android/app/music/player/v3/m;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, v2, p1, v1, v2}, Lcom/samsung/android/app/music/player/vi/h$a;->d(Lcom/samsung/android/app/music/player/vi/h;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/k;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/p;ILjava/lang/Object;)V

    .line 3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->Q:Lcom/samsung/android/app/music/player/v3/j;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v0, v2, p1, v1, v2}, Lcom/samsung/android/app/music/player/vi/h$a;->d(Lcom/samsung/android/app/music/player/vi/h;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/k;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/p;ILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->K:Lcom/samsung/android/app/music/player/volume/VolumeController;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->i()V

    :goto_0
    return-void
.end method

.method public final i0(Landroid/view/View;)Lcom/samsung/android/app/music/player/fullplayer/p;
    .locals 3

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/p;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:Lcom/samsung/android/app/music/activity/h;

    new-instance v2, Lcom/samsung/android/app/music/player/fullplayer/f;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/player/fullplayer/f;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/app/music/player/fullplayer/p;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public j(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->t()V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->b()V

    .line 3
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public j1(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V
    .locals 3

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    :cond_0
    const-string v1, "FullPlayer"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMetaChanged :"

    .line 4
    invoke-static {v1, p1}, Lkotlin/jvm/internal/j;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->u:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerCloseController;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "closeController"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerCloseController;->l(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->M:Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;->l(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;->l(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->F:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->l(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 9
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->E:Lcom/samsung/android/app/music/player/v3/PlayController;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/v3/PlayController;->l(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 10
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->G:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;->l(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 11
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->w:Lcom/samsung/android/app/music/player/v3/FavoriteController;

    if-nez v0, :cond_7

    const-string v0, "favoriteController"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v1

    :cond_7
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/v3/FavoriteController;->l(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->v:Lcom/samsung/android/app/music/player/v3/c;

    if-nez v0, :cond_8

    const-string v0, "addToPlaylistController"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v1

    :cond_8
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/v3/c;->g(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 13
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->A:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    if-nez v0, :cond_9

    const-string v0, "actionBarMenuController"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    move-object v0, v1

    :cond_9
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->E(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->z:Lcom/samsung/android/app/music/lyrics/v3/LyricsController;

    if-nez v0, :cond_a

    const-string v0, "lyricsController"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    move-object v1, v0

    :goto_5
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/lyrics/v3/LyricsController;->E(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->J:Lcom/samsung/android/app/music/player/SeekController;

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/SeekController;->l(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 16
    :goto_6
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->N:Lcom/samsung/android/app/music/player/fullplayer/RecommendController;

    if-nez v0, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/RecommendController;->C(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 17
    :goto_7
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->C:Lcom/samsung/android/app/music/player/fullplayer/MelonTrackDetailGetter;

    if-nez v0, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/MelonTrackDetailGetter;->t(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    .line 18
    :goto_8
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->L:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

    if-nez v0, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->p()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->s(J)V

    :goto_9
    return-void
.end method

.method public k()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p0()Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/viewmodel/d;->e0()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->J:Lcom/samsung/android/app/music/player/SeekController;

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/SeekController;->F()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->M:Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;->O()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public final k0()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->c:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public k1(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/k;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/p;)V
    .locals 3

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    :cond_0
    const-string v1, "FullPlayer"

    .line 3
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueueChanged :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->R:Lcom/samsung/android/app/music/service/v3/observers/gesture/AirBrowseController;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/k;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/v3/observers/gesture/AirBrowseController;->j(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->M:Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;->j(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/k;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/p;)V

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->P:Lcom/samsung/android/app/music/player/v3/m;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/player/v3/m;->j(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/k;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/p;)V

    .line 8
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->Q:Lcom/samsung/android/app/music/player/v3/j;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/player/v3/j;->j(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/k;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/p;)V

    :goto_3
    return-void
.end method

.method public l(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/widget/transition/i$d$a;->a(Lcom/samsung/android/app/music/widget/transition/i$d;F)V

    return-void
.end method

.method public final l0()Lcom/samsung/android/app/musiclibrary/b;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/b;

    return-object v0
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final m0()Landroid/view/View$OnLayoutChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->s:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnLayoutChangeListener;

    return-object v0
.end method

.method public final n0()Lcom/samsung/android/app/music/player/j;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->h:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/j;

    return-object v0
.end method

.method public o(Lcom/samsung/android/app/music/player/volume/i$a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->K:Lcom/samsung/android/app/music/player/volume/VolumeController;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/volume/VolumeController;->o(Lcom/samsung/android/app/music/player/volume/i$a;)V

    :goto_0
    return-void
.end method

.method public final o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->e:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/c;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x15

    const/4 v1, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x16

    if-eq p1, v0, :cond_8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->H:Lcom/samsung/android/app/musiclibrary/ui/dex/e;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/dex/e;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->K:Lcom/samsung/android/app/music/player/volume/VolumeController;

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/player/volume/VolumeController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    if-nez v0, :cond_8

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->I:Lcom/samsung/android/app/musiclibrary/ui/dex/f;

    if-nez v0, :cond_5

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/dex/f;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_2
    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_7

    .line 4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result p1

    if-eqz p1, :cond_7

    return v1

    :cond_7
    return v2

    :cond_8
    :goto_3
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x15

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x16

    if-eq p1, v0, :cond_6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->H:Lcom/samsung/android/app/musiclibrary/ui/dex/e;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/dex/e;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    if-nez v0, :cond_a

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->I:Lcom/samsung/android/app/musiclibrary/ui/dex/f;

    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/dex/f;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    :goto_1
    if-nez v0, :cond_a

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->K:Lcom/samsung/android/app/music/player/volume/VolumeController;

    if-nez v0, :cond_5

    :cond_4
    move p1, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/player/volume/VolumeController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-ne p1, v2, :cond_4

    move p1, v2

    :goto_2
    if-eqz p1, :cond_b

    goto :goto_5

    .line 4
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->K:Lcom/samsung/android/app/music/player/volume/VolumeController;

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/volume/VolumeController;->E()V

    .line 5
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->f:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->d1()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;->next()V

    goto :goto_5

    .line 6
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->K:Lcom/samsung/android/app/music/player/volume/VolumeController;

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/volume/VolumeController;->E()V

    .line 7
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->f:Lcom/samsung/android/app/musiclibrary/core/service/v3/a;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/f;->d1()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, v1, v2, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f$a;->a(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/f;ZILjava/lang/Object;)V

    :cond_a
    :goto_5
    move v1, v2

    :cond_b
    return v1
.end method

.method public final p0()Lcom/samsung/android/app/music/viewmodel/d;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->d:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/viewmodel/d;

    return-object v0
.end method

.method public final q0()Lcom/samsung/android/app/music/player/d0;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/d0;

    return-object v0
.end method

.method public r0(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->w:Lcom/samsung/android/app/music/player/v3/FavoriteController;

    if-eqz p2, :cond_1

    if-nez p2, :cond_0

    const-string p2, "favoriteController"

    invoke-static {p2}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/player/v3/FavoriteController;->D(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->release()V

    return-void
.end method

.method public final s0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v0

    const-string v1, "root"

    const-string v2, "fullplayer-layout"

    const-string v3, "this"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 3
    invoke-static {p1, p2, v4}, Lcom/samsung/android/app/music/databinding/n;->P(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/music/databinding/n;

    move-result-object p1

    .line 4
    invoke-static {p1, v3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->B:Lcom/samsung/android/app/music/databinding/n;

    .line 5
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:Lcom/samsung/android/app/music/activity/h;

    invoke-virtual {p1, p2}, Landroidx/databinding/ViewDataBinding;->J(Landroidx/lifecycle/s;)V

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p0()Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/databinding/n;->R(Lcom/samsung/android/app/music/viewmodel/d;)V

    .line 7
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->s()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->s()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v5

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ms\t"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FullPlayer onCreateView()"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " |\t"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TSP-Player"

    .line 13
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1, p2, v4}, Lcom/samsung/android/app/music/databinding/n;->P(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/music/databinding/n;

    move-result-object p1

    .line 15
    invoke-static {p1, v3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->B:Lcom/samsung/android/app/music/databinding/n;

    .line 16
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:Lcom/samsung/android/app/music/activity/h;

    invoke-virtual {p1, p2}, Landroidx/databinding/ViewDataBinding;->J(Landroidx/lifecycle/s;)V

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p0()Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/databinding/n;->R(Lcom/samsung/android/app/music/viewmodel/d;)V

    .line 18
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->s()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->s()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final t0(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$a;

    iget-object v3, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:Lcom/samsung/android/app/music/activity/h;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p0()Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$a;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Lcom/samsung/android/app/music/viewmodel/d;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v2

    const-string v3, " |\t"

    const-string v4, "createUi[Full]"

    const-string v5, " ms\t"

    const-string v6, "] "

    const/16 v7, 0x5b

    const-string v8, "TSP-Player"

    if-eqz v2, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 4
    new-instance v2, Lcom/samsung/android/app/music/player/fullplayer/SystemUiController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v11

    invoke-direct {v2, v11}, Lcom/samsung/android/app/music/player/fullplayer/SystemUiController;-><init>(Landroid/app/Activity;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Lcom/samsung/android/app/music/player/fullplayer/SystemUiController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v9

    invoke-direct {v2, v9}, Lcom/samsung/android/app/music/player/fullplayer/SystemUiController;-><init>(Landroid/app/Activity;)V

    .line 11
    :goto_0
    instance-of v9, v2, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v9, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v9

    move-object v10, v2

    check-cast v10, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 12
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 13
    instance-of v9, v2, Lcom/samsung/android/app/music/player/vi/h;

    if-eqz v9, :cond_2

    iget-object v9, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    move-object v10, v2

    check-cast v10, Lcom/samsung/android/app/music/player/vi/h;

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 14
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v9, v2}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    sget-object v2, Lkotlin/u;->a:Lkotlin/u;

    .line 15
    :goto_1
    sget-object v2, Lkotlin/u;->a:Lkotlin/u;

    .line 16
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 18
    new-instance v11, Lcom/samsung/android/app/music/player/fullplayer/e;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v12

    invoke-direct {v11, v12, v1}, Lcom/samsung/android/app/music/player/fullplayer/e;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;)V

    .line 19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long/2addr v12, v9

    .line 20
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {v11}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 22
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 23
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 24
    :cond_4
    new-instance v11, Lcom/samsung/android/app/music/player/fullplayer/e;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v9

    invoke-direct {v11, v9, v1}, Lcom/samsung/android/app/music/player/fullplayer/e;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;)V

    .line 25
    :goto_2
    instance-of v9, v11, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v9

    move-object v10, v11

    check-cast v10, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 26
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 27
    instance-of v9, v11, Lcom/samsung/android/app/music/player/vi/h;

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    move-object v10, v11

    check-cast v10, Lcom/samsung/android/app/music/player/vi/h;

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 28
    :cond_6
    instance-of v9, v11, Lcom/samsung/android/app/music/player/i;

    if-eqz v9, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v9

    if-nez v9, :cond_7

    goto :goto_3

    .line 29
    :cond_7
    check-cast v11, Lcom/samsung/android/app/music/player/i;

    .line 30
    invoke-interface {v9, v11}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 31
    :cond_8
    :goto_3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 33
    new-instance v11, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v12

    invoke-direct {v11, v12, v0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;-><init>(Lcom/samsung/android/app/music/activity/h;Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long/2addr v12, v9

    .line 35
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {v11}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 37
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 38
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 39
    :cond_9
    new-instance v11, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v9

    invoke-direct {v11, v9, v0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;-><init>(Lcom/samsung/android/app/music/activity/h;Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    .line 40
    :goto_4
    instance-of v9, v11, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v9, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v9

    move-object v10, v11

    check-cast v10, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 41
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 42
    instance-of v9, v11, Lcom/samsung/android/app/music/player/vi/h;

    if-eqz v9, :cond_b

    iget-object v9, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    move-object v10, v11

    check-cast v10, Lcom/samsung/android/app/music/player/vi/h;

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 43
    :cond_b
    instance-of v9, v11, Lcom/samsung/android/app/music/player/i;

    if-eqz v9, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v9

    if-nez v9, :cond_c

    goto :goto_5

    .line 44
    :cond_c
    move-object v10, v11

    check-cast v10, Lcom/samsung/android/app/music/player/i;

    .line 45
    invoke-interface {v9, v10}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 46
    :cond_d
    :goto_5
    iput-object v11, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->A:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    .line 47
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 48
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 49
    new-instance v11, Lcom/samsung/android/app/music/player/v3/c;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v12

    invoke-direct {v11, v12, v1}, Lcom/samsung/android/app/music/player/v3/c;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;)V

    .line 50
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long/2addr v12, v9

    .line 51
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {v11}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 53
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 54
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 55
    :cond_e
    new-instance v11, Lcom/samsung/android/app/music/player/v3/c;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v9

    invoke-direct {v11, v9, v1}, Lcom/samsung/android/app/music/player/v3/c;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;)V

    .line 56
    :goto_6
    instance-of v9, v11, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v9, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v9

    move-object v10, v11

    check-cast v10, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 57
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 58
    instance-of v9, v11, Lcom/samsung/android/app/music/player/vi/h;

    if-eqz v9, :cond_10

    iget-object v9, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    move-object v10, v11

    check-cast v10, Lcom/samsung/android/app/music/player/vi/h;

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 59
    :cond_10
    instance-of v9, v11, Lcom/samsung/android/app/music/player/i;

    if-eqz v9, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v9

    if-nez v9, :cond_11

    goto :goto_7

    .line 60
    :cond_11
    move-object v10, v11

    check-cast v10, Lcom/samsung/android/app/music/player/i;

    .line 61
    invoke-interface {v9, v10}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 62
    :cond_12
    :goto_7
    iput-object v11, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->v:Lcom/samsung/android/app/music/player/v3/c;

    .line 63
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v9

    const-string v10, "null cannot be cast to non-null type kotlin.Any"

    if-eqz v9, :cond_13

    .line 64
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 65
    invoke-static/range {p0 .. p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->y(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Landroid/view/View;)Lcom/samsung/android/app/music/player/fullplayer/p;

    move-result-object v9

    .line 66
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v11

    .line 67
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-static {v9, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v9}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 69
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 70
    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 71
    :cond_13
    invoke-static/range {p0 .. p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->y(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Landroid/view/View;)Lcom/samsung/android/app/music/player/fullplayer/p;

    move-result-object v9

    .line 72
    :goto_8
    instance-of v11, v9, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v11, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v11

    move-object v12, v9

    check-cast v12, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v11, v12}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 73
    :cond_14
    instance-of v11, v9, Lcom/samsung/android/app/musiclibrary/ui/player/c$a;

    if-eqz v11, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 74
    :cond_15
    instance-of v11, v9, Lcom/samsung/android/app/music/player/vi/h;

    if-eqz v11, :cond_16

    iget-object v11, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    move-object v12, v9

    check-cast v12, Lcom/samsung/android/app/music/player/vi/h;

    invoke-virtual {v11, v12}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 75
    :cond_16
    instance-of v11, v9, Lcom/samsung/android/app/music/player/i;

    if-eqz v11, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v11

    if-nez v11, :cond_17

    goto :goto_9

    :cond_17
    invoke-interface {v11, v9}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 76
    :cond_18
    :goto_9
    iput-object v9, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->y:Lcom/samsung/android/app/music/player/fullplayer/p;

    .line 77
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v9

    const-string v11, "activity.supportFragmentManager"

    if-eqz v9, :cond_19

    .line 78
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 79
    new-instance v9, Lcom/samsung/android/app/music/player/fullplayer/QueueController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v14

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/fragment/app/h;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v15

    invoke-static {v15, v11}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v14, v15, v1}, Lcom/samsung/android/app/music/player/fullplayer/QueueController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroidx/fragment/app/FragmentManager;Landroid/view/View;)V

    .line 80
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long/2addr v14, v12

    .line 81
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-static {v9}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 83
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 84
    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 85
    :cond_19
    new-instance v9, Lcom/samsung/android/app/music/player/fullplayer/QueueController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v12

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/fragment/app/h;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v13

    invoke-static {v13, v11}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v12, v13, v1}, Lcom/samsung/android/app/music/player/fullplayer/QueueController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroidx/fragment/app/FragmentManager;Landroid/view/View;)V

    .line 86
    :goto_a
    instance-of v11, v9, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v11, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v11

    move-object v12, v9

    check-cast v12, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v11, v12}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 87
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 88
    instance-of v11, v9, Lcom/samsung/android/app/music/player/vi/h;

    if-eqz v11, :cond_1b

    iget-object v11, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    move-object v12, v9

    check-cast v12, Lcom/samsung/android/app/music/player/vi/h;

    invoke-virtual {v11, v12}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 89
    :cond_1b
    instance-of v11, v9, Lcom/samsung/android/app/music/player/i;

    if-eqz v11, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v11

    if-nez v11, :cond_1c

    goto :goto_b

    .line 90
    :cond_1c
    move-object v12, v9

    check-cast v12, Lcom/samsung/android/app/music/player/i;

    .line 91
    invoke-interface {v11, v12}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 92
    :cond_1d
    :goto_b
    iput-object v9, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->x:Lcom/samsung/android/app/music/player/fullplayer/QueueController;

    .line 93
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 94
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 95
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->x(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/lyrics/v3/LyricsController;

    move-result-object v9

    .line 96
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v11

    .line 97
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static {v9, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v9}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 99
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 100
    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 101
    :cond_1e
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->x(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/lyrics/v3/LyricsController;

    move-result-object v9

    .line 102
    :goto_c
    instance-of v11, v9, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v11, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v11

    move-object v12, v9

    check-cast v12, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v11, v12}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 103
    :cond_1f
    instance-of v11, v9, Lcom/samsung/android/app/musiclibrary/ui/player/c$a;

    if-eqz v11, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 104
    :cond_20
    instance-of v11, v9, Lcom/samsung/android/app/music/player/vi/h;

    if-eqz v11, :cond_21

    iget-object v11, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    move-object v12, v9

    check-cast v12, Lcom/samsung/android/app/music/player/vi/h;

    invoke-virtual {v11, v12}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 105
    :cond_21
    instance-of v11, v9, Lcom/samsung/android/app/music/player/i;

    if-eqz v11, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v11

    if-nez v11, :cond_22

    goto :goto_d

    .line 106
    :cond_22
    move-object v12, v9

    check-cast v12, Lcom/samsung/android/app/music/player/i;

    .line 107
    invoke-interface {v11, v12}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 108
    :cond_23
    :goto_d
    iput-object v9, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->z:Lcom/samsung/android/app/music/lyrics/v3/LyricsController;

    .line 109
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v9

    const-string v12, "actionBarMenuController"

    if-eqz v9, :cond_25

    .line 110
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 111
    new-instance v9, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v15

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->A(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    move-result-object v16

    if-nez v16, :cond_24

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    const/4 v11, 0x0

    goto :goto_e

    :cond_24
    move-object/from16 v11, v16

    :goto_e
    invoke-direct {v9, v15, v11}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)V

    .line 112
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    sub-long/2addr v15, v13

    .line 113
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {v9}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 115
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 116
    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 117
    :cond_25
    new-instance v9, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->A(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    move-result-object v13

    if-nez v13, :cond_26

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    const/4 v13, 0x0

    :cond_26
    invoke-direct {v9, v11, v13}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)V

    .line 118
    :goto_f
    instance-of v11, v9, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v11, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v11

    move-object v13, v9

    check-cast v13, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v11, v13}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 119
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 120
    instance-of v11, v9, Lcom/samsung/android/app/music/player/vi/h;

    if-eqz v11, :cond_28

    iget-object v11, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    move-object v13, v9

    check-cast v13, Lcom/samsung/android/app/music/player/vi/h;

    invoke-virtual {v11, v13}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 121
    :cond_28
    instance-of v11, v9, Lcom/samsung/android/app/music/player/i;

    if-eqz v11, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v11

    if-nez v11, :cond_29

    goto :goto_10

    .line 122
    :cond_29
    move-object v13, v9

    check-cast v13, Lcom/samsung/android/app/music/player/i;

    .line 123
    invoke-interface {v11, v13}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 124
    :cond_2a
    :goto_10
    iput-object v9, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->L:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

    .line 125
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 126
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 127
    new-instance v9, Lcom/samsung/android/app/music/player/volume/VolumeController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->Q(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v15

    invoke-direct {v9, v11, v1, v15}, Lcom/samsung/android/app/music/player/volume/VolumeController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/c;)V

    .line 128
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    sub-long/2addr v15, v13

    .line 129
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {v9}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 131
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 132
    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 133
    :cond_2b
    new-instance v9, Lcom/samsung/android/app/music/player/volume/VolumeController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->Q(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v13

    invoke-direct {v9, v11, v1, v13}, Lcom/samsung/android/app/music/player/volume/VolumeController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/c;)V

    .line 134
    :goto_11
    instance-of v11, v9, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v11, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v11

    move-object v13, v9

    check-cast v13, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v11, v13}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 135
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 136
    instance-of v11, v9, Lcom/samsung/android/app/music/player/vi/h;

    if-eqz v11, :cond_2d

    iget-object v11, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    move-object v13, v9

    check-cast v13, Lcom/samsung/android/app/music/player/vi/h;

    invoke-virtual {v11, v13}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 137
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v11

    if-nez v11, :cond_2e

    goto :goto_12

    :cond_2e
    invoke-interface {v11, v9}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 138
    :goto_12
    iput-object v9, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->K:Lcom/samsung/android/app/music/player/volume/VolumeController;

    .line 139
    invoke-static {}, Lcom/samsung/android/app/music/service/v3/observers/gesture/c;->a()Z

    move-result v9

    const-string v11, "applicationContext"

    if-eqz v9, :cond_34

    .line 140
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v9

    if-eqz v9, :cond_2f

    .line 141
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 142
    new-instance v9, Lcom/samsung/android/app/music/service/v3/observers/gesture/AirBrowseController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->I(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v11}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v15}, Lcom/samsung/android/app/music/service/v3/observers/gesture/AirBrowseController;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    sub-long/2addr v15, v13

    .line 144
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-static {v9}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 146
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 147
    invoke-static {v8, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 148
    :cond_2f
    new-instance v9, Lcom/samsung/android/app/music/service/v3/observers/gesture/AirBrowseController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->I(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v11}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v13}, Lcom/samsung/android/app/music/service/v3/observers/gesture/AirBrowseController;-><init>(Landroid/content/Context;)V

    .line 149
    :goto_13
    instance-of v13, v9, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v13, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v13

    move-object v14, v9

    check-cast v14, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v13, v14}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 150
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 151
    instance-of v13, v9, Lcom/samsung/android/app/music/player/vi/h;

    if-eqz v13, :cond_31

    iget-object v13, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    move-object v14, v9

    check-cast v14, Lcom/samsung/android/app/music/player/vi/h;

    invoke-virtual {v13, v14}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 152
    :cond_31
    instance-of v13, v9, Lcom/samsung/android/app/music/player/i;

    if-eqz v13, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v13

    if-nez v13, :cond_32

    goto :goto_14

    .line 153
    :cond_32
    move-object v14, v9

    check-cast v14, Lcom/samsung/android/app/music/player/i;

    .line 154
    invoke-interface {v13, v14}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 155
    :cond_33
    :goto_14
    iput-object v9, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->R:Lcom/samsung/android/app/music/service/v3/observers/gesture/AirBrowseController;

    .line 156
    :cond_34
    sget-boolean v9, Lcom/samsung/android/app/music/info/features/a;->Z:Z

    if-eqz v9, :cond_3f

    .line 157
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v9

    if-eqz v9, :cond_35

    .line 158
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    .line 159
    sget-object v9, Lcom/samsung/android/app/music/player/fullplayer/MelonTrackDetailGetter;->g:Lcom/samsung/android/app/music/player/fullplayer/MelonTrackDetailGetter$a;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->I(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v11}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Lcom/samsung/android/app/music/player/fullplayer/MelonTrackDetailGetter$a;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/player/fullplayer/MelonTrackDetailGetter;

    move-result-object v9

    .line 160
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    sub-long/2addr v15, v13

    .line 161
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-static {v9, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v9}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 163
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 164
    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 165
    :cond_35
    sget-object v9, Lcom/samsung/android/app/music/player/fullplayer/MelonTrackDetailGetter;->g:Lcom/samsung/android/app/music/player/fullplayer/MelonTrackDetailGetter$a;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->I(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v11}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/music/player/fullplayer/MelonTrackDetailGetter$a;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/player/fullplayer/MelonTrackDetailGetter;

    move-result-object v9

    .line 166
    :goto_15
    instance-of v10, v9, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v10, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v10

    move-object v11, v9

    check-cast v11, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v10, v11}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 167
    :cond_36
    instance-of v10, v9, Lcom/samsung/android/app/musiclibrary/ui/player/c$a;

    if-eqz v10, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 168
    :cond_37
    instance-of v10, v9, Lcom/samsung/android/app/music/player/vi/h;

    if-eqz v10, :cond_38

    iget-object v10, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    move-object v11, v9

    check-cast v11, Lcom/samsung/android/app/music/player/vi/h;

    invoke-virtual {v10, v11}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 169
    :cond_38
    instance-of v10, v9, Lcom/samsung/android/app/music/player/i;

    if-eqz v10, :cond_3a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v10

    if-nez v10, :cond_39

    goto :goto_16

    .line 170
    :cond_39
    move-object v11, v9

    check-cast v11, Lcom/samsung/android/app/music/player/i;

    .line 171
    invoke-interface {v10, v11}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 172
    :cond_3a
    :goto_16
    iput-object v9, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->C:Lcom/samsung/android/app/music/player/fullplayer/MelonTrackDetailGetter;

    .line 173
    new-instance v9, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$h;

    invoke-direct {v9, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$h;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    iput-object v9, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D:Lcom/samsung/android/app/music/player/fullplayer/n;

    .line 174
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 175
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 176
    new-instance v11, Lcom/samsung/android/app/music/player/fullplayer/RecommendController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v13

    invoke-direct {v11, v13, v1}, Lcom/samsung/android/app/music/player/fullplayer/RecommendController;-><init>(Lcom/samsung/android/app/music/activity/h;Landroid/view/View;)V

    .line 177
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v9

    .line 178
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-static {v11}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 180
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 181
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 182
    :cond_3b
    new-instance v11, Lcom/samsung/android/app/music/player/fullplayer/RecommendController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v9

    invoke-direct {v11, v9, v1}, Lcom/samsung/android/app/music/player/fullplayer/RecommendController;-><init>(Lcom/samsung/android/app/music/activity/h;Landroid/view/View;)V

    .line 183
    :goto_17
    instance-of v9, v11, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v9, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v9

    move-object v10, v11

    check-cast v10, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 184
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 185
    instance-of v9, v11, Lcom/samsung/android/app/music/player/vi/h;

    if-eqz v9, :cond_3d

    iget-object v9, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    move-object v10, v11

    check-cast v10, Lcom/samsung/android/app/music/player/vi/h;

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 186
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v9

    if-nez v9, :cond_3e

    goto :goto_18

    :cond_3e
    invoke-interface {v9, v11}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 187
    :goto_18
    iput-object v11, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->N:Lcom/samsung/android/app/music/player/fullplayer/RecommendController;

    .line 188
    :cond_3f
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v9

    if-eqz v9, :cond_40

    .line 189
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 190
    invoke-static/range {p0 .. p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->w(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Landroid/view/View;)V

    .line 191
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v9

    .line 192
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 194
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 195
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 196
    :cond_40
    invoke-static/range {p0 .. p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->w(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Landroid/view/View;)V

    .line 197
    :goto_19
    instance-of v9, v2, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v9, :cond_41

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v9

    move-object v10, v2

    check-cast v10, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 198
    :cond_41
    instance-of v9, v2, Lcom/samsung/android/app/musiclibrary/ui/player/c$a;

    if-eqz v9, :cond_42

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v9

    move-object v10, v2

    check-cast v10, Lcom/samsung/android/app/musiclibrary/ui/player/c$a;

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 199
    :cond_42
    instance-of v9, v2, Lcom/samsung/android/app/music/player/vi/h;

    if-eqz v9, :cond_43

    iget-object v9, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    move-object v10, v2

    check-cast v10, Lcom/samsung/android/app/music/player/vi/h;

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 200
    :cond_43
    instance-of v9, v2, Lcom/samsung/android/app/music/player/i;

    if-eqz v9, :cond_45

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v9

    if-nez v9, :cond_44

    goto :goto_1a

    .line 201
    :cond_44
    check-cast v2, Lcom/samsung/android/app/music/player/i;

    .line 202
    invoke-interface {v9, v2}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 203
    :cond_45
    :goto_1a
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 204
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 205
    new-instance v2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    .line 206
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v9

    .line 207
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 211
    :cond_46
    new-instance v2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$LifeCycleListener;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V

    .line 212
    :goto_1b
    instance-of v3, v2, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v3, :cond_47

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 213
    :cond_47
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 214
    instance-of v3, v2, Lcom/samsung/android/app/music/player/vi/h;

    if-eqz v3, :cond_48

    iget-object v3, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    move-object v4, v2

    check-cast v4, Lcom/samsung/android/app/music/player/vi/h;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 215
    :cond_48
    instance-of v3, v2, Lcom/samsung/android/app/music/player/i;

    if-eqz v3, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v3

    if-nez v3, :cond_49

    goto :goto_1c

    .line 216
    :cond_49
    check-cast v2, Lcom/samsung/android/app/music/player/i;

    .line 217
    invoke-interface {v3, v2}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 218
    :cond_4a
    :goto_1c
    iget-object v2, v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->A:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    if-nez v2, :cond_4b

    invoke-static {v12}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    const/4 v11, 0x0

    goto :goto_1d

    :cond_4b
    move-object v11, v2

    :goto_1d
    invoke-virtual {v11}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->C()V

    .line 219
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->W(Landroid/view/View;)V

    return-void
.end method

.method public final u0(Landroid/os/Bundle;)V
    .locals 8

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p0()Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/k;->l()I

    move-result v0

    const-string v1, "key_view_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v5, "restoreInstance"

    move-object v2, p0

    .line 2
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->Z(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;IZLjava/lang/String;ILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->z:Lcom/samsung/android/app/music/lyrics/v3/LyricsController;

    if-eqz v0, :cond_2

    if-nez v0, :cond_1

    const-string v0, "lyricsController"

    .line 4
    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/lyrics/v3/LyricsController;->z(Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final v0(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p0()Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/k;->l()I

    move-result v0

    const-string v1, "key_view_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->z:Lcom/samsung/android/app/music/lyrics/v3/LyricsController;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const-string v0, "lyricsController"

    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/j;->q(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/lyrics/v3/LyricsController;->B(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final w0(Landroid/view/View;)V
    .locals 26

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p0()Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->x0(Lcom/samsung/android/app/music/viewmodel/d;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p0()Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/k;->l()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "onViewCreated"

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->Z(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;IZLjava/lang/String;ILjava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v0

    const-string v1, "view.findViewById(R.id.background_view)"

    const v2, 0x7f0b00b4

    const-string v3, " |\t"

    const-string v4, "createUi[Full]"

    const-string v5, " ms\t"

    const-string v14, "] "

    const/16 v13, 0x5b

    const-string v12, "TSP-Player"

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 5
    new-instance v0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v9

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    invoke-direct {v0, v9, v2}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v7

    .line 7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v7

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    invoke-direct {v0, v7, v2}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;)V

    .line 12
    :goto_0
    instance-of v1, v0, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 13
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 14
    iget-object v1, v6, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 15
    instance-of v1, v0, Lcom/samsung/android/app/music/player/i;

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    move-object v2, v0

    check-cast v2, Lcom/samsung/android/app/music/player/i;

    .line 17
    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    sget-object v1, Lkotlin/u;->a:Lkotlin/u;

    .line 18
    :cond_3
    :goto_1
    sget-object v1, Lkotlin/u;->a:Lkotlin/u;

    .line 19
    iput-object v0, v6, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->F:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    .line 20
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 22
    new-instance v2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v7

    invoke-direct {v2, v7, v15}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;)V

    .line 23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 28
    :cond_4
    new-instance v2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v0

    invoke-direct {v2, v0, v15}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;)V

    .line 29
    :goto_2
    instance-of v0, v2, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v0

    move-object v1, v2

    check-cast v1, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 30
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 31
    iget-object v0, v6, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 32
    instance-of v0, v2, Lcom/samsung/android/app/music/player/i;

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 33
    :cond_6
    move-object v1, v2

    check-cast v1, Lcom/samsung/android/app/music/player/i;

    .line 34
    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 35
    :cond_7
    :goto_3
    iput-object v2, v6, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->G:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerPlayingItemText;

    .line 36
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/c;

    iget-object v1, v6, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->g:Lcom/samsung/android/app/music/n;

    const-string v2, "FullPlayer"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/c;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/a;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 38
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 39
    new-instance v16, Lcom/samsung/android/app/music/player/v3/PlayController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->C(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/n;

    move-result-object v10

    const/16 v17, 0x0

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->S(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object v18

    const/16 v19, 0x10

    const/16 v20, 0x0

    move-object/from16 v7, v16

    move-object/from16 v9, p1

    move-object v11, v0

    move-object/from16 v21, v12

    move/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v22, v14

    move/from16 v14, v19

    move-object/from16 v15, v20

    invoke-direct/range {v7 .. v15}, Lcom/samsung/android/app/music/player/v3/PlayController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/a;Lcom/samsung/android/app/musiclibrary/ui/widget/control/c;ILcom/samsung/android/app/music/player/k;ILkotlin/jvm/internal/g;)V

    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v1

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v22

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 43
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v14, v21

    .line 44
    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v23, v14

    move-object v1, v15

    move-object/from16 v7, v16

    goto :goto_4

    :cond_8
    move v2, v13

    move-object v15, v14

    move-object v14, v12

    .line 45
    new-instance v16, Lcom/samsung/android/app/music/player/v3/PlayController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->C(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/n;

    move-result-object v10

    const/4 v12, 0x0

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->S(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object v13

    const/16 v1, 0x10

    const/16 v17, 0x0

    move-object/from16 v7, v16

    move-object/from16 v9, p1

    move-object v11, v0

    move-object/from16 v23, v14

    move v14, v1

    move-object v1, v15

    move-object/from16 v15, v17

    invoke-direct/range {v7 .. v15}, Lcom/samsung/android/app/music/player/v3/PlayController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/a;Lcom/samsung/android/app/musiclibrary/ui/widget/control/c;ILcom/samsung/android/app/music/player/k;ILkotlin/jvm/internal/g;)V

    .line 46
    :goto_4
    instance-of v8, v7, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v8, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v8

    move-object v9, v7

    check-cast v9, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 47
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 48
    iget-object v8, v6, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {v8, v7}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 49
    instance-of v8, v7, Lcom/samsung/android/app/music/player/i;

    if-eqz v8, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v8

    if-nez v8, :cond_a

    goto :goto_5

    .line 50
    :cond_a
    move-object v9, v7

    check-cast v9, Lcom/samsung/android/app/music/player/i;

    .line 51
    invoke-interface {v8, v9}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 52
    :cond_b
    :goto_5
    iput-object v7, v6, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->E:Lcom/samsung/android/app/music/player/v3/PlayController;

    .line 53
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_c

    .line 54
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 55
    new-instance v7, Lcom/samsung/android/app/music/player/SeekController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v11

    move-object/from16 v15, p1

    invoke-direct {v7, v11, v15, v0, v8}, Lcom/samsung/android/app/music/player/SeekController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/widget/control/c;Z)V

    .line 56
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 59
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v14, v23

    .line 60
    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    move-object/from16 v15, p1

    move-object/from16 v14, v23

    .line 61
    new-instance v7, Lcom/samsung/android/app/music/player/SeekController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v9

    invoke-direct {v7, v9, v15, v0, v8}, Lcom/samsung/android/app/music/player/SeekController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/widget/control/c;Z)V

    .line 62
    :goto_6
    instance-of v0, v7, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v0

    move-object v8, v7

    check-cast v8, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v0, v8}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 63
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 64
    iget-object v0, v6, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_7

    :cond_e
    invoke-interface {v0, v7}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 66
    :goto_7
    iput-object v7, v6, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->J:Lcom/samsung/android/app/music/player/SeekController;

    .line 67
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 68
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 69
    new-instance v0, Lcom/samsung/android/app/music/player/v3/m;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->S(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object v9

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    move-object v7, v0

    move-object/from16 v10, p1

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/music/player/v3/m;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Lcom/samsung/android/app/music/player/k;Landroid/view/View;ZILkotlin/jvm/internal/g;)V

    .line 70
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long v7, v7, v16

    .line 71
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 73
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 74
    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 75
    :cond_f
    new-instance v0, Lcom/samsung/android/app/music/player/v3/m;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->S(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object v9

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    move-object v7, v0

    move-object/from16 v10, p1

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/music/player/v3/m;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Lcom/samsung/android/app/music/player/k;Landroid/view/View;ZILkotlin/jvm/internal/g;)V

    .line 76
    :goto_8
    instance-of v7, v0, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v7, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v7

    move-object v8, v0

    check-cast v8, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 77
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 78
    iget-object v7, v6, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 79
    instance-of v7, v0, Lcom/samsung/android/app/music/player/i;

    if-eqz v7, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v7

    if-nez v7, :cond_11

    goto :goto_9

    .line 80
    :cond_11
    move-object v8, v0

    check-cast v8, Lcom/samsung/android/app/music/player/i;

    .line 81
    invoke-interface {v7, v8}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 82
    :cond_12
    :goto_9
    iput-object v0, v6, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->P:Lcom/samsung/android/app/music/player/v3/m;

    .line 83
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 84
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 85
    new-instance v0, Lcom/samsung/android/app/music/player/v3/j;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->S(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x18

    const/16 v18, 0x0

    move-object v7, v0

    move-object/from16 v10, p1

    move-object/from16 v24, v14

    move-object/from16 v14, v18

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/app/music/player/v3/j;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Lcom/samsung/android/app/music/player/k;Landroid/view/View;ZZILkotlin/jvm/internal/g;)V

    .line 86
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long v7, v7, v16

    .line 87
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 89
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v14, v24

    .line 90
    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v25, v14

    goto :goto_a

    .line 91
    :cond_13
    new-instance v0, Lcom/samsung/android/app/music/player/v3/j;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->S(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/viewmodel/d;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x18

    const/16 v16, 0x0

    move-object v7, v0

    move-object/from16 v10, p1

    move-object/from16 v25, v14

    move-object/from16 v14, v16

    invoke-direct/range {v7 .. v14}, Lcom/samsung/android/app/music/player/v3/j;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Lcom/samsung/android/app/music/player/k;Landroid/view/View;ZZILkotlin/jvm/internal/g;)V

    .line 92
    :goto_a
    instance-of v7, v0, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v7, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v7

    move-object v8, v0

    check-cast v8, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 93
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 94
    iget-object v7, v6, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 95
    instance-of v7, v0, Lcom/samsung/android/app/music/player/i;

    if-eqz v7, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v7

    if-nez v7, :cond_15

    goto :goto_b

    .line 96
    :cond_15
    move-object v8, v0

    check-cast v8, Lcom/samsung/android/app/music/player/i;

    .line 97
    invoke-interface {v7, v8}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 98
    :cond_16
    :goto_b
    iput-object v0, v6, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->Q:Lcom/samsung/android/app/music/player/v3/j;

    .line 99
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v0

    const-string v7, "null cannot be cast to non-null type kotlin.Any"

    if-eqz v0, :cond_17

    .line 100
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 101
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->v(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;

    move-result-object v0

    .line 102
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v8

    .line 103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {v0, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 105
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, v25

    .line 106
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_17
    move-object/from16 v9, v25

    .line 107
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->v(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;

    move-result-object v0

    .line 108
    :goto_c
    instance-of v8, v0, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v8, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v8

    move-object v10, v0

    check-cast v10, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v8, v10}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 109
    :cond_18
    instance-of v8, v0, Lcom/samsung/android/app/musiclibrary/ui/player/c$a;

    if-eqz v8, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 110
    :cond_19
    instance-of v8, v0, Lcom/samsung/android/app/music/player/vi/h;

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {v8, v0}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 111
    :cond_1a
    instance-of v8, v0, Lcom/samsung/android/app/music/player/i;

    if-eqz v8, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v8

    if-nez v8, :cond_1b

    goto :goto_d

    :cond_1b
    invoke-interface {v8, v0}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 112
    :cond_1c
    :goto_d
    iput-object v0, v6, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->M:Lcom/samsung/android/app/music/player/v3/fullplayer/albumview/AlbumViewController;

    .line 113
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 114
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 115
    invoke-static/range {p0 .. p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->u(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Landroid/view/View;)Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;

    move-result-object v0

    .line 116
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long/2addr v12, v10

    .line 117
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {v0, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 120
    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 121
    :cond_1d
    invoke-static/range {p0 .. p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->u(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Landroid/view/View;)Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;

    move-result-object v0

    .line 122
    :goto_e
    instance-of v7, v0, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v7, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 123
    :cond_1e
    instance-of v7, v0, Lcom/samsung/android/app/musiclibrary/ui/player/c$a;

    if-eqz v7, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 124
    :cond_1f
    instance-of v7, v0, Lcom/samsung/android/app/music/player/vi/h;

    if-eqz v7, :cond_20

    iget-object v7, v6, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 125
    :cond_20
    instance-of v7, v0, Lcom/samsung/android/app/music/player/i;

    if-eqz v7, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v7

    if-nez v7, :cond_21

    goto :goto_f

    .line 126
    :cond_21
    move-object v8, v0

    check-cast v8, Lcom/samsung/android/app/music/player/i;

    .line 127
    invoke-interface {v7, v8}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 128
    :cond_22
    :goto_f
    iput-object v0, v6, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->O:Lcom/samsung/android/app/music/player/v3/fullplayer/tag/AlbumTagUpdater;

    .line 129
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 130
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 131
    new-instance v0, Lcom/samsung/android/app/music/player/v3/FullFavoriteController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v10

    invoke-direct {v0, v10, v15}, Lcom/samsung/android/app/music/player/v3/FullFavoriteController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;)V

    .line 132
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v7

    .line 133
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 135
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 136
    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 137
    :cond_23
    new-instance v0, Lcom/samsung/android/app/music/player/v3/FullFavoriteController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v7

    invoke-direct {v0, v7, v15}, Lcom/samsung/android/app/music/player/v3/FullFavoriteController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;Landroid/view/View;)V

    .line 138
    :goto_10
    instance-of v7, v0, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v7, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v7

    move-object v8, v0

    check-cast v8, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 139
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 140
    iget-object v7, v6, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {v7, v0}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 141
    instance-of v7, v0, Lcom/samsung/android/app/music/player/i;

    if-eqz v7, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v7

    if-nez v7, :cond_25

    goto :goto_11

    .line 142
    :cond_25
    move-object v8, v0

    check-cast v8, Lcom/samsung/android/app/music/player/i;

    .line 143
    invoke-interface {v7, v8}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 144
    :cond_26
    :goto_11
    iput-object v0, v6, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->w:Lcom/samsung/android/app/music/player/v3/FavoriteController;

    .line 145
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ktx/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 146
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 147
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerCloseController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerCloseController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;)V

    .line 148
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v7

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcom/samsung/android/app/musiclibrary/ktx/concurrent/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ktx/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 153
    :cond_27
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerCloseController;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->D(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/activity/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerCloseController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/i;)V

    .line 154
    :goto_12
    instance-of v1, v0, Lcom/samsung/android/app/music/player/fullplayer/z;

    if-eqz v1, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q0()Lcom/samsung/android/app/music/player/d0;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/app/music/player/fullplayer/z;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/player/d0;->e(Lcom/samsung/android/app/music/player/fullplayer/z;)V

    .line 155
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o0()Lcom/samsung/android/app/musiclibrary/ui/player/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/c;->d(Lcom/samsung/android/app/musiclibrary/ui/player/c$a;)V

    .line 156
    iget-object v1, v6, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/vi/PlayerViCache;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/player/vi/PlayerViCache;->p(Lcom/samsung/android/app/music/player/vi/h;)Z

    .line 157
    instance-of v1, v0, Lcom/samsung/android/app/music/player/i;

    if-eqz v1, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n0()Lcom/samsung/android/app/music/player/j;

    move-result-object v1

    if-nez v1, :cond_29

    goto :goto_13

    .line 158
    :cond_29
    move-object v2, v0

    check-cast v2, Lcom/samsung/android/app/music/player/i;

    .line 159
    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/player/j;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/i;)V

    .line 160
    :cond_2a
    :goto_13
    iput-object v0, v6, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->u:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerCloseController;

    return-void
.end method

.method public final x0(Lcom/samsung/android/app/music/viewmodel/d;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:Lcom/samsung/android/app/music/activity/h;

    .line 2
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/debug/b;->h:Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;

    .line 3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/c;->a()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "FullPlayer-MW"

    .line 4
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePlayerSizeInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/i;->getWindowWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/i;->getWindowHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " view="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->c()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->c()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ktx/b;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    new-instance v1, Lcom/samsung/android/app/music/viewmodel/f;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/i;->getWindowWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/i;->getWindowHeight()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a:Lcom/samsung/android/app/music/activity/h;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ktx/app/a;->k(Landroid/app/Activity;)Z

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/i;->isMultiWindowMode()Z

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/music/viewmodel/f;-><init>(IIZZ)V

    .line 7
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/viewmodel/d;->g0(Lcom/samsung/android/app/music/viewmodel/f;)V

    .line 8
    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/k;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/viewmodel/d;->J(Z)V

    return-void
.end method
