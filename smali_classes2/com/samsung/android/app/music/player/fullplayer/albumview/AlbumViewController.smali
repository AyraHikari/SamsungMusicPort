.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;
.implements Lcom/samsung/android/app/music/player/PlayerSceneStateListener;
.implements Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnPlaybackPositionChange;,
        Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnAlbumViewSizeObserver;,
        Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnClickListener;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private A:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

.field private B:Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;

.field private final C:Lcom/samsung/android/app/music/player/fullplayer/albumview/NowPlayingCursorProvider;

.field private final D:Lkotlin/Lazy;

.field private E:Z

.field private final F:Landroid/support/transition/ChangeBounds;

.field private final G:Landroid/view/View;

.field private final H:Landroid/view/View;

.field private final I:Landroid/view/View;

.field private final J:Landroid/view/ViewGroup;

.field private final K:Landroid/view/View;

.field private L:Z

.field private final M:Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;

.field private N:I
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0xffL
    .end annotation
.end field

.field private final O:Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;

.field private final P:I

.field private final Q:Landroid/os/Handler;

.field private final R:Landroid/os/Handler;

.field private final S:Ljava/lang/Runnable;

.field private final T:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$thumbnailChangeReceiver$1;

.field private U:Z

.field private V:Z

.field private final W:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

.field private final X:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private final Y:Landroid/view/View;

.field private final Z:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

.field private final b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnAlbumViewSizeObserver;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private final d:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private final e:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;

.field private final f:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;

.field private g:Z

.field private final h:Landroid/support/constraint/ConstraintLayout;

.field private final i:Landroid/view/View;

.field private final j:Landroid/view/ViewGroup;

.field private final k:Landroid/content/res/Resources;

.field private final l:I

.field private final m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private s:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnPlaybackPositionChange;

.field private t:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnClickListener;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Landroid/view/View;

.field private x:Z

.field private y:Z

