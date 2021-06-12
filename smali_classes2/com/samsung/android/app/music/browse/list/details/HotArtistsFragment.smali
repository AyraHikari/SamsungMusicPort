.class public Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;
.super Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistHueSet;,
        Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager;,
        Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistsDataLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment<",
        "Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;-><init>()V

    .line 62
    new-instance v0, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;)Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    return-object p0
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->c()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader<",
            "Lcom/samsung/android/app/music/model/base/PlayListModel;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance p1, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistsDataLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistsDataLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;
    .locals 2

    .line 133
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const v1, 0x7f04001b

    .line 134
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->a(I)Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    move-result-object v0

    const-string v1, "name"

    .line 135
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    const v1, 0x7f1000b6

    .line 136
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->setThumbnailSize(I)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    const-string v1, "album_art"

    .line 137
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->setThumbnailFullUriCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->b()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->a:Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitionHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const p3, 0x7f040021

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 79
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const v0, 0x7f0b00b2

    .line 83
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    const v1, 0x7f10017a

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;I)V

    const-string p1, "hot_artists"

    .line 90
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->b(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager;

    if-eqz p1, :cond_1

    .line 93
    new-instance p1, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$1;-><init>(Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    goto :goto_0

    :cond_1
    const-string p1, "album_art"

    .line 117
    invoke-static {p0, p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls;->a(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->d()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->a(IZ)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->i(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->h(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistPhonePortraitLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;->a(Landroid/app/Activity;)Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;->a()Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;

    move-result-object v0

    return-object v0
.end method
