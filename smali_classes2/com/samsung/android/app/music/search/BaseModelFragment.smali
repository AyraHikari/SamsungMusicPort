.class public abstract Lcom/samsung/android/app/music/search/BaseModelFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "T:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "*>;>",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected b:Landroid/content/Context;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 95
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 96
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 97
    iget-object p1, p0, Lcom/samsung/android/app/music/search/BaseModelFragment;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_1

    .line 99
    iget-object p1, p0, Lcom/samsung/android/app/music/search/BaseModelFragment;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object p2, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    goto :goto_1

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/search/BaseModelFragment;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object p2, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->ENTERED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 104
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/search/BaseModelFragment;->a(Z)V

    return-void
.end method

.method protected a(Z)V
    .locals 3

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseModelFragment;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show loading : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/samsung/android/app/music/search/BaseModelFragment;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object p1, p0, Lcom/samsung/android/app/music/search/BaseModelFragment;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/music/search/BaseModelFragment;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->c()V

    .line 114
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/search/BaseModelFragment;->d(Z)V

    goto :goto_1

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/search/BaseModelFragment;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz p1, :cond_3

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseModelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 118
    iget-object p1, p0, Lcom/samsung/android/app/music/search/BaseModelFragment;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->b()V

    goto :goto_0

    .line 120
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/search/BaseModelFragment;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->c()V

    .line 123
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/search/BaseModelFragment;->c:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Landroid/view/View;)V
    .locals 4

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseModelFragment;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1301a2

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/search/BaseModelFragment;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/search/BaseModelFragment;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseModelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/network/NetworkManager;

    new-instance v2, Lcom/samsung/android/app/music/search/BaseModelFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/search/BaseModelFragment$1;-><init>(Lcom/samsung/android/app/music/search/BaseModelFragment;)V

    const v3, 0x7f13013e

    .line 80
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 74
    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a(Z)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/search/BaseModelFragment;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a()Lcom/samsung/android/app/music/view/NoNetworkViewController;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a(Lcom/samsung/android/app/music/view/NoNetworkViewController;)V

    :cond_0
    return-void
.end method

.method protected abstract d()Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever<",
            "TModel;>;"
        }
    .end annotation
.end method

.method protected abstract f()Lcom/samsung/android/app/music/contents/Cursorable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/music/contents/Cursorable<",
            "TModel;>;"
        }
    .end annotation
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected j()Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract k()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 43
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseModelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/search/BaseModelFragment;->b:Landroid/content/Context;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
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

    const/4 p1, 0x1

    .line 88
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/BaseModelFragment;->a(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseModelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 90
    new-instance p2, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseModelFragment;->d()Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseModelFragment;->f()Lcom/samsung/android/app/music/contents/Cursorable;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;Lcom/samsung/android/app/music/contents/Cursorable;)V

    return-object p2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const p3, 0x7f0401e6

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroyView()V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/search/BaseModelFragment;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/search/BaseModelFragment;->a:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a()V

    :cond_0
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/search/BaseModelFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 56
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 57
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    const v0, 0x7f0b02c2

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;I)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/search/BaseModelFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    const p2, 0x7f13013d

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/search/BaseModelFragment;->c:Landroid/view/View;

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseModelFragment;->i()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/BaseModelFragment;->b(Landroid/view/View;)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseModelFragment;->j()Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/BaseModelFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    :cond_1
    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/BaseModelFragment;->c(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseModelFragment;->g()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/BaseModelFragment;->d(I)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 142
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseModelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
