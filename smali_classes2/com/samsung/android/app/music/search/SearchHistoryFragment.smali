.class public Lcom/samsung/android/app/music/search/SearchHistoryFragment;
.super Lcom/samsung/android/app/music/search/BaseModelFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/search/SearchHistoryFragment$OnHistoryUpdateListener;,
        Lcom/samsung/android/app/music/search/SearchHistoryFragment$HistoryDividerChecker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/search/BaseModelFragment<",
        "Ljava/util/List<",
        "Lcom/samsung/android/app/music/model/milksearch/SearchPreset;",
        ">;",
        "Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;"
    }
.end annotation


# instance fields
.field private c:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

.field private d:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

.field private e:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

.field private f:Lcom/samsung/android/app/music/search/SearchHistoryFragment$OnHistoryUpdateListener;

.field private i:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/BaseModelFragment;-><init>()V

    .line 209
    new-instance v0, Lcom/samsung/android/app/music/search/SearchHistoryFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/search/SearchHistoryFragment$4;-><init>(Lcom/samsung/android/app/music/search/SearchHistoryFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->i:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method public static a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/search/SearchHistoryFragment;
    .locals 3

    .line 58
    new-instance v0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;-><init>()V

    .line 59
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bundle_key_search_type"

    .line 60
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 61
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchPreset;",
            ">;"
        }
    .end annotation

    const-string v0, "com.samsung.radio.search.HISTORY_COUNT"

    const/4 v1, 0x0

    .line 128
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-lez v0, :cond_0

    .line 131
    new-instance v3, Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;

    const/16 v4, -0x12c

    .line 132
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;-><init>(Ljava/lang/String;)V

    const v4, 0x7f0b0222

    .line 133
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;->build()Lcom/samsung/android/app/music/model/milksearch/SearchPreset;

    move-result-object v3

    .line 131
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge v1, v0, :cond_0

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.samsung.radio.search.HISTORY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {p1, v3, v4}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    new-instance v4, Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;

    sget-object v5, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->HISTORY:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    .line 137
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->getViewType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/milksearch/SearchPreset$Builder;->build()Lcom/samsung/android/app/music/model/milksearch/SearchPreset;

    move-result-object v3

    .line 136
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/SearchHistoryFragment;Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 5

    .line 106
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    new-instance v2, Lcom/samsung/android/app/music/search/SearchHistoryFragment$HistoryDividerChecker;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/search/SearchHistoryFragment$HistoryDividerChecker;-><init>(Lcom/samsung/android/app/music/search/SearchHistoryFragment$1;)V

    const v3, 0x7f020220

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 108
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, -0x12c

    aput v4, v2, v3

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;-><init>([I)V

    .line 109
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 110
    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->c(Landroid/support/v7/widget/RecyclerView;Z)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/SearchHistoryFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->l()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/search/SearchHistoryFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    return-object p0
.end method

.method private l()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->f:Lcom/samsung/android/app/music/search/SearchHistoryFragment$OnHistoryUpdateListener;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->f:Lcom/samsung/android/app/music/search/SearchHistoryFragment$OnHistoryUpdateListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/search/SearchHistoryFragment$OnHistoryUpdateListener;->e()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->c()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 0

    .line 176
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/BaseModelFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 266
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->e:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p1, v0, :cond_0

    .line 267
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->c:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    sget-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    goto :goto_0

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->c:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    sget-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_AUTO_COMPLETE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 254
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->e:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p1, v0, :cond_0

    .line 255
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->c:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    sget-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->c:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    sget-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected c()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;
    .locals 2

    .line 116
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "title"

    .line 117
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->i:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    .line 118
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$Builder;->b()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;

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
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchPreset;",
            ">;>;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/samsung/android/app/music/search/SearchHistoryFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/search/SearchHistoryFragment$2;-><init>(Lcom/samsung/android/app/music/search/SearchHistoryFragment;)V

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
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchPreset;",
            ">;>;"
        }
    .end annotation

    .line 166
    new-instance v0, Lcom/samsung/android/app/music/search/SearchHistoryFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/search/SearchHistoryFragment$3;-><init>(Lcom/samsung/android/app/music/search/SearchHistoryFragment;)V

    return-object v0
.end method

.method public g()I
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->e:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne v0, v1, :cond_0

    const v0, 0x100070

    return v0

    :cond_0
    const v0, 0x10000070

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected i()Z
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->e:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected j()Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->i:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-object v0
.end method

.method protected k()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "SearchHistoryFragment"

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/BaseModelFragment;->onAttach(Landroid/app/Activity;)V

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 77
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 78
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .line 80
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    if-eqz v0, :cond_1

    .line 81
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->c:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    .line 83
    :cond_1
    instance-of v0, p1, Lcom/samsung/android/app/music/search/SearchHistoryFragment$OnHistoryUpdateListener;

    if-eqz v0, :cond_2

    .line 84
    check-cast p1, Lcom/samsung/android/app/music/search/SearchHistoryFragment$OnHistoryUpdateListener;

    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->f:Lcom/samsung/android/app/music/search/SearchHistoryFragment$OnHistoryUpdateListener;

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/BaseModelFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bundle_key_search_type"

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->e:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 237
    invoke-super {p0}, Lcom/samsung/android/app/music/search/BaseModelFragment;->onStart()V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->a(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 245
    invoke-super {p0}, Lcom/samsung/android/app/music/search/BaseModelFragment;->onStop()V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->b(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/BaseModelFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->H()V

    const p2, 0x7f1302e7

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/search/SearchHistoryFragment$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/search/SearchHistoryFragment$1;-><init>(Lcom/samsung/android/app/music/search/SearchHistoryFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 102
    new-instance p1, Lcom/samsung/android/app/music/search/SubTextEmptyViewCreator;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const v0, 0x7f0b018f

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/music/search/SubTextEmptyViewCreator;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    return-void
.end method
