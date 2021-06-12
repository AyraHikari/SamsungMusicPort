.class public Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;
.super Lcom/samsung/android/app/music/search/SearchableFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/download/Downloadable;
.implements Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;,
        Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;,
        Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;,
        Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$SearchFilter;,
        Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/search/SearchableFragment<",
        "Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;",
        ">;",
        "Lcom/samsung/android/app/music/download/Downloadable;",
        "Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field private d:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

.field private e:I

.field private f:Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/contents/StoreDataCursorLoader<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field private n:Landroid/view/View;

.field private o:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;

.field private p:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;

.field private q:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

.field private final r:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;-><init>()V

    const/4 v0, 0x1

    .line 147
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->e:I

    .line 158
    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->ACCURACY:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->toFilterOption()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->l:I

    .line 297
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$3;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->q:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    .line 798
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$8;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->r:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->e(I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;
    .locals 3

    .line 172
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;-><init>()V

    .line 173
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "keyword"

    .line 174
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "display_type"

    .line 175
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "store_type"

    .line 176
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 177
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/util/List;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;)",
            "Lio/reactivex/Observable<",
            "[J>;"
        }
    .end annotation

    .line 789
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$7;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Landroid/content/Context;Ljava/util/List;)Lio/reactivex/Observable;
    .locals 0

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Landroid/content/Context;Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 528
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    .line 529
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchUtils;->c(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "2"

    .line 531
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchUtils;->d(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, "5"

    .line 533
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 534
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchUtils;->e(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v1, "6"

    .line 535
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 536
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchUtils;->f(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v1, "7"

    .line 537
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 538
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchUtils;->g(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "9"

    .line 539
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 540
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchUtils;->h(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 543
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->i:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne v0, v1, :cond_6

    .line 544
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 546
    :cond_6
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchUtils;->b(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->i:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne v0, v1, :cond_0

    .line 367
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;

    const/16 v1, 0x32

    invoke-direct {v0, p1, p0, v1}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;I)V

    goto :goto_0

    .line 370
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;)V

    .line 372
    :goto_0
    new-instance v1, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$4;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V

    invoke-direct {v1, p1, v0, v2}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;Lcom/samsung/android/app/music/contents/Cursorable;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->f:Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4

    .line 410
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->i:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne v0, v1, :cond_0

    return-void

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "5"

    .line 416
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 419
    :cond_2
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$SearchFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$SearchFilter;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;)V

    if-eqz p1, :cond_3

    const-string v1, "key_search_order"

    .line 422
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$SearchFilter;->a()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->l:I

    .line 424
    :cond_3
    new-instance p1, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->i()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->d:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 425
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    const/4 v0, -0x5

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->d:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->addHeaderView(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Z)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->h(Z)V

    return-void
.end method

.method private a(Ljava/util/List;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;ZI)V"
        }
    .end annotation

    .line 944
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a:Landroid/content/Context;

    const-string v1, "SEARCH"

    sget-object v3, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    move-object v2, p1

    move v4, p3

    move v5, p2

    .line 945
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)Z
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->p()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)I
    .locals 2

    .line 138
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->e:I

    return v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;I)I
    .locals 0

    .line 138
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->l:I

    return p1
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;I)I
    .locals 0

    .line 138
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->e:I

    return p1
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V
    .locals 0

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->m()V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->i:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    return-object p0
.end method

