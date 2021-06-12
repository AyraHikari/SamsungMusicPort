.class public final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
.super Lcom/samsung/android/app/music/list/local/PlayableUiFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/download/Downloadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;,
        Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistViewHolder;,
        Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;,
        Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;,
        Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;,
        Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$FavoriteTrackReorderImpl;,
        Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;,
        Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<",
        "Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;",
        ">;",
        "Lcom/samsung/android/app/music/download/Downloadable;"
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$Companion;


# instance fields
.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private i:Lcom/samsung/android/app/music/widget/NoItemBubbleView;

.field private j:Lcom/samsung/android/app/music/download/Downloadable;

.field private k:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

.field private l:Lcom/samsung/android/app/music/network/NetworkManager;

.field private m:Z

.field private n:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

.field private o:Landroid/view/View;

.field private p:Z

.field private final q:Lkotlin/Lazy;

.field private r:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;

.field private final s:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onScrollListener$1;

.field private final t:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private final u:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$animatorListener$1;

.field private final v:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private final w:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

.field private final x:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onListActionModeListener$1;

.field private final y:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playlistId"

    const-string v4, "getPlaylistId()J"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->b:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;-><init>()V

    const/4 v0, -0x1

    .line 173
    iput v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f:I

    .line 191
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$playlistId$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$playlistId$2;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->q:Lkotlin/Lazy;

    .line 195
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onScrollListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onScrollListener$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->s:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onScrollListener$1;

    .line 217
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->t:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    .line 233
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$animatorListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$animatorListener$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$animatorListener$1;

    .line 259
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$settingsObserver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$settingsObserver$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->v:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 288
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onNetworkStateChangedListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onNetworkStateChangedListener$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    check-cast v0, Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->w:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    .line 299
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onListActionModeListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onListActionModeListener$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->x:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onListActionModeListener$1;

    .line 1460
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->y:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)J
    .locals 2

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->m:Z

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;J)Z
    .locals 0

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->b(J)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/network/NetworkManager;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->l:Lcom/samsung/android/app/music/network/NetworkManager;

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Z)V
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f(Z)V

    return-void
.end method

.method private final b(J)Z
    .locals 2

    .line 800
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->c:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0xb

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->r:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->p:Z

    return-void
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->n:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Landroid/view/View;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->o:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)I
    .locals 0

    .line 165
    iget p0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f:I

    return p0
.end method

.method private final f()J
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->q:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->m:Z

    return p0
.end method