.field private final z:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "audioEffectApplier"

    const-string v4, "getAudioEffectApplier()Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Y:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Z:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    .line 182
    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onAlbumViewSizeObserver$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    check-cast p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnAlbumViewSizeObserver;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnAlbumViewSizeObserver;

    .line 205
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Y:Landroid/view/View;

    const p2, 0x7f130292

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v1, 0x0

    .line 206
    check-cast v1, Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 207
    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$$special$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$$special$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/OnSizeChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/OnSizeChangedListener;)V

    .line 215
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->requestLayout()V

    if-nez p1, :cond_0

    .line 205
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 217
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->o()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->d:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 218
    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Z:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->d:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->e:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;

    .line 219
    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$adapter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$adapter$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;-><init>(Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->f:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;

    .line 228
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Y:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById<ViewGroup>(R.id.gesture_view)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->h:Landroid/support/constraint/ConstraintLayout;

    .line 230
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Y:Landroid/view/View;

    const p2, 0x7f130293

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById<View>(\u2026album_accessibility_view)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->i:Landroid/view/View;

    .line 231
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Y:Landroid/view/View;

    const p2, 0x7f130284

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->j:Landroid/view/ViewGroup;

    .line 234
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->h:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->k:Landroid/content/res/Resources;

    .line 236
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->k:Landroid/content/res/Resources;

    const p2, 0x7f10043c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->l:I

    .line 238
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->k:Landroid/content/res/Resources;

    const p2, 0x7f10043d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->m:I

    const/4 p1, 0x1

    .line 249
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->o:Z

    .line 265
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->p:Z

    .line 267
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->q:Ljava/util/List;

    .line 270
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->EmptyMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    const-string v0, "MediaChangeObservable.EmptyMediaChangeObservable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->r:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 300
    sget-object p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnPlaybackPositionChange$Empty;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnPlaybackPositionChange$Empty;

    check-cast p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnPlaybackPositionChange;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->s:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnPlaybackPositionChange;

    .line 301
    sget-object p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnClickListener$Empty;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnClickListener$Empty;

    check-cast p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnClickListener;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->t:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnClickListener;

    .line 302
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->u:Z

    .line 310
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->y:Z

    .line 312
    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->z:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;

    .line 432
    sget-object p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/EmptyNowPlayingCursor;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/EmptyNowPlayingCursor;

    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->A:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .line 434
    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$shuffleModeUpdater$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$shuffleModeUpdater$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p2, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 438
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 437
    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->B:Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;

    .line 441
    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/NowPlayingCursorProvider;

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$cursorProvider$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$cursorProvider$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p2, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/NowPlayingCursorProvider;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 449
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 448
    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->C:Lcom/samsung/android/app/music/player/fullplayer/albumview/NowPlayingCursorProvider;

    .line 458
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$audioEffectApplier$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$audioEffectApplier$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->D:Lkotlin/Lazy;

    .line 485
    new-instance p2, Landroid/support/transition/ChangeBounds;

    invoke-direct {p2}, Landroid/support/transition/ChangeBounds;-><init>()V

    const-wide/16 v0, 0x12c

    .line 486
    invoke-virtual {p2, v0, v1}, Landroid/support/transition/ChangeBounds;->setDuration(J)Landroid/support/transition/Transition;

    .line 487
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    check-cast v0, Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, v0}, Landroid/support/transition/ChangeBounds;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;

    .line 488
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$$special$$inlined$apply$lambda$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$$special$$inlined$apply$lambda$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    check-cast v0, Landroid/support/transition/Transition$TransitionListener;

    invoke-virtual {p2, v0}, Landroid/support/transition/ChangeBounds;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 485
    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->F:Landroid/support/transition/ChangeBounds;

    .line 500
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->h:Landroid/support/constraint/ConstraintLayout;

    const v0, 0x7f130070

    invoke-virtual {p2, v0}, Landroid/support/constraint/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->G:Landroid/view/View;

    .line 501
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->h:Landroid/support/constraint/ConstraintLayout;

    const v0, 0x7f13019a

    invoke-virtual {p2, v0}, Landroid/support/constraint/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->H:Landroid/view/View;

    .line 502
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->h:Landroid/support/constraint/ConstraintLayout;

    const v0, 0x7f13028d

    invoke-virtual {p2, v0}, Landroid/support/constraint/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->I:Landroid/view/View;

    .line 503
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->h:Landroid/support/constraint/ConstraintLayout;

    const v0, 0x7f130294

    invoke-virtual {p2, v0}, Landroid/support/constraint/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->J:Landroid/view/ViewGroup;

    .line 504
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->h:Landroid/support/constraint/ConstraintLayout;

    const v0, 0x7f130296

    invoke-virtual {p2, v0}, Landroid/support/constraint/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->K:Landroid/view/View;

    .line 505
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->L:Z

    .line 575
    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->h:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "parentView.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onClickGenerator$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$onClickGenerator$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 578
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 577
    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->M:Lcom/samsung/android/app/music/player/fullplayer/albumview/OnClickGenerator;

    const/16 p2, 0xff

    .line 593
    iput p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->N:I

    .line 601
    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$selectedPositionChangeDetector$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$selectedPositionChangeDetector$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p2, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 607
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$$special$$inlined$apply$lambda$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$$special$$inlined$apply$lambda$3;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    check-cast v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener;)V

    .line 620
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 605
    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->O:Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector;

    .line 623
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->k:Landroid/content/res/Resources;

    const v0, 0x7f1000b6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->P:I

    .line 624
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Q:Landroid/os/Handler;

    .line 625
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->R:Landroid/os/Handler;

    .line 626
    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyItemChanged$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyItemChanged$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    check-cast p2, Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->S:Ljava/lang/Runnable;

    .line 629
    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$thumbnailChangeReceiver$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$thumbnailChangeReceiver$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->T:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$thumbnailChangeReceiver$1;

    .line 667
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->V:Z

    .line 675
    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$networkChangedListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$networkChangedListener$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->W:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    .line 678
    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$settingObserver$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$settingObserver$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->X:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    return-void

    .line 228
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.constraint.ConstraintLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic A(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)I
    .locals 0

    .line 175
    iget p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->P:I

    return p0