.method private e(I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 774
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    .line 775
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    if-eqz v0, :cond_0

    .line 777
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    .line 778
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b()Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    return-object p1

    .line 779
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    if-eqz v0, :cond_1

    .line 781
    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic e(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V
    .locals 0

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->m()V

    return-void
.end method

.method static synthetic f(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V
    .locals 0

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->m()V

    return-void
.end method

.method static synthetic g(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V
    .locals 0

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->m()V

    return-void
.end method

.method static synthetic h(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V
    .locals 0

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->m()V

    return-void
.end method

.method private h(Z)V
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->n:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic i(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V
    .locals 0

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->m()V

    return-void
.end method

.method static synthetic j(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)I
    .locals 0

    .line 138
    iget p0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->l:I

    return p0
.end method

.method private l()V
    .locals 5

    .line 322
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 326
    instance-of v1, v0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v1, :cond_8

    .line 327
    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f130073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 329
    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    .line 330
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    const/4 v1, 0x1

    .line 331
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 332
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 333
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 334
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->j:Ljava/lang/String;

    const-string v2, ""

    const-string v3, "1"

    .line 336
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v1, 0x7f0b03c9

    .line 337
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v3, "2"

    .line 338
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v1, 0x7f0b0226

    .line 339
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v3, "3"

    .line 340
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v1, 0x7f0b0227

    .line 341
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v3, "5"

    .line 342
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x7f0b02fb

    if-eqz v3, :cond_4

    .line 343
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    const-string v3, "6"

    .line 344
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const v1, 0x7f0b0229

    .line 345
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    const-string v3, "7"

    .line 346
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const v1, 0x7f0b0228

    .line 347
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    const-string v3, "9"

    .line 348
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 349
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 351
    :cond_7
    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method private n()V
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->i:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 430
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->b_(I)V

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 433
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 435
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->b_(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 437
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->b_(I)V

    goto :goto_0

    .line 440
    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->b_(I)V

    :goto_0
    return-void
.end method

.method private o()Z
    .locals 2

    const-string v0, "6"

    .line 446
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "5"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->j:Ljava/lang/String;

    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "9"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->j:Ljava/lang/String;

    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private p()Z
    .locals 2

    .line 664
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 665
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 666
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private q()V
    .locals 7

    .line 673
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 676
    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->o:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;

    .line 677
    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->p:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;

    const/4 v1, 0x3

    .line 681
    new-array v1, v1, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    const/4 v2, 0x0

    new-instance v4, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->o:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable;)V

    aput-object v4, v1, v2

    const/4 v2, 0x1

    new-instance v4, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->p:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable;)V

    aput-object v4, v1, v2

    const/4 v2, 0x2

    new-instance v4, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->o:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;

    invoke-direct {v4, v5, v0, v6, p0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchMoveDetailExecutor;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable;Landroid/support/v4/app/Fragment;)V

    aput-object v4, v1, v2

    invoke-interface {v0, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->i()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method public a(II)V
    .locals 3

    .line 754
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->e(I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p1

    .line 755
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->d()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 756
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 760
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 762
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->a()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 763
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 766
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 769
    :goto_0
    invoke-direct {p0, v0, v2, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Ljava/util/List;ZI)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 4
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

    .line 494
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Z)V

    if-eqz p2, :cond_0

    .line 495
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 496
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 497
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->o:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;

    if-eqz p1, :cond_2

    .line 498
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getHeaderViewCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->e(I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p1

    .line 499
    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;

    invoke-direct {v2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;-><init>()V

    .line 500
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 502
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->getCount()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;->b:I

    .line 503
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v2, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;->c:Ljava/lang/Object;

    .line 505
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->o:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchableImpl;->b(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 508
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->m:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object v2, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    :cond_3
    if-lez v1, :cond_5

    .line 511
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getHeaderViewCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->e(I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p1

    .line 513
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 512
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->getInt(I)I

    move-result p1

    .line 514
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-le p1, p2, :cond_4

    .line 515
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Z)V

    goto :goto_1

    .line 517
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected a(Z)V
    .locals 3

    const-string v0, "StoreSearchDetailFragment"

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show loading : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 638
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_3

    :cond_0
    const/4 p1, 0x1

    .line 640
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->h(Z)V

    .line 643
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    .line 644
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->m:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->c()V

    .line 645
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->d(Z)V

    goto :goto_1

    .line 648
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 649
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->m:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->b()V

    .line 650
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->d(Z)V

    .line 651
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 653
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    .line 655
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->h(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;
    .locals 1

    .line 453
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->l:I

    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->fromFilterOption(I)Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 458
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->e:I

    return v0
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .locals 1

    const v0, 0x10000071

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected i()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;
    .locals 2

    .line 467
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "_id"

    .line 469
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;

    const-string v1, "image_url"

    .line 470
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->r:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    .line 471
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->c(Z)Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->i:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    .line 472
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->f()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->b(Z)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->b()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    move-result-object v0

    .line 474
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 475
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$5;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$5;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->a(Lcom/samsung/android/app/music/milk/store/widget/OnLoadMoreListener;)V

    return-object v0
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method protected k()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;"
        }
    .end annotation

    .line 742
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 743
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 744
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 745
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 746
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->e(I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object v3

    .line 747
    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 192
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->onAttach(Landroid/app/Activity;)V

    .line 193
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a:Landroid/content/Context;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 570
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 571
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    .line 575
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 574
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;->setSpanCount(I)V

    .line 577
    :cond_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b034d

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 183
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "store_type"

    .line 185
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->i:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "display_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->j:Ljava/lang/String;

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "keyword"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->k:Ljava/lang/String;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 0
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

    .line 358
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Z)V

    .line 359
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 360
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Landroid/content/Context;)V

    .line 361
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->f:Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const-string v0, "1"

    .line 691
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->i:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne v0, v1, :cond_0

    .line 693
    new-instance v0, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    const v1, 0x7f140028

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 695
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const p3, 0x7f0401e4

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 310
    invoke-super {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->onDestroyView()V

    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->m:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->m:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a()V

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 315
    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    .line 317
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->q:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;->removeOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V

    :cond_1
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 138
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 951
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_search_order"

    .line 952
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->l:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .line 206
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 209
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->q()V

    .line 211
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->r:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 213
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0b034d

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->n()V

    .line 218
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 220
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Playable;)V

    .line 255
    new-instance v1, Lcom/samsung/android/app/music/list/ListShareableImpl;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/support/v4/app/Fragment;Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 257
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/util/UiUtils;->i(Landroid/app/Activity;)Z

    move-result v2

    const v3, 0x7f10004b

    if-eqz v2, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 261
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;->b(I)Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 264
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;->a(I)Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;

    .line 267
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;->a()Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    goto :goto_1

    .line 269
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v4, 0x7f020220

    invoke-direct {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(I)V

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 273
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->l()V

    .line 274
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    const v2, 0x7f0b02c2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 275
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->f()Z

    move-result v1

    if-nez v1, :cond_3

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->H()V

    :cond_3
    const v1, 0x7f1302e6

    .line 278
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->n:Landroid/view/View;

    const v1, 0x7f1301a2

    .line 279
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->m:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 280
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->m:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/app/music/network/NetworkManager;

    new-instance v4, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V

    const v1, 0x7f13013e

    .line 285
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 280
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;ZZ)V

    .line 287
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 289
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->c(Z)V

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->g()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->d(I)V

    .line 291
    instance-of p1, v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    if-eqz p1, :cond_4

    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .line 293
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->q:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->addOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V

    :cond_4
    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 4

    .line 551
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    new-instance v0, Lcom/samsung/android/app/music/search/SearchColumnManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/search/SearchColumnManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;[Ljava/lang/String;)V

    .line 553
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    .line 554
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 555
    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/SearchColumnManager;->a()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 556
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$6;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$6;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    return-object v1

    .line 565
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public v()V
    .locals 3

    .line 621
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->k()Ljava/util/List;

    move-result-object v0

    .line 622
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 624
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/TrackModel;

    .line 625
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 628
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 631
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "@"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 630
    :goto_1
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public v_()Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->k:Ljava/lang/String;

    return-object v0
.end method
