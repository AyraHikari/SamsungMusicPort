.class public Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$AutoCompleteStateHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;",
        ">;",
        "Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;"
    }
.end annotation


# instance fields
.field protected a:Landroid/view/ViewGroup;

.field private b:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

.field private c:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

.field private d:Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field private f:Landroid/view/View;

.field private i:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$AutoCompleteStateHandler;

.field private j:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

.field private final k:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 81
    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->j:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    .line 246
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$4;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->k:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method public static a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;
    .locals 3

    .line 85
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;-><init>()V

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "STORE_TYPE"

    .line 87
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 88
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->k()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;)Lcom/samsung/android/app/music/search/ISearchPageSwitcher;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->c:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    return-object p0
.end method

.method private k()V
    .locals 4

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 176
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private l()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->e:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->b()V

    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private m()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->i:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$AutoCompleteStateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$AutoCompleteStateHandler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->f()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 257
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->a(Z)V

    .line 258
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->v_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;->a(Ljava/lang/String;)V

    .line 260
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 261
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->e:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object p2, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->e:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object p2, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->ENTERED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 266
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->i()V

    goto :goto_0

    .line 270
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->l()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected a(Z)V
    .locals 3

    const-string v0, "StoreSearchAutoCompleteFragment"

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show loading : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 298
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->f:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->e:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->c()V

    goto :goto_0

    .line 301
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->f:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "StoreSearchAutoCompleteFragment"

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryTextChange search keyword : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->m()V

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;->a(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->s_()V

    const/4 p1, 0x1

    return p1
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "0"

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 279
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->c:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    sget-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    goto :goto_0

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->l()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public c()Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;
    .locals 1

    .line 335
    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->ACCURACY:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected f()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;
    .locals 2

    .line 221
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "title"

    .line 222
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter$Builder;->b()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x100069

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected i()V
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->i:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$AutoCompleteStateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$AutoCompleteStateHandler;->removeMessages(I)V

    .line 312
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->i:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$AutoCompleteStateHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$AutoCompleteStateHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected j()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->c:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    sget-object v1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_HISTORY:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    .line 104
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 105
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .line 106
    check-cast p1, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->c:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 109
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_1

    .line 110
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .line 111
    check-cast p1, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->c:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 94
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "STORE_TYPE"

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->j:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
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

    .line 206
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->a(Z)V

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 208
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->j:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p2, v0, :cond_0

    .line 209
    new-instance p2, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever;

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->d:Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;

    goto :goto_0

    .line 212
    :cond_0
    new-instance p2, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->d:Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;

    .line 215
    :goto_0
    new-instance p2, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->d:Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchStringCursor;

    sget-object v2, Lcom/samsung/android/app/music/search/SearchConstants;->a:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchStringCursor;-><init>([Ljava/lang/String;)V

    invoke-direct {p2, p1, v0, v1}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;Lcom/samsung/android/app/music/contents/Cursorable;)V

    return-object p2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0401e6

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 197
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroyView()V

    .line 198
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->m()V

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->e:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->e:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a()V

    :cond_0
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 181
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStart()V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->a(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 189
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStop()V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->b(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .line 123
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->k:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->b_(I)V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->H()V

    .line 130
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const v2, 0x7f020221

    .line 131
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->a(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    const v2, 0x7f1005e5

    .line 132
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->c(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;)V

    .line 134
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->a(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v1

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 144
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    const v1, 0x7f13013e

    .line 146
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->a:Landroid/view/ViewGroup;

    const v1, 0x7f13013d

    .line 147
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->f:Landroid/view/View;

    const v1, 0x7f1301a2

    .line 148
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->e:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 149
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->e:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    move-object v3, p2

    check-cast v3, Lcom/samsung/android/app/music/network/NetworkManager;

    new-instance v4, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;)V

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->a:Landroid/view/ViewGroup;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;ZZ)V

    const p2, 0x7f1302e7

    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$3;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    new-instance p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$AutoCompleteStateHandler;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$AutoCompleteStateHandler;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->i:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$AutoCompleteStateHandler;

    .line 166
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->m()V

    .line 167
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->c(Z)V

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->g()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->d(I)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 227
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public v_()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