.end method

.method public static final synthetic B(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Landroid/os/Handler;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->R:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic C(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Ljava/lang/Runnable;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->S:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final a(Landroid/net/Uri;)Ljava/lang/Runnable;
    .locals 1

    .line 768
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$requestAlbumArt$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$requestAlbumArt$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Landroid/net/Uri;)V

    check-cast v0, Ljava/lang/Runnable;

    return-object v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->A:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 175
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Z)V
    .locals 0

    .line 175
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->b(Z)V

    return-void
.end method

.method private final a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;

    if-eqz v0, :cond_0

    .line 455
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;->setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    :cond_0
    return-void
.end method

.method private final a(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 837
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 838
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isComputingLayout()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->E:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1077
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "SMUSIC-AlbumViewController"

    const-string v2, "doNotifyIfReady() without delay"

    .line 844
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 846
    :cond_2
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_2

    .line 839
    :cond_3
    :goto_1
    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$doNotifyIfReady$$inlined$let$lambda$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$doNotifyIfReady$$inlined$let$lambda$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->u:Z

    return p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Landroid/view/View;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->I:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->E:Z

    return-void
.end method

.method private final b(Z)V
    .locals 1

    .line 507
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->L:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 508
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->L:Z

    .line 509
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->L:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->c(Z)V

    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Landroid/view/View;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->H:Landroid/view/View;

    return-object p0
.end method

.method private final c(I)V
    .locals 4

    .line 752
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->i()I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->A:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto/16 :goto_2

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Q:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    add-int/2addr p1, v1

    .line 756
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->A:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 757
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->A:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->A:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    const-string v2, "cp_attrs"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getInt(I)I

    move-result v0

    .line 758
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->A:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->A:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    const-string v3, "album_id"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getLong(I)J

    move-result-wide v1

    .line 760
    invoke-static {v0}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 987
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "SMUSIC-AlbumViewController"

    .line 761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareAlbumArt() nextPosition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " fullAlbumUri="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Q:Landroid/os/Handler;

    const-string v1, "fullAlbumUri"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Landroid/net/Uri;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1002
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "SMUSIC-AlbumViewController"

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareAlbumArt() can\'t move to position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->g:Z

    return-void
.end method

.method private final c(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->getState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    if-eqz p1, :cond_1

    .line 568
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->getState()Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 569
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    .line 570
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->J:Landroid/view/ViewGroup;

    const-string v1, "tagView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 572
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->K:Landroid/view/View;

    const-string v1, "recommend"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Landroid/view/View;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->G:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Z)V
    .locals 0

    .line 175
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->e(Z)V

    return-void
.end method

.method private final d(Z)V
    .locals 2

    .line 662
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->U:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 663
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->U:Z

    const-string p1, "SMUSIC-AlbumViewController"

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMyMusicMode to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->U:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->A:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->U:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->setMyMusicMode(Z)V

    return-void
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->z:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Z)V
    .locals 0

    .line 175
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->d(Z)V

    return-void
.end method

.method private final e(Z)V
    .locals 2

    .line 669
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->V:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 670
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->V:Z

    const-string p1, "SMUSIC-AlbumViewController"

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAvailableNetwork to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->V:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->A:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->V:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->setAvailableNetwork(Z)V

    return-void
.end method

