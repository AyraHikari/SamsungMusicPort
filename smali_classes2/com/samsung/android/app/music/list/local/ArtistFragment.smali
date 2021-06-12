.class public final Lcom/samsung/android/app/music/list/local/ArtistFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/ArtistFragment$ActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCheckableList;,
        Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistFilterableImpl;,
        Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;,
        Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCardViewController;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/music/list/local/ArtistAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

.field private b:I

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 68
    new-instance v0, Lcom/samsung/android/app/music/list/local/ArtistFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/music/list/local/ArtistFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/ArtistFragment;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->b:I

    return p0
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->c()Lcom/samsung/android/app/music/list/local/ArtistAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 3

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "group_by_artist"

    .line 158
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->b:I

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/ArtistAdapter;

    iget v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->b:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/ArtistAdapter;->a(I)V

    .line 162
    iget p1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->b:I

    if-ne p1, v2, :cond_2

    .line 163
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistQueryArgs;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistQueryArgs;-><init>(I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    goto :goto_0

    .line 165
    :cond_2
    new-instance p1, Lcom/samsung/android/app/music/list/local/query/AlbumArtistQueryArgs;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/list/local/query/AlbumArtistQueryArgs;-><init>(I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    :goto_0
    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/ArtistAdapter;
    .locals 2

    .line 142
    new-instance v0, Lcom/samsung/android/app/music/list/local/ArtistAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "artist"

    .line 143
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "number_of_albums"

    .line 144
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "number_of_tracks"

    .line 145
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAdapter$Builder;->setText3Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "album_id"

    .line 146
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 147
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/ArtistAdapter$Builder;->b()Lcom/samsung/android/app/music/list/local/ArtistAdapter;

    move-result-object v0

    .line 148
    iget v1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->b:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAdapter;->a(I)V

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x10003

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "_id"

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/content/Context;)V

    const-string p1, "207"

    const-string v0, "208"

    .line 86
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 87
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->setViewCachedEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "key_group_type"

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->b:I

    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8

    .line 183
    new-instance v7, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;

    .line 184
    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const v2, 0x7f140007

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    .line 183
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v7, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v7, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->contextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-nez p1, :cond_0

    .line 186
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/ArtistAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 187
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget v2, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->b:I

    const v3, 0x7f14001c

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistMenuGroup;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IIZ)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 179
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method protected onCreateView()Ljava/lang/Integer;
    .locals 1

    const v0, 0x7f040182

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_group_type"

    .line 80
    iget v1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 10

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V

    if-eqz p3, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 108
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_1

    const-string v1, "Music"

    goto :goto_0

    :cond_1
    const-string v1, "GlobalMusic"

    :goto_0
    new-array v2, p3, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    .line 109
    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;

    new-instance v4, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCardViewController;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCardViewController;-><init>(Lcom/samsung/android/app/music/list/local/ArtistFragment;)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;

    invoke-direct {v3, p1, v4}, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v3, v2, v0

    .line 110
    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/local/FinishActionModeExecutor;

    move-object v4, p0

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    move-object v5, p0

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/app/music/bixby/v1/executor/local/FinishActionModeExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v3, v2, p2

    .line 107
    invoke-interface {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    :cond_2
    const/4 p1, 0x0

    .line 113
    invoke-static {p0, v0, p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILjava/lang/Object;)V

    .line 115
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 117
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f0b0346

    invoke-direct {p2, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 118
    sget p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->b_(I)V

    .line 119
    new-instance p2, Lcom/samsung/android/app/music/list/local/ArtistFragment$ActionModeOptionsMenu;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/ArtistFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 120
    new-instance p2, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    move-object v2, p0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p2, v2}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;)V

    .line 122
    new-instance p2, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCheckableList;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-direct {p2, p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCheckableList;-><init>(Lcom/samsung/android/app/music/list/local/ArtistFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 123
    new-instance p2, Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    const v5, 0x7f0d0012

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v3, p2

    move-object v4, v1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/support/v4/app/Fragment;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 124
    new-instance p2, Lcom/samsung/android/app/music/list/ListPlayableImpl;

    invoke-direct {p2, v1}, Lcom/samsung/android/app/music/list/ListPlayableImpl;-><init>(Landroid/support/v4/app/Fragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/Playable;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Playable;)V

    .line 125
    new-instance p2, Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-direct {p2, v1, v0, p3, p1}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/support/v4/app/Fragment;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 126
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->c:Ljava/lang/String;

    const-string v3, "MediaContents.Artists.DEFAULT_SORT_ORDER"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v1, v0, p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v4, 0x7f020220

    invoke-direct {v3, v4, p1, p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 130
    new-instance p2, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {p2, v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 131
    new-instance v1, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistFilterableImpl;

    invoke-direct {v1}, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistFilterableImpl;-><init>()V

    check-cast v1, Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 132
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->i()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/list/local/ArtistAdapter;

    const/4 v1, -0x5

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/samsung/android/app/music/list/local/ArtistAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 135
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    const v3, 0x7f0b02af

    const v1, 0x7f0b02b9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->c(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->g()I

    move-result p2

    invoke-static {p0, p2, p1, p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 153
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
