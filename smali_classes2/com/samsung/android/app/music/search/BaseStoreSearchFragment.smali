.class public abstract Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;
.super Lcom/samsung/android/app/music/search/BaseModelFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/search/BaseModelFragment<",
        "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
        "Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;"
    }
.end annotation


# instance fields
.field protected c:I

.field private d:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

.field private e:Ljava/lang/String;

.field private f:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/BaseModelFragment;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->c:I

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "3"

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchUtils;->c(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 117
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->m()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1

    .line 181
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/BaseModelFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 182
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getHeaderViewCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->e(I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p1

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 184
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->getInt(I)I

    move-result p1

    .line 186
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-le p1, p2, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Z)V

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    return v0

    .line 251
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->d:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    sget-object v1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_AUTO_COMPLETE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    return v0
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->o()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract c()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected d()Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;
    .locals 3

    .line 122
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment$2;-><init>(Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;)V

    return-object v0
.end method

.method protected e(I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    .line 196
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    if-eqz v0, :cond_0

    .line 197
    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    return-object p1

    .line 198
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    if-eqz v0, :cond_1

    .line 199
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b()Landroid/database/Cursor;

    move-result-object p1

    .line 200
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    if-eqz v0, :cond_1

    .line 201
    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected f()Lcom/samsung/android/app/music/contents/Cursorable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/music/contents/Cursorable<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment$3;-><init>(Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;)V

    return-object v0
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected m()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;
    .locals 2

    .line 88
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "_id"

    .line 90
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;

    const-string v1, "image_url"

    .line 91
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->c(Z)Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    .line 92
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->b()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 95
    new-instance v1, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment$1;-><init>(Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Lcom/samsung/android/app/music/milk/store/widget/OnLoadMoreListener;)V

    return-object v0
.end method

.method protected n()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected final o()V
    .locals 4

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 268
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 269
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/BaseModelFragment;->onAttach(Landroid/app/Activity;)V

    .line 64
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 65
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    iput-object v0, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .line 67
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    if-eqz v0, :cond_1

    .line 68
    check-cast p1, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    iput-object p1, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->d:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/BaseModelFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key_search_keyword"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "key_search_keyword"

    const-string v1, ""

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->e:Ljava/lang/String;

    :goto_0
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

    const p3, 0x7f0401e6

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/BaseModelFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_search_keyword"

    .line 82
    iget-object v1, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 209
    invoke-super {p0}, Lcom/samsung/android/app/music/search/BaseModelFragment;->onStart()V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->a(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/music/search/BaseStoreSearchFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->b(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V

    .line 220
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/search/BaseModelFragment;->onStop()V

    return-void
.end method