.method private final f(Z)V
    .locals 7

    .line 793
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->z:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->f()I

    move-result v0

    .line 1019
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "SMUSIC-AlbumViewController"

    .line 795
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAlbumViewLayout albumHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " animation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSupposedToPlay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->x:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_2

    .line 797
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->h:Landroid/support/constraint/ConstraintLayout;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->F:Landroid/support/transition/ChangeBounds;

    check-cast v1, Landroid/support/transition/Transition;

    invoke-static {p1, v1}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 799
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->h:Landroid/support/constraint/ConstraintLayout;

    check-cast p1, Landroid/view/ViewGroup;

    .line 1034
    :try_start_0
    instance-of v1, p1, Landroid/support/constraint/ConstraintLayout;

    if-eqz v1, :cond_3

    .line 1035
    new-instance v1, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v1}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 1036
    move-object v2, p1

    check-cast v2, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    .line 803
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->z:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->x:Z

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->b(Z)I

    move-result v2

    const/4 v3, 0x3

    const v4, 0x7f130292

    .line 800
    invoke-virtual {v1, v4, v3, v2}, Landroid/support/constraint/ConstraintSet;->setMargin(III)V

    const v2, 0x7f130070

    .line 808
    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->z:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;

    iget-boolean v6, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->x:Z

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->c(Z)I

    move-result v5

    .line 805
    invoke-virtual {v1, v2, v3, v5}, Landroid/support/constraint/ConstraintSet;->setMargin(III)V

    .line 810
    invoke-virtual {v1, v4, v0}, Landroid/support/constraint/ConstraintSet;->constrainHeight(II)V

    .line 1038
    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v1, p1}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    goto :goto_1

    .line 1041
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "Ui"

    .line 1040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constraints not applied to view : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1057
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, "Ui"

    .line 1056
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exceptional case with constraints function "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->L:Z

    return p0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Landroid/support/constraint/ConstraintLayout;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->h:Landroid/support/constraint/ConstraintLayout;

    return-object p0
.end method

