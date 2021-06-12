.class public final Lcom/samsung/android/app/music/list/local/GenreFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/GenreFragment$ActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;,
        Lcom/samsung/android/app/music/list/local/GenreFragment$GenreCheckableList;,
        Lcom/samsung/android/app/music/list/local/GenreFragment$GenreFilterableImpl;,
        Lcom/samsung/android/app/music/list/local/GenreFragment$GenreCardViewController;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 70
    new-instance v0, Lcom/samsung/android/app/music/list/local/GenreFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/GenreFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/music/list/local/GenreFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/GenreFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/GenreFragment;->c()Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1

    .line 144
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreQueryArgs;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/GenreFragment;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/GenreQueryArgs;-><init>(I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;
    .locals 2

    .line 132
    new-instance v0, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "album_id"

    .line 133
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const v1, 0x7f02026e

    .line 134
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter$Builder;->setRippleResId(I)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/GenreFragment;->h()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 136
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter$Builder;->b()Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x10006

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "genre"

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/content/Context;)V

    const-string p1, "213"

    const-string v0, "214"

    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/list/local/GenreFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 82
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/GenreFragment;->setViewCachedEnabled(Z)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    .line 161
    new-instance v6, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    const v2, 0x7f140007

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/GenreFragment;->contextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-nez p1, :cond_0

    .line 162
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/GenreFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/GenreFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 163
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    new-instance v0, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    const v2, 0x7f14001a

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZ)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/GenreFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 157
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method protected onCreateView()Ljava/lang/Integer;
    .locals 1

    const v0, 0x7f040182

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 9

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V

    if-eqz p3, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/GenreFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 96
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_1

    const-string v1, "Music"

    goto :goto_0

    :cond_1
    const-string v1, "GlobalMusic"

    :goto_0
    new-array v2, p3, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    .line 97
    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;

    new-instance v4, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreCardViewController;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreCardViewController;-><init>(Lcom/samsung/android/app/music/list/local/GenreFragment;)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;

    invoke-direct {v3, p1, v4}, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v3, v2, v0

    .line 98
    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/local/FinishActionModeExecutor;

    move-object v4, p0

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    move-object v5, p0

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/app/music/bixby/v1/executor/local/FinishActionModeExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v3, v2, p2

    .line 95
    invoke-interface {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    :cond_2
    const/4 p1, 0x0

    .line 101
    invoke-static {p0, v0, p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILjava/lang/Object;)V

    .line 103
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/GenreFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/GenreFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 106
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/GenreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f0b034c

    invoke-direct {p2, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/GenreFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 107
    sget p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/GenreFragment;->b_(I)V

    .line 108
    new-instance p2, Lcom/samsung/android/app/music/list/local/GenreFragment$ActionModeOptionsMenu;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/GenreFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/GenreFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/GenreFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 110
    new-instance p2, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreCheckableList;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/GenreFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-direct {p2, p0, v1}, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreCheckableList;-><init>(Lcom/samsung/android/app/music/list/local/GenreFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/GenreFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 111
    new-instance p2, Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    move-object v8, p0

    check-cast v8, Landroid/support/v4/app/Fragment;

    const v3, 0x7f0d001e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, v8

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/support/v4/app/Fragment;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/GenreFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 112
    new-instance p2, Lcom/samsung/android/app/music/list/ListPlayableImpl;

    invoke-direct {p2, v8}, Lcom/samsung/android/app/music/list/ListPlayableImpl;-><init>(Landroid/support/v4/app/Fragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/Playable;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/GenreFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Playable;)V

    .line 113
    new-instance p2, Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-direct {p2, v8, v0, p3, p1}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/support/v4/app/Fragment;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/GenreFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 114
    new-instance p2, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    move-object v2, p0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p2, v2}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/GenreFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;)V

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/GenreFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/app/music/list/common/GridItemDecoration;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/GenreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    const-string v4, "activity!!"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v3

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/GenreFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/music/list/common/GridItemDecoration;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/common/GridItemDecorator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 118
    new-instance p2, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {p2, v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 119
    new-instance v1, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreFilterableImpl;

    invoke-direct {v1}, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreFilterableImpl;-><init>()V

    check-cast v1, Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 120
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->i()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/GenreFragment;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 121
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/GenreFragment;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez p2, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a()Landroid/view/View;

    move-result-object p2

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/GenreFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;

    const/4 v3, -0x5

    invoke-virtual {v1, v3, p2}, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 125
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    const v3, 0x7f0b02b5

    const v1, 0x7f0b02b9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/GenreFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/GenreFragment;->c(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/GenreFragment;->g()I

    move-result p2

    invoke-static {p0, p2, p1, p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 140
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/GenreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/GenreFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method