.method public static final synthetic h(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/common/ListHeaderManager;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->k:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    return-object p0
.end method

.method private final i()V
    .locals 3

    .line 804
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 805
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_1

    .line 806
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->e()V

    .line 807
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 808
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->k:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->c()V

    .line 809
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->E()Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->a()V

    .line 810
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->L()V

    goto :goto_0

    :cond_1
    const-string v0, "UiList"

    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " notifySelected() fragment is already detached."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final synthetic i(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->i()V

    return-void
.end method

.method private final j()V
    .locals 4

    .line 832
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->u_:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->c:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 836
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f:I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->F()Z

    move-result v0

    if-nez v0, :cond_3

    .line 837
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->i:Lcom/samsung/android/app/music/widget/NoItemBubbleView;

    if-nez v0, :cond_1

    .line 839
    new-instance v0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f1304ae

    const v3, 0x7f1305c2

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/widget/NoItemBubbleView;-><init>(Landroid/app/Activity;II)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->i:Lcom/samsung/android/app/music/widget/NoItemBubbleView;

    .line 841
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->i:Lcom/samsung/android/app/music/widget/NoItemBubbleView;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->a()V

    goto :goto_0

    .line 843
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->i:Lcom/samsung/android/app/music/widget/NoItemBubbleView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->b()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public static final synthetic j(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->p:Z

    return p0
.end method

.method public static final synthetic k(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;
    .locals 0

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->E()Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    move-result-object p0

    return-object p0
.end method

.method private final k()V
    .locals 4

    .line 848
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v0

    const-wide/16 v2, -0xb

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "favorite_track_rearrange_play_order"

    goto :goto_0

    :cond_0
    const-string v0, "playlist_track_rearrange_play_order"

    :goto_0
    const-string v1, "content://com.sec.android.app.music/"

    .line 852
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 853
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$rearrangePlayOrder$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$rearrangePlayOrder$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Landroid/net/Uri;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 855
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->c()Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 663
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 664
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    .line 665
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->d()I

    move-result v3

    if-lez v3, :cond_1

    .line 667
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v4

    .line 668
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "firstChild"

    .line 669
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v3

    .line 670
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v6, v3

    add-int/2addr v4, v1

    .line 671
    invoke-virtual {v0, v4, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 664
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.widget.MusicLinearLayoutManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 679
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 680
    instance-of v0, p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    move-object v4, v3

    goto :goto_1

    :cond_2
    move-object v4, p1

    :goto_1
    check-cast v4, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->a()I

    move-result v4

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    goto :goto_2

    :cond_4
    move-object v4, v3

    :goto_3
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    iput v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f:I

    .line 681
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->n:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    if-eqz v4, :cond_8

    if-nez v0, :cond_6

    move-object p1, v3

    .line 682
    :cond_6
    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;->b()I

    move-result p1

    goto :goto_5

    :cond_7
    const/4 p1, 0x0

    :goto_5
    invoke-virtual {v4, p1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a(I)V

    .line 683
    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a()I

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->h()V

    .line 685
    :cond_8
    iget p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f:I

    if-eqz p1, :cond_b

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_a

    .line 692
    iget-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->m:Z

    if-eqz p1, :cond_c

    .line 693
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->n:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    if-eqz p1, :cond_9

    .line 694
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 695
    iget v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f:I

    .line 696
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->b(J)Z

    move-result v4

    .line 693
    invoke-virtual {p1, v0, v3, v4}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a(Landroid/database/Cursor;IZ)V

    .line 698
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->a(F)V

    goto :goto_6

    .line 688
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    const v0, 0x3ebd70a4    # 0.37f

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->a(F)V

    .line 689
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->o:Landroid/view/View;

    if-eqz p1, :cond_c

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 686
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->n:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->h()V

    .line 703
    :cond_c
    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    if-eqz p2, :cond_d

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p2

    goto :goto_7

    :cond_d
    const/4 p2, 0x0

    :goto_7
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->a(I)V

    .line 705
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 706
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 707
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0d0004

    .line 709
    iget v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 710
    iget v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 707
    invoke-virtual {p2, v0, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "resources.getQuantityStr\u2026taCount\n                )"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 706
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 4

    .line 633
    new-instance p1, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;

    .line 634
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    .line 635
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 637
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->k:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b()I

    move-result v2

    const/4 v3, -0x1

    .line 633
    invoke-direct {p1, v0, v1, v3, v2}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;
    .locals 4

    .line 593
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "title"

    .line 594
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "artist"

    .line 595
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "album_id"

    .line 596
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 597
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/provider/MusicContents;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicContents.getMatched\u2026ol(playlistId.toString())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    const/4 v1, 0x1

    .line 598
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "cp_attrs"

    .line 599
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->setCpAttrsCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 601
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_0

    .line 602
    sget-object v1, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;->a:Landroid/net/Uri;

    const-string v2, "MilkContents.Thumbnails.MILK_ALBUM"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x80002

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->addThumbnailUri(ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "streaming"

    .line 603
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->a(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    const/4 v1, 0x2

    .line 604
    invoke-static {v1}, Lcom/samsung/android/app/music/provider/DrmType;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DrmType.getDisplayName(DrmType.MILK)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->b(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    const-string v1, "explicit"

    .line 605
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;

    .line 606
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onCreateAdapter$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onCreateAdapter$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->setListItemMenuable(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 625
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->b()Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x100004

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 589
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x7be

    if-ne p1, v3, :cond_6

    if-ne p2, v0, :cond_6

    if-nez p3, :cond_0

    .line 762
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string p1, "key_checked_ids"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v7

    .line 763
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "UiList"

    .line 765
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " onActivityResult() checkedItemIds.size="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, v7

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 764
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "checkedItemIds"

    .line 768
    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, v7

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->c(Z)V

    .line 772
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide p1

    const-wide/16 v0, -0xb

    cmp-long p1, p1, v0

    if-nez p1, :cond_4

    .line 773
    new-instance p1, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;-><init>(Landroid/content/Context;)V

    .line 775
    new-instance p2, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/support/v7/app/AppCompatActivity;

    if-nez p3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    move-object v1, p3

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;-><init>(Landroid/support/v4/app/FragmentActivity;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/samsung/android/app/music/list/favorite/AddResultListener;

    .line 773
    invoke-virtual {p1, v7, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->addFavoriteTracksAsync([JLcom/samsung/android/app/music/list/favorite/AddResultListener;)V

    goto :goto_1

    .line 778
    :cond_4
    new-instance p1, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    const-string p3, "activity!!"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p2

    check-cast v4, Landroid/app/Activity;

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v5

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;-><init>(Landroid/app/Activity;J[JZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 779
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p3, v2, [Ljava/lang/Void;

    .line 778
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_6
    const/16 p3, 0x71

    if-ne p1, p3, :cond_8

    if-ne p2, v0, :cond_8

    .line 785
    iget-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->m:Z

    if-nez p1, :cond_7

    return-void

    .line 787
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->n:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    if-eqz p1, :cond_8

    .line 788
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a(Z)V

    const/4 p2, 0x0

    .line 789
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->b(J)Z

    move-result p3

    invoke-virtual {p1, p2, v2, p3}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a(Landroid/database/Cursor;IZ)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .line 309
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onAttach(Landroid/app/Activity;)V

    if-eqz p1, :cond_4

    .line 310
    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->l:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 313
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v0

    const-wide/16 v2, -0xe

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const-string p1, "106"

    const-string v0, "111"

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0xc

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const-string p1, "107"

    const-string v0, "109"

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0xd

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    const-string p1, "105"

    const-string v0, "110"

    goto :goto_0

    :cond_2
    const-wide/16 v2, -0xb

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    const-string p1, "108"

    const-string v0, "112"

    goto :goto_0

    :cond_3
    const-string p1, "113"

    const-string v0, "114"

    .line 335
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 310
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.music.network.NetworkManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 339
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreate(Landroid/os/Bundle;)V

    .line 343
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v0

    const-wide/16 v2, -0xd

    const-wide/16 v4, -0xc

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v0

    const-wide/16 v8, -0xe

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->c:Z

    .line 346
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->d:Z

    .line 348
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->c:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v0

    const-wide/16 v2, -0xb

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    iput-boolean v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->e:Z

    .line 350
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_4

    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x309

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->y:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$conflictCallbacks$1;

    check-cast v2, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    if-nez p1, :cond_4

    .line 353
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->c:Z

    if-eqz v0, :cond_4

    .line 354
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    .line 355
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$RecommendTracks;->b(J)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "RecommendTracks.getNotifyDisabledUri(playlistId)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playlist_id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_4
    if-nez p1, :cond_5

    .line 362
    iget-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->c:Z

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->k()V

    :cond_5
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .line 749
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v0

    const-wide/16 v2, -0xb

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const v0, 0x7f140002

    goto :goto_0

    :cond_0
    const/high16 v0, 0x7f140000

    .line 754
    :goto_0
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailMenu;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;I)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->contextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-nez p1, :cond_1

    .line 755
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 756
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 642
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->b(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 643
    new-instance p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;

    .line 644
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v2

    .line 645
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v3

    .line 646
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->n:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", 5"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 647
    new-instance p2, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;

    .line 648
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    .line 649
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v6, -0x1

    .line 651
    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->k:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v7, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v7}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b()I

    move-result v7

    .line 647
    invoke-direct {p2, v0, v1, v6, v7}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    move-object v6, p2

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-object v1, p1

    .line 643
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/list/local/PlaylistDetailCursorLoader;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V

    check-cast p1, Landroid/support/v4/content/Loader;

    return-object p1

    .line 655
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/support/v4/content/AsyncTaskLoader;

    const-wide/16 v0, 0x0

    .line 658
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    check-cast p1, Landroid/support/v4/content/Loader;

    return-object p1

    .line 655
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v4.content.AsyncTaskLoader<android.database.Cursor>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 727
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v0

    const-wide/16 v2, -0xb

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 729
    new-instance v0, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    move-object v4, p0

    check-cast v4, Landroid/support/v4/app/Fragment;

    const v5, 0x7f140014

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    goto :goto_1

    :cond_0
    const-wide/16 v2, -0xc

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0xd

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v2, -0xe

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 732
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/Fragment;

    const v3, 0x7f140015

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    goto :goto_1

    .line 735
    :cond_3
    new-instance v0, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/Fragment;

    const v3, 0x7f140031

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 727
    :goto_1
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 738
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0401ca

    const/4 v0, 0x0

    .line 370
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(\n      \u2026          false\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 580
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->C()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$animatorListener$1;

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/animation/Animator$AnimatorListener;)V

    .line 581
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onDestroyView()V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 165
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 718
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 563
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 564
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V

    .line 565
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;->setLaunchSearchEnabled(Z)V

    .line 566
    :cond_1
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-nez v1, :cond_2

    move-object v0, v2

    :cond_2
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->x:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onListActionModeListener$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 567
    :cond_3
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onPause()V

    return-void

    .line 564
    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.samsung.android.app.music.list.common.LocalTracksCountObservable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 722
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 723
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 742
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    if-nez p1, :cond_0

    .line 743
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const v0, 0x7f1305c2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 744
    invoke-interface {p1}, Landroid/view/MenuItem;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->j()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 554
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onResume()V

    .line 555
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 556
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    new-instance v2, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onResume$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onResume$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    check-cast v2, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V

    .line 557
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;->setLaunchSearchEnabled(Z)V

    .line 558
    :cond_1
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->x:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onListActionModeListener$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-interface {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 559
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    return-void

    .line 556
    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.samsung.android.app.music.list.common.LocalTracksCountObservable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStart()V
    .locals 6

    .line 533
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onStart()V

    .line 534
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_3

    .line 535
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->l:Lcom/samsung/android/app/music/network/NetworkManager;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->w:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 536
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    .line 537
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->v:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v2, "my_music_mode_option"

    const/4 v3, 0x1

    .line 536
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 539
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->i()V

    .line 541
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->p:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 542
    iput-boolean v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->p:Z

    .line 543
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v1, "key_playlist_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 544
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string v3, "activity!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/content/Context;

    .line 545
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$RecommendTracks;->a(J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "RecommendTracks.getContentUri(playlistId)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playlist_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 544
    invoke-static {v2, v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 571
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->l:Lcom/samsung/android/app/music/network/NetworkManager;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->w:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 573
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    .line 574
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->v:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v2, "my_music_mode_option"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 576
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "view"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 380
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 381
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->c(Landroid/support/v4/app/Fragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    .line 385
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 387
    new-array v6, v3, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    new-instance v7, Lcom/samsung/android/app/music/bixby/v1/executor/local/LaunchPlaylistDetailResponseExecutor;

    invoke-direct {v7, v2}, Lcom/samsung/android/app/music/bixby/v1/executor/local/LaunchPlaylistDetailResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V

    check-cast v7, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v7, v6, v4

    .line 386
    invoke-interface {v2, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    .line 390
    :cond_1
    invoke-static {v0, v4, v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILjava/lang/Object;)V

    .line 392
    iget-object v2, v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->t:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 394
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string v7, "activity!!"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/app/Activity;

    const v7, 0x7f0b0350

    invoke-direct {v2, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 395
    sget v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->b_(I)V

    .line 396
    new-instance v2, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ActionModeOptionsMenu;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 397
    new-instance v2, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    iput-object v2, v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->r:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailAnalytics;

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;)V

    .line 399
    new-instance v2, Lcom/samsung/android/app/music/list/ListShareableImpl;

    move-object v6, v0

    check-cast v6, Landroid/support/v4/app/Fragment;

    const/4 v7, 0x2

    invoke-direct {v2, v6, v4, v7, v5}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/support/v4/app/Fragment;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 400
    new-instance v2, Lcom/samsung/android/app/music/list/ListPlayableImpl;

    invoke-direct {v2, v6}, Lcom/samsung/android/app/music/list/ListPlayableImpl;-><init>(Landroid/support/v4/app/Fragment;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/Playable;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Playable;)V

    .line 401
    new-instance v2, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl;

    move-object v15, v0

    check-cast v15, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v2, v15, v5, v7, v5}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;[JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 402
    new-instance v2, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    new-instance v14, Lcom/samsung/android/app/music/list/favorite/LocalCategory;

    const v9, 0x10004

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->h()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/app/music/list/favorite/LocalCategory;-><init>(ILjava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v14, Lcom/samsung/android/app/music/list/favorite/Category;

    invoke-direct {v2, v6, v14}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;-><init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/list/favorite/Category;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;)V

    .line 404
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v8

    const-wide/16 v21, -0xb

    cmp-long v2, v8, v21

    if-nez v2, :cond_4

    .line 405
    new-instance v2, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$FavoriteTrackReorderImpl;

    invoke-direct {v2, v15}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$FavoriteTrackReorderImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    invoke-static {v0, v2, v5, v7, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;ILjava/lang/Object;)V

    goto :goto_0

    .line 406
    :cond_4
    new-instance v2, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl;

    invoke-direct {v2, v15}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackReorderableImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    invoke-static {v0, v2, v5, v7, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;ILjava/lang/Object;)V

    .line 409
    :goto_0
    iget-boolean v2, v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->c:Z

    if-eqz v2, :cond_5

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;

    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->e:Ljava/lang/String;

    const-string v9, "MediaContents.Tracks.DEFAULT_SORT_ORDER"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v8, v4, v7, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 411
    :cond_5
    sget-boolean v2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v2, :cond_6

    new-instance v2, Lcom/samsung/android/app/music/list/OnlinePlaylistCheckableList;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/samsung/android/app/music/list/OnlinePlaylistCheckableList;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 413
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    .line 415
    new-instance v8, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    new-instance v9, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v10, 0x7f020220

    invoke-direct {v9, v10, v5, v7, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v8, v15, v9}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    check-cast v8, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 414
    invoke-virtual {v2, v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 417
    new-instance v8, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    new-array v9, v3, [I

    const/16 v10, -0x4c5

    aput v10, v9, v4

    invoke-direct {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;-><init>([I)V

    const/4 v9, 0x3

    .line 418
    invoke-virtual {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->a(I)V

    .line 417
    check-cast v8, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 423
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v8

    const-wide/16 v23, -0xc

    cmp-long v2, v8, v23

    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    const-string v8, "activity!!"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->c(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_8
    const-string v8, "activity!!"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_a
    const-string v8, "activity!!"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->d(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 425
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->E()Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    move-result-object v2

    new-instance v8, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;

    invoke-direct {v8, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    check-cast v8, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    invoke-virtual {v2, v8}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;)V

    .line 429
    :cond_c
    iget-boolean v2, v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->c:Z

    if-eqz v2, :cond_d

    .line 430
    new-instance v2, Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    const/4 v10, 0x0

    const v11, 0x7f040251

    .line 433
    new-instance v8, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;

    invoke-direct {v8, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    move-object v12, v8

    check-cast v12, Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x272

    const/16 v25, 0x0

    move-object v8, v2

    move-object v9, v15

    move-object/from16 v26, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move-object/from16 v20, v25

    .line 430
    invoke-direct/range {v8 .. v20}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_d
    move-object/from16 v26, v15

    .line 438
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v8

    cmp-long v2, v8, v23

    if-nez v2, :cond_e

    .line 439
    new-instance v2, Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    const/4 v10, 0x0

    const v11, 0x7f040251

    const/4 v12, 0x0

    const/4 v8, -0x2

    .line 442
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v8, 0x7f100205

    .line 443
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v8, 0x7f100496

    .line 444
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x20a

    const/16 v20, 0x0

    move-object v8, v2

    move-object/from16 v9, v26

    .line 439
    invoke-direct/range {v8 .. v20}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    .line 450
    :cond_e
    new-instance v2, Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    const/4 v10, 0x0

    const v11, 0x7f040251

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x27a

    const/16 v20, 0x0

    move-object v8, v2

    move-object/from16 v9, v26

    invoke-direct/range {v8 .. v20}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 428
    :goto_1
    iput-object v2, v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->k:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    const/4 v8, -0x5

    iget-object v9, v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->k:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v9, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_f
    invoke-virtual {v9}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 462
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v8

    cmp-long v2, v8, v23

    if-eqz v2, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v8

    const-wide/16 v10, -0xd

    cmp-long v2, v8, v10

    if-nez v2, :cond_10

    goto :goto_2

    .line 464
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v8

    cmp-long v2, v8, v21

    if-nez v2, :cond_11

    const v2, 0x7f0b02b8

    goto :goto_3

    .line 466
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v8

    const-wide/16 v10, -0xe

    cmp-long v2, v8, v10

    if-nez v2, :cond_12

    const v2, 0x7f0b02bb

    goto :goto_3

    :cond_12
    const v2, 0x7f0b02bc

    goto :goto_3

    :cond_13
    :goto_2
    const v2, 0x7f0b02b7

    .line 471
    :goto_3
    new-instance v15, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    const v10, 0x7f0b02c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x0

    move-object v8, v15

    move-object/from16 v9, v26

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v15, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {v0, v15}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 473
    sget-boolean v2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v2, :cond_14

    .line 474
    new-instance v2, Lcom/samsung/android/app/music/download/MilkDownloadable;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v8

    const-string v9, "source_id"

    invoke-direct {v2, v6, v8, v9}, Lcom/samsung/android/app/music/download/MilkDownloadable;-><init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Ljava/lang/String;)V

    check-cast v2, Lcom/samsung/android/app/music/download/Downloadable;

    iput-object v2, v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->j:Lcom/samsung/android/app/music/download/Downloadable;

    .line 477
    :cond_14
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(ZI)V

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->g()I

    move-result v2

    invoke-static {v0, v2, v5, v7, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    .line 479
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->f()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->b(J)Z

    move-result v2

    if-eqz v2, :cond_1b

    const v2, 0x7f1304ab

    .line 480
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 481
    new-instance v4, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$$inlined$apply$lambda$1;

    invoke-direct {v4, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10025e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x7

    const/4 v12, 0x0

    move-object v6, v2

    invoke-static/range {v6 .. v12}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->b(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    const/16 v4, 0x8

    .line 489
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_15
    move-object v2, v5

    .line 480
    :goto_4
    iput-object v2, v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->o:Landroid/view/View;

    .line 492
    new-instance v2, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    iget-object v4, v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->o:Landroid/view/View;

    if-nez v4, :cond_16

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_16
    invoke-direct {v2, v0, v4}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Landroid/view/View;)V

    iput-object v2, v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->n:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    iget-object v4, v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->n:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->a(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)V

    if-nez p2, :cond_18

    .line 495
    iget-object v2, v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->n:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    if-nez v2, :cond_17

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_17
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a(Z)V

    .line 498
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    new-instance v3, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$5;

    invoke-direct {v3, v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$5;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Landroid/view/View;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    new-instance v2, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$6;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$6;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->a(Landroid/view/View$OnClickListener;)V

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    .line 511
    iget-object v2, v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->s:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onScrollListener$1;

    check-cast v2, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 514
    iget-object v1, v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->k:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v1, :cond_19

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_19
    new-instance v2, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$8;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$8;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a(Lkotlin/jvm/functions/Function0;)V

    .line 521
    iget-object v1, v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->k:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v1, :cond_1a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1a
    new-instance v2, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$9;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$9;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b(Lkotlin/jvm/functions/Function0;)V

    .line 529
    :cond_1b
    iget-boolean v1, v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->c:Z

    if-eqz v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->C()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v2, v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->u:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$animatorListener$1;

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1c
    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 629
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity!!.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public v()V
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->j:Lcom/samsung/android/app/music/download/Downloadable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/music/download/Downloadable;->v()V

    :cond_0
    return-void
.end method
