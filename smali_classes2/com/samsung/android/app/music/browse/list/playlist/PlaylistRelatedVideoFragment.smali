.class public Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;
.super Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment$RelatedVideoDataLoader;
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
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;
    .locals 1

    .line 50
    new-instance v0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;-><init>()V

    .line 51
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;->c()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic a(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;->b(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment$RelatedVideoDataLoader;

    move-result-object p1

    return-object p1
.end method

.method protected b(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment$RelatedVideoDataLoader;
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 96
    new-instance p1, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment$RelatedVideoDataLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;->a:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment$RelatedVideoDataLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;
    .locals 2

    .line 102
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const v1, 0x7f04001f

    .line 103
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->a(I)Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    move-result-object v0

    const-string v1, "title"

    .line 104
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    const-string v1, "album_art"

    .line 105
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
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "extra_id"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;->a:Ljava/lang/String;

    const-string v0, "extra_title"

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;->b:Ljava/lang/String;

    :cond_0
    const-string p1, "PlaylistRelatedVideoFragment"

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate : id - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const p3, 0x7f040035

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const v1, 0x7f0b00b9

    .line 79
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->b(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    const v2, 0x7f100007

    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;I)V

    .line 87
    invoke-static {p0}, Lcom/samsung/android/app/music/browse/list/BrowseItemClickImpls;->a(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;->d()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;->a(IZ)V

    const-string p1, "PlaylistRelatedVideoFragment"

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewCreated. savedInstance - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;->a(Landroid/app/Activity;)Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$VideoGridItemDecorator;

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/playlist/PlaylistRelatedVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$VideoGridItemDecorator;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;->a(Lcom/samsung/android/app/music/list/common/GridItemDecorator;)Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;->a()Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;

    move-result-object v0

    return-object v0
.end method
