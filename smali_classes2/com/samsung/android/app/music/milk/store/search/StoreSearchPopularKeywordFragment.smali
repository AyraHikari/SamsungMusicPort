.class public Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;
.super Lcom/samsung/android/app/music/search/BaseModelFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$KeywordCursor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/search/BaseModelFragment<",
        "Ljava/util/List;",
        "Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

.field private d:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/BaseModelFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 3

    .line 79
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v2, 0x7f020220

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(I)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    .line 81
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;)Lcom/samsung/android/app/music/search/ISearchPageSwitcher;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;->c:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    return-object p0
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;->c()Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;
    .locals 2

    .line 87
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "title"

    .line 88
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 89
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$Builder;->b()Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;)V

    return-object v0
.end method

.method protected f()Lcom/samsung/android/app/music/contents/Cursorable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/music/contents/Cursorable<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;)V

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected j()Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 152
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$3;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;)V

    return-object v0
.end method

.method protected k()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "StoreSearchPopularKeywordFragment"

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/BaseModelFragment;->onAttach(Landroid/app/Activity;)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 54
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 55
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .line 57
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    if-eqz v0, :cond_1

    .line 58
    check-cast p1, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;->c:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    :cond_1
    return-void
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

    const p3, 0x7f0401e7

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 71
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/BaseModelFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;

    const/16 v0, -0xb

    const v1, 0x7f04004d

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;->addFooterView(II)V

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;->H()V

    return-void
.end method
