.class public final Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;
.super Lcom/samsung/android/app/music/list/local/PlayableUiFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment$ActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment$FolderDetailFilterableImpl;,
        Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<",
        "Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment$Companion;


# instance fields
.field private b:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->a:Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;-><init>()V

    .line 68
    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->c()Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 0
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

    .line 128
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 130
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->a(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2

    .line 159
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTrackQueryArgs;

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "key_bucket_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->b:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b()I

    move-result v1

    .line 159
    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTrackQueryArgs;-><init>(Ljava/lang/String;I)V

    .line 163
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->b:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Members;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " COLLATE LOCALIZED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTrackQueryArgs;->orderBy:Ljava/lang/String;

    .line 167
    :cond_3
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;
    .locals 4

    .line 142
    new-instance v0, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "_display_name"

    .line 143
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "artist"

    .line 144
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "album_id"

    .line 145
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "_id"

    .line 146
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    const/4 v1, 0x1

    .line 147
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 148
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 149
    invoke-static {v1}, Lcom/samsung/android/app/music/provider/DrmType;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DrmType.getDisplayName(DrmType.MILK)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->b(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    .line 151
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->b()Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x100007

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "key_bucket_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onAttach(Landroid/app/Activity;)V

    const-string p1, "219"

    const-string v0, "220"

    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    .line 176
    new-instance v6, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    const v2, 0x7f140008

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->contextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-nez p1, :cond_0

    .line 177
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 178
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    new-instance v0, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/Fragment;

    const v3, 0x7f14001e

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 172
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f040183

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026oolbar, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 87
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 88
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->c(Landroid/support/v4/app/Fragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 92
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILjava/lang/Object;)V

    .line 94
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 96
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v3, "activity!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0b0350

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 97
    sget v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->b_(I)V

    .line 98
    new-instance v1, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment$ActionModeOptionsMenu;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 100
    new-instance v1, Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    move-object v9, p0

    check-cast v9, Landroid/support/v4/app/Fragment;

    const v4, 0x7f0d0028

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, v9

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/support/v4/app/Fragment;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 101
    new-instance v1, Lcom/samsung/android/app/music/list/ListPlayableImpl;

    invoke-direct {v1, v9}, Lcom/samsung/android/app/music/list/ListPlayableImpl;-><init>(Landroid/support/v4/app/Fragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/Playable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Playable;)V

    .line 102
    new-instance v1, Lcom/samsung/android/app/music/list/ListShareableImpl;

    const/4 v2, 0x2

    invoke-direct {v1, v9, p1, v2, v0}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/support/v4/app/Fragment;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 104
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;

    .line 105
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Members;->a:Ljava/lang/String;

    const-string v4, "Members.DEFAULT_SORT_ORDER"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget-boolean v4, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->g:Z

    .line 104
    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;-><init>(Ljava/lang/String;I)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    .line 103
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 109
    new-instance v1, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    new-instance v10, Lcom/samsung/android/app/music/list/favorite/LocalCategory;

    const v4, 0x10007

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->h()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/music/list/favorite/LocalCategory;-><init>(ILjava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v10, Lcom/samsung/android/app/music/list/favorite/Category;

    invoke-direct {v1, v9, v10}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;-><init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/list/favorite/Category;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;)V

    .line 110
    new-instance v1, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    move-object v4, p0

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v1, v4}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;)V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v6, 0x7f020220

    invoke-direct {v5, v6, v0, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 114
    new-instance v1, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {v1, v4}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 115
    new-instance v3, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment$FolderDetailFilterableImpl;

    invoke-direct {v3}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment$FolderDetailFilterableImpl;-><init>()V

    check-cast v3, Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 116
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 117
    invoke-virtual {v1, p2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 118
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->i()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->b:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    const/4 v1, -0x5

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->b:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 121
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    const v5, 0x7f0b02c4

    const v1, 0x7f0b02b9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, p2

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->c(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->g()I

    move-result p1

    invoke-static {p0, p1, v0, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 155
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
