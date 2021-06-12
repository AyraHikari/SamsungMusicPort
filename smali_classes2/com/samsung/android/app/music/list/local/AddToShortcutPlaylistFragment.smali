.class public final Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;,
        Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$Companion;


# instance fields
.field private b:I

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->a:Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    const/4 v0, 0x2

    .line 46
    iput v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->b:I

    .line 48
    new-instance v0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 4

    .line 151
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 152
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/util/ListUtils;->a(J)Z

    move-result p1

    if-eqz p1, :cond_4

    const-wide/16 v2, -0xe

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const-string p1, "Recently added"

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0xc

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const-string p1, "Most played"

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0xd

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    const-string p1, "Recently played"

    goto :goto_0

    :cond_2
    const-wide/16 v2, -0xb

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    const-string p1, "Favorites"

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 160
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1211"

    .line 160
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 166
    :cond_4
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1212"

    .line 166
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->c()Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;

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

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v3, "activity!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    .line 130
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/util/ListUtils;->a(Landroid/content/Context;[J)V

    .line 135
    new-instance v2, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;

    move-object v3, p0

    check-cast v3, Landroid/support/v4/app/Fragment;

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;-><init>(Landroid/support/v4/app/Fragment;Landroid/database/Cursor;)V

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v3, "activity!!"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/util/ListUtils;->a(Landroid/content/Context;)[J

    move-result-object v0

    const-string v3, "ListUtils.getDynamicDefa\u2026ity!!.applicationContext)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-wide v5, v0, v4

    .line 137
    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->a(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->a()Landroid/database/Cursor;

    move-result-object v0

    .line 140
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v4, v3, [Landroid/database/Cursor;

    aput-object v0, v4, v1

    const/4 v0, 0x1

    aput-object p2, v4, v0

    invoke-direct {v2, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    check-cast v2, Landroid/database/Cursor;

    invoke-super {p0, p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 141
    iget p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->b:I

    if-ne p1, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->e(Z)V

    return-void

    .line 143
    :cond_4
    move-object p2, p0

    check-cast p2, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;

    .line 144
    invoke-super {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 145
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->e(Z)V

    return-void

    :array_0
    .array-data 8
        -0xb
        -0xc
        -0xd
        -0xe
    .end array-data
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2

    .line 114
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    .line 115
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    iget v1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->b:I

    .line 114
    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>(II)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;
    .locals 2

    .line 102
    new-instance v0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "name"

    .line 103
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "_id"

    .line 104
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "_id"

    .line 105
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 106
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$Builder;->b()Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const/16 v0, 0x48

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    const-string p1, "117"

    const-string v0, "117"

    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-wide/16 p1, 0x0

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->a(J)V

    const p1, 0x7f100246

    .line 78
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->h(I)Landroid/view/View;

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 81
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;

    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->f:Ljava/lang/String;

    const-string v0, "Playlists.DEFAULT_SORT_ORDER"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, p2, v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    .line 84
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    .line 85
    move-object v3, p0

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 86
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    new-instance v5, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$onViewCreated$1;

    invoke-direct {v5}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$onViewCreated$1;-><init>()V

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;

    const v6, 0x7f020220

    invoke-direct {v4, v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;)V

    .line 84
    invoke-direct {p2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 83
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    move-object p2, v2

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    const/4 p1, 0x1

    .line 95
    invoke-static {p0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "filter_option_playlist"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->b:I

    .line 97
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->c(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->g()I

    move-result p1

    invoke-static {p0, p1, v2, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 110
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
