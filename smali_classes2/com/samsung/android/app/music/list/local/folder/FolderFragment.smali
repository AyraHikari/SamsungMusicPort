.class public final Lcom/samsung/android/app/music/list/local/folder/FolderFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/folder/FolderFragment$ActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/list/local/folder/FolderFragment$FolderCheckableList;,
        Lcom/samsung/android/app/music/list/local/folder/FolderFragment$FolderCardViewController;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 62
    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->c()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2

    .line 146
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;-><init>(Landroid/content/Context;I)V

    .line 147
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " COLLATE LOCALIZED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;->orderBy:Ljava/lang/String;

    .line 150
    :cond_3
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;
    .locals 2

    .line 131
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "bucket_display_name"

    .line 132
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "_data"

    .line 133
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "album_id"

    .line 134
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->h()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const/4 v1, 0x1

    .line 136
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 137
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter$Builder;->b()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x10007

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "bucket_id"

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/content/Context;)V

    const-string p1, "217"

    const-string v0, "218"

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    .line 167
    new-instance v6, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    .line 168
    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    const v2, 0x7f140006

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    .line 167
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->contextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-nez p1, :cond_0

    .line 171
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 172
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 163
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method protected onCreateView()Ljava/lang/Integer;
    .locals 1

    const v0, 0x7f040182

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 11

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V

    if-eqz p3, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->a()Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    move-result-object p1

    const/4 p2, 0x0

    .line 87
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p3, :cond_3

    .line 92
    sget-boolean v2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v2, :cond_1

    const-string v2, "Music"

    goto :goto_0

    :cond_1
    const-string v2, "GlobalMusic"

    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    .line 93
    new-instance v4, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;

    new-instance v5, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$FolderCardViewController;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$FolderCardViewController;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderFragment;)V

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;

    invoke-direct {v4, p3, v5}, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v4, v3, p2

    .line 94
    new-instance v4, Lcom/samsung/android/app/music/bixby/v1/executor/local/FinishActionModeExecutor;

    move-object v5, p0

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    move-object v6, p0

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/app/music/bixby/v1/executor/local/FinishActionModeExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v4, v3, v0

    .line 95
    new-instance v4, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayFolderExecutor;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v4, p3, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayFolderExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/content/Context;)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v4, v3, v1

    .line 91
    invoke-interface {p3, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    :cond_3
    const/4 p1, 0x0

    .line 98
    invoke-static {p0, p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILjava/lang/Object;)V

    .line 100
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 102
    new-instance p3, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    const-string v2, "activity!!"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7f0b034b

    invoke-direct {p3, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 103
    sget p3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->b_(I)V

    .line 104
    new-instance p3, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$ActionModeOptionsMenu;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderFragment;)V

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 105
    new-instance p3, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    move-object v3, p0

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p3, v3}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;)V

    .line 107
    new-instance p3, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$FolderCheckableList;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment$FolderCheckableList;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 108
    new-instance p3, Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/Fragment;

    const v6, 0x7f0d001d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    move-object v4, p3

    move-object v5, v0

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/support/v4/app/Fragment;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 109
    new-instance p3, Lcom/samsung/android/app/music/list/ListPlayableImpl;

    invoke-direct {p3, v0}, Lcom/samsung/android/app/music/list/ListPlayableImpl;-><init>(Landroid/support/v4/app/Fragment;)V

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/list/Playable;

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Playable;)V

    .line 110
    new-instance p3, Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-direct {p3, v0, p2, v1, p1}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/support/v4/app/Fragment;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 112
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;

    .line 113
    sget-object p3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->d:Ljava/lang/String;

    const-string v0, "MediaContents.Folders.DEFAULT_SORT_ORDER"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->g:Z

    .line 112
    invoke-direct {p2, p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;-><init>(Ljava/lang/String;I)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    .line 111
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v2, 0x7f020220

    invoke-direct {v0, v2, p1, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p3, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    check-cast p3, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 120
    new-instance p2, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {p2, v3}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 121
    new-instance p3, Lcom/samsung/android/app/music/list/local/folder/FolderFilterableImpl;

    invoke-direct {p3}, Lcom/samsung/android/app/music/list/local/folder/FolderFilterableImpl;-><init>()V

    check-cast p3, Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 122
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->i()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;

    const/4 p3, -0x5

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->a:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 125
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    const v4, 0x7f0b02b4

    const p3, 0x7f0b02b9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p2

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->g()I

    move-result p2

    invoke-static {p0, p2, p1, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void

    .line 86
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.list.local.folder.FolderContainerFragment"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 141
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
