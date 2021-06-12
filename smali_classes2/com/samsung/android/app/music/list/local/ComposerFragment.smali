.class public final Lcom/samsung/android/app/music/list/local/ComposerFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/ComposerFragment$ActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;,
        Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCheckableList;,
        Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerFilterableImpl;,
        Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCardViewController;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 68
    new-instance v0, Lcom/samsung/android/app/music/list/local/ComposerFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/music/list/local/ComposerFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->c()Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1

    .line 140
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;-><init>(I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;
    .locals 2

    .line 127
    new-instance v0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "composer"

    .line 128
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "number_of_tracks"

    .line 129
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "album_id"

    .line 130
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->h()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 132
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;->b()Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x10008

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "composer"

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/content/Context;)V

    const-string p1, "221"

    const-string v0, "222"

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 79
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->setViewCachedEnabled(Z)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    .line 157
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

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment;->contextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-nez p1, :cond_0

    .line 158
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 159
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    new-instance v0, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    const v2, 0x7f14001a

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZ)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 153
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method protected onCreateView()Ljava/lang/Integer;
    .locals 1

    const v0, 0x7f040182

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 10

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V

    if-eqz p3, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 93
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_1

    const-string v1, "Music"

    goto :goto_0

    :cond_1
    const-string v1, "GlobalMusic"

    :goto_0
    new-array v2, p3, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    .line 94
    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;

    new-instance v4, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCardViewController;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCardViewController;-><init>(Lcom/samsung/android/app/music/list/local/ComposerFragment;)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;

    invoke-direct {v3, p1, v4}, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v3, v2, v0

    .line 95
    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/local/FinishActionModeExecutor;

    move-object v4, p0

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    move-object v5, p0

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/app/music/bixby/v1/executor/local/FinishActionModeExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v3, v2, p2

    .line 92
    invoke-interface {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    :cond_2
    const/4 p1, 0x0

    .line 98
    invoke-static {p0, v0, p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILjava/lang/Object;)V

    .line 100
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 102
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f0b0349

    invoke-direct {p2, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 103
    sget p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->b_(I)V

    .line 104
    new-instance p2, Lcom/samsung/android/app/music/list/local/ComposerFragment$ActionModeOptionsMenu;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/ComposerFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 105
    new-instance p2, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    move-object v2, p0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p2, v2}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;)V

    .line 107
    new-instance p2, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCheckableList;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-direct {p2, p0, v1}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCheckableList;-><init>(Lcom/samsung/android/app/music/list/local/ComposerFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 108
    new-instance p2, Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    const v5, 0x7f0d0013

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v3, p2

    move-object v4, v1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/support/v4/app/Fragment;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 109
    new-instance p2, Lcom/samsung/android/app/music/list/ListPlayableImpl;

    invoke-direct {p2, v1}, Lcom/samsung/android/app/music/list/ListPlayableImpl;-><init>(Landroid/support/v4/app/Fragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/Playable;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Playable;)V

    .line 110
    new-instance p2, Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-direct {p2, v1, v0, p3, p1}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/support/v4/app/Fragment;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 111
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Composers;->a:Ljava/lang/String;

    const-string v3, "MediaContents.Composers.DEFAULT_SORT_ORDER"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v1, v0, p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v4, 0x7f020220

    invoke-direct {v3, v4, p1, p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 115
    new-instance p2, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {p2, v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 116
    new-instance v1, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerFilterableImpl;

    invoke-direct {v1}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerFilterableImpl;-><init>()V

    check-cast v1, Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 117
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->i()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;

    const/4 v1, -0x5

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 120
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    const v3, 0x7f0b02b1

    const v1, 0x7f0b02b9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->c(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->g()I

    move-result p2

    invoke-static {p0, p2, p1, p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 136
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