.method public static final synthetic h(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->n:Z

    return p0
.end method

.method public static final synthetic i(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->x:Z

    return p0
.end method

.method public static final synthetic j(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Landroid/os/Handler;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Q:Landroid/os/Handler;

    return-object p0
.end method

.method private final j()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->h:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->i(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final synthetic k(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->f:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;

    return-object p0
.end method

.method private final k()Z
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Z:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getWindowWidth()I

    move-result v0

    .line 242
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Z:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getWindowHeight()I

    move-result v1

    .line 243
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Z:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->isMultiWindowMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Z:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 244
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->l:I

    if-gt v2, v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->m:I

    if-le v1, v0, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method private final l()V
    .locals 4

    .line 361
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->n:Z

    .line 362
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->z:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;

    .line 363
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->a(I)V

    .line 364
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->b(I)V

    .line 854
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "SMUSIC-AlbumViewController"

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateViewMetrics="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isMultiWindowMode="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->n:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 367
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->f(Z)V

    .line 368
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->n:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/music/util/UiUtils;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->q()V

    :cond_2
    return-void
.end method

.method public static final synthetic l(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->E:Z

    return p0
.end method

.method private final m()I
    .locals 5

    .line 372
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->n:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->z:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->c()I

    move-result v0

    goto :goto_0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->z:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->b()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->k:Landroid/content/res/Resources;

    const-string v2, "res"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f100025

    .line 868
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const/4 v4, 0x1

    .line 869
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 870
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 377
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->z:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;->a()I

    move-result v1

    .line 375
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static final synthetic m(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->d:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method private final n()I
    .locals 5

    .line 383
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->n:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->k:Landroid/content/res/Resources;

    const v1, 0x7f100427

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->k:Landroid/content/res/Resources;

    const-string v2, "res"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f10002a

    .line 871
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const/4 v4, 0x1

    .line 872
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 873
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public static final synthetic n(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->e:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;

    return-object p0
.end method

.method private final o()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 392
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$createLayoutManager$1;

    .line 394
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Y:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 396
    invoke-direct {v0, p0, v1, v2, v2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$createLayoutManager$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Landroid/content/Context;IZ)V

    const/4 v1, 0x5

    .line 406
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$createLayoutManager$1;->b(I)V

    const/4 v1, 0x1

    .line 407
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$createLayoutManager$1;->setMeasurementCacheEnabled(Z)V

    .line 408
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$createLayoutManager$1;->a(Z)V

    .line 409
    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$createLayoutManager$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$createLayoutManager$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    check-cast v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$ScrollEnabledStateCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$createLayoutManager$1;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager$ScrollEnabledStateCallback;)V

    .line 405
    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public static final synthetic o(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->l()V

    return-void
.end method

.method private final p()Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->D:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    return-object v0
.end method

.method public static final synthetic p(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->v()V

    return-void
.end method

.method private final q()V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Z:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->r()V

    goto :goto_0

    .line 520
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->s()V

    :goto_0
    return-void
.end method

.method public static final synthetic q(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->g:Z

    return p0
.end method

.method public static final synthetic r(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnAlbumViewSizeObserver;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnAlbumViewSizeObserver;

    return-object p0
.end method

.method private final r()V
    .locals 3

    .line 525
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->H:Landroid/view/View;

    const-string v1, "artistView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 874
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 875
    new-instance v2, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateAlbumViewVisibilityPortrait$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver;Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    check-cast v2, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public static final synthetic s(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Lcom/samsung/android/app/music/activity/BaseServiceActivity;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Z:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    return-object p0
.end method

.method private final s()V
    .locals 9

    .line 547
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 887
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-AlbumViewController"

    const-string v1, "updateAlbumViewVisibilityLandscape() failed"

    .line 548
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->k:Landroid/content/res/Resources;

    const v1, 0x7f100427

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 552
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->b(Z)V

    .line 555
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->h:Landroid/support/constraint/ConstraintLayout;

    check-cast v1, Landroid/view/ViewGroup;

    .line 902
    :try_start_0
    instance-of v2, v1, Landroid/support/constraint/ConstraintLayout;

    if-eqz v2, :cond_4

    .line 903
    new-instance v2, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v2}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 904
    move-object v3, v1

    check-cast v3, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v2, v3}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    .line 556
    iget-boolean v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->L:Z

    if-eqz v3, :cond_3

    const v4, 0x7f130284

    const/4 v5, 0x6

    const v6, 0x7f1302a2

    const/4 v7, 0x7

    const/4 v8, 0x0

    move-object v3, v2

    .line 557
    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_2

    :cond_3
    const v4, 0x7f130284

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v2

    .line 559
    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 906
    :goto_2
    check-cast v1, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    goto :goto_3

    .line 909
    :cond_4
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    const-string v2, "Ui"

    .line 908
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Constraints not applied to view : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 925
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    const-string v2, "Ui"

    .line 924
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exceptional case with constraints function "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :goto_3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    const-string v1, "SMUSIC-AlbumViewController"

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateAlbumViewVisibilityLandscape width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", minWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method public static final synthetic t(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->k:Landroid/content/res/Resources;

    return-object p0
.end method

.method private final t()V
    .locals 4

    .line 647
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Z:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->T:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$thumbnailChangeReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.sec.android.app.music.ACTION_DISK_CACHE_THUMBNAILS_REMOVED"

    .line 648
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private final u()V
    .locals 2

    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Z:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->T:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$thumbnailChangeReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static final synthetic u(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->j()Z

    move-result p0

    return p0
.end method

.method private final v()V
    .locals 5

    .line 739
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 740
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->w()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 972
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "SMUSIC-AlbumViewController"

    .line 743
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateViewToCurrentPosition newPosition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", viewSelectedPosition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", EXTRA_LIST_POSITION="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v3

    const-string v4, "extra.list_position"

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", scrollState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getScrollState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", metrics="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->z:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$viewMetrics$1;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", inScaleTransition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->E:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :goto_0
    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateViewToCurrentPosition$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$updateViewToCurrentPosition$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;I)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Lkotlin/jvm/functions/Function0;)V

    .line 748
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->c(I)V

    return-void
.end method

.method public static final synthetic v(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->x()V

    return-void
.end method

.method private final w()I
    .locals 2

    .line 774
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v1, "extra.list_position"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 777
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->A:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getOrderedPosition(I)I

    move-result v0

    return v0
.end method

.method public static final synthetic w(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->V:Z

    return p0
.end method

.method private final x()V
    .locals 2

    .line 823
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->i()I

    move-result v0

    if-lez v0, :cond_0

    .line 824
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyDataSetChangedExceptCurrent$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyDataSetChangedExceptCurrent$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Lkotlin/jvm/functions/Function0;)V

    .line 826
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->i()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->f:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 827
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyDataSetChangedExceptCurrent$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$notifyDataSetChangedExceptCurrent$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Lkotlin/jvm/functions/Function0;)V

    :cond_1
    return-void
.end method

.method public static final synthetic x(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->U:Z

    return p0
.end method

.method public static final synthetic y(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->A:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    return-object p0
.end method

.method public static final synthetic z(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->B:Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 732
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->u:Z

    const/16 p1, 0xff

    .line 733
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->b(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 729
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->u:Z

    :goto_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->w:Landroid/view/View;

    return-void
.end method

.method public final a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnClickListener;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->t:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnClickListener;

    return-void
.end method

.method public final a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnPlaybackPositionChange;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->s:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnPlaybackPositionChange;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->v:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->p:Z

    return-void
.end method

.method public final b()Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnPlaybackPositionChange;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->s:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnPlaybackPositionChange;

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->f:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->a(I)V

    .line 596
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->g()Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;->a(I)V

    .line 597
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->N:I

    return-void
.end method

.method public final c()Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnClickListener;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->t:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnClickListener;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Landroid/view/View;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->w:Landroid/view/View;

    return-object v0
.end method

.method public final g()Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewHolder;

    return-object v0
.end method

.method public getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->r:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method public getState()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->o:Z

    return v0
.end method

.method public final h()V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->b:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnAlbumViewSizeObserver;

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnAlbumViewSizeObserver;->a()V

    return-void
.end method

.method public final i()I
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->d:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->d:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/AlbumViewLinearLayoutManager;->d()I

    move-result v0

    return v0

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    return v0
.end method

.method public final onDestroyCalled()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 716
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->p()Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->c()V

    :cond_0
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 819
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->q:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 1074
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 819
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 721
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->p()Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->q:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 969
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 722
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    goto :goto_0

    .line 723
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->v()V

    return-void
.end method

.method public final onPauseCalled()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 702
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->p()Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->b()V

    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 782
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->p()Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 783
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->q:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 1016
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 783
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0

    .line 784
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->x:Z

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v1

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->y:Z

    if-eqz v0, :cond_6

    .line 785
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->x:Z

    .line 787
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->n:Z

    const/4 v0, 0x0

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->getState()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->u:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->f(Z)V

    .line 788
    :cond_5
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->y:Z

    :cond_6
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
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

    .line 815
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->q:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 1072
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 815
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onResumeCalled()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 697
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->p()Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier;->a()V

    :cond_0
    return-void
.end method

.method public final onStartCalled()V
    .locals 7
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 686
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    .line 687
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->X:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v3, "my_music_mode_option"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver$default(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v1, "my_music_mode_option"

    const/4 v2, 0x0

    .line 688
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->d(Z)V

    .line 691
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Z:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->W:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 692
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->t()V

    return-void
.end method

.method public final onStopCalled()V
    .locals 3
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 707
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Z:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->W:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 708
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    .line 709
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->X:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v2, "my_music_mode_option"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 710
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->y:Z

    .line 711
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->u()V

    return-void
.end method

.method public setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->r:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 273
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->r:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 274
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->q:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 851
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 275
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;

    if-eqz v1, :cond_1

    .line 276
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->r:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;->setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    goto :goto_0

    .line 279
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->invalidate()V

    return-void
.end method

.method public setState(Z)V
    .locals 4

    .line 251
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->o:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 254
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Z:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->isMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->Z:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->j:Landroid/view/ViewGroup;

    const-string v2, "controllerView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 257
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->n:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->L:Z

    if-nez v1, :cond_2

    return-void

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->c:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    check-cast v1, Landroid/view/View;

    .line 260
    iget-boolean v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->p:Z

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    const-wide/16 v2, 0x190

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0xc8

    goto :goto_1

    :cond_4
    const-wide/16 v2, 0x0

    .line 261
    :goto_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    .line 258
    invoke-static {v1, v0, v2, v3, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->a(Landroid/view/View;IJLandroid/view/animation/Interpolator;)V

    .line 263
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->i:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
