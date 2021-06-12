.class public Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;
.super Lcom/samsung/android/app/music/search/SearchableFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;,
        Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;,
        Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$SearchDividerChecker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/search/SearchableFragment<",
        "Lcom/samsung/android/app/music/search/SearchableAdapter<",
        "*>;>;",
        "Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private d:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

.field private e:Ljava/lang/String;

.field private f:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

.field private i:Landroid/view/View;

.field private j:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field private k:Lcom/samsung/android/app/music/search/SearchColumnManager;

.field private l:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;

.field private m:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;

.field private n:Landroid/content/Context;

.field private final o:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private p:Lcom/samsung/android/app/music/contents/Cursorable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/contents/Cursorable<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "1"

    const-string v1, "3"

    const-string v2, "2"

    const-string v3, "5"

    const-string v4, "9"

    const-string v5, "6"

    const-string v6, "7"

    .line 120
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;-><init>()V

    .line 433
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$5;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->o:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    .line 671
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$6;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->p:Lcom/samsung/android/app/music/contents/Cursorable;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->e(I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;Ljava/util/List;Ljava/lang/String;II)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;
    .locals 0

    .line 111
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;Ljava/util/List;Ljava/lang/String;II)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;Ljava/util/List;Ljava/lang/String;II)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 370
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 371
    invoke-static {p1, p3}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;Ljava/lang/String;)I

    move-result v0

    .line 372
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->k:Lcom/samsung/android/app/music/search/SearchColumnManager;

    invoke-virtual {v1, p3}, Lcom/samsung/android/app/music/search/SearchColumnManager;->b(Ljava/lang/String;)I

    move-result v1

    .line 373
    invoke-static {p2, p5}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p2

    const/4 p5, 0x1

    if-le v1, p5, :cond_1

    if-eqz p2, :cond_0

    .line 376
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p5

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    .line 377
    :goto_0
    rem-int v2, p5, v1

    if-eqz v2, :cond_1

    .line 378
    :goto_1
    rem-int v2, p5, v1

    if-eqz v2, :cond_1

    .line 379
    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2$FakeItem;

    invoke-direct {v2, p3}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2$FakeItem;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 383
    :cond_1
    new-instance p5, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    invoke-direct {p5, p2, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;-><init>(Ljava/util/List;Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)V

    .line 384
    new-instance p1, Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;

    .line 385
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    rsub-int/lit8 p2, p2, -0x64

    invoke-direct {p1, p2, p3, v0}, Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;-><init>(ILjava/lang/String;I)V

    .line 384
    invoke-virtual {p5, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->a(Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;)V

    .line 387
    invoke-virtual {p5, p4}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->a(I)V

    .line 390
    new-instance p1, Lcom/samsung/android/app/music/search/AbstractSearchCursor$ViewMoreItem;

    .line 392
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    rsub-int p2, p2, -0xc8

    invoke-direct {p1, p2, p3, v0}, Lcom/samsung/android/app/music/search/AbstractSearchCursor$ViewMoreItem;-><init>(ILjava/lang/String;I)V

    .line 390
    invoke-virtual {p5, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->a(Lcom/samsung/android/app/music/search/AbstractSearchCursor$ViewMoreItem;)V

    goto :goto_2

    :cond_2
    const/4 p5, 0x0

    :goto_2
    return-object p5
.end method

.method public static a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;
    .locals 3

    .line 145
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;-><init>()V

    .line 146
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "STORE_TYPE"

    .line 147
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "RESULT_KEYWORD"

    .line 148
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->m()V

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

    .line 610
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->n:Landroid/content/Context;

    const-string v1, "SEARCH"

    sget-object v3, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter;->a:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    move-object v2, p1

    move v4, p3

    move v5, p2

    .line 611
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;IZ)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    const-string v0, "StoreSearchFragment"

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show loading : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 410
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->i:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->j:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->c()V

    .line 412
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->d(Z)V

    goto :goto_1

    .line 414
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->n:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 415
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->j:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->b()V

    .line 416
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->d(Z)V

    .line 417
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    .line 421
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->i:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)Lcom/samsung/android/app/music/search/SearchColumnManager;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->k:Lcom/samsung/android/app/music/search/SearchColumnManager;

    return-object p0
.end method

.method private b(Landroid/database/Cursor;)V
    .locals 4

    .line 334
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 336
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b()Landroid/database/Cursor;

    move-result-object v0

    .line 337
    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    if-eqz v1, :cond_2

    .line 338
    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    const-string v1, "mime_type"

    .line 340
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {v1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->getInt(I)I

    move-result v2

    .line 343
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->k:Lcom/samsung/android/app/music/search/SearchColumnManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/music/search/SearchColumnManager;->d(Ljava/lang/String;)I

    move-result v1

    if-le v2, v1, :cond_1

    const/4 v2, 0x1

    .line 345
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->a(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 347
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->a(Z)V

    .line 349
    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b(I)V

    .line 351
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->d:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    return-object p0
.end method

.method private e(I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;
    .locals 1

    .line 616
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    .line 617
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    if-eqz v0, :cond_0

    .line 618
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b()Landroid/database/Cursor;

    move-result-object p1

    .line 619
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    if-eqz v0, :cond_0

    .line 620
    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic e(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->m()V

    return-void
.end method

.method static synthetic f(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->m()V

    return-void
.end method

.method static synthetic g(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)Landroid/content/Context;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->n:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic h(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->m()V

    return-void
.end method

.method static synthetic i(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->m()V

    return-void
.end method

.method static synthetic i()[Ljava/lang/String;
    .locals 1

    .line 111
    sget-object v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->a:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->m()V

    return-void
.end method

.method private k()V
    .locals 6

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 233
    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->l:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;

    .line 234
    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->m:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 236
    new-array v2, v2, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->l:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->m:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchPlayableImpl;

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultPlayExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable;)V

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->m()V

    return-void
.end method

.method private l()V
    .locals 6

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    .line 244
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/util/UiUtils;->i(Landroid/app/Activity;)Z

    move-result v2

    const v3, 0x7f10004b

    if-eqz v2, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;->b(I)Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 248
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;->a(I)Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;

    .line 251
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$Builder;->a()Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;

    move-result-object v1

    .line 252
    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$3;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V

    .line 253
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration;->a(Lcom/samsung/android/app/music/milk/store/search/GridSpaceItemDecoration$IDecorationValidater;)V

    .line 265
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 266
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/16 v5, -0x64

    aput v5, v3, v4

    invoke-direct {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;-><init>([I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 268
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v4, 0x7f020220

    new-instance v5, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$SearchDividerChecker;

    invoke-direct {v5}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$SearchDividerChecker;-><init>()V

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;)V

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 270
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->c(Landroid/support/v7/widget/RecyclerView;Z)V

    return-void
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->f()Lcom/samsung/android/app/music/search/SearchableAdapter;

    move-result-object v0

    return-object v0
.end method

.method public a(II)V
    .locals 3

    .line 589
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    .line 590
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b()Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    .line 591
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->d()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 592
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 596
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 598
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->a()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 599
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 602
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 605
    :goto_0
    invoke-direct {p0, v0, v2, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->a(Ljava/util/List;ZI)V

    return-void

    :cond_2
    :goto_1
    return-void
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

    .line 319
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->a(Z)V

    .line 320
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->b(Landroid/database/Cursor;)V

    .line 321
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 322
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->l:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;

    if-eqz p1, :cond_0

    .line 323
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->l:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->a()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 399
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 400
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->f:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    sget-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_HISTORY:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    const/4 p1, 0x1

    return p1

    .line 403
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->f:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    sget-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_AUTO_COMPLETE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    const/4 p1, 0x0

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

.method public c()Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;
    .locals 1

    .line 633
    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->ACCURACY:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected f()Lcom/samsung/android/app/music/search/SearchableAdapter;
    .locals 2

    .line 291
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "_id"

    .line 292
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;

    const-string v1, "image_url"

    .line 293
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->a(Z)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->o:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    .line 294
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->d:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->b()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x10000024

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 155
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->onAttach(Landroid/app/Activity;)V

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->f:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->n:Landroid/content/Context;

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/app/music/search/SearchTabFragment;

    if-eqz p1, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->f()Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eq p1, p0, :cond_1

    const/4 p1, 0x0

    .line 164
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->setUserVisibleHint(Z)V

    .line 165
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->setMenuVisibility(Z)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 172
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "STORE_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->d:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "RESULT_KEYWORD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->e:Ljava/lang/String;

    .line 175
    new-instance p1, Lcom/samsung/android/app/music/search/SearchColumnManager;

    sget-object v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->a:[Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/music/search/SearchColumnManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->k:Lcom/samsung/android/app/music/search/SearchColumnManager;

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

    .line 275
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->a(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 278
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->d:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;

    invoke-direct {p2, p1, p0}, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->k:Lcom/samsung/android/app/music/search/SearchColumnManager;

    .line 281
    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/SearchColumnManager;->b()I

    move-result v0

    invoke-direct {p2, p1, p0, v0}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;I)V

    .line 282
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->p:Lcom/samsung/android/app/music/contents/Cursorable;

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;Lcom/samsung/android/app/music/contents/Cursorable;)V

    return-object v0
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

    const p3, 0x7f0401e6

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 427
    invoke-super {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->onDestroyView()V

    .line 428
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->j:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->j:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a()V

    :cond_0
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 111
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 188
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->k()V

    .line 191
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->o:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 193
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b034d

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    const/4 p2, 0x3

    .line 194
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->b_(I)V

    .line 196
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->l()V

    .line 197
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    const v0, 0x7f0f003a

    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0b02c2

    const/4 v2, 0x0

    invoke-direct {p2, p0, v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;)V

    .line 197
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->H()V

    const p2, 0x7f13013d

    .line 201
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->i:Landroid/view/View;

    const p2, 0x7f1301a2

    .line 202
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->j:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 203
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->j:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/network/NetworkManager;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V

    const v2, 0x7f13013e

    .line 210
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 204
    invoke-virtual {p2, v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p2

    const v0, 0x7f10004f

    .line 211
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->c(I)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->j:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a()Lcom/samsung/android/app/music/view/NoNetworkViewController;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a(Lcom/samsung/android/app/music/view/NoNetworkViewController;)V

    const/4 p2, 0x0

    .line 213
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->b_(I)V

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->m()V

    const v0, 0x7f1302e7

    .line 215
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 225
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->c(Z)V

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->g()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->d(I)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 300
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->k:Lcom/samsung/android/app/music/search/SearchColumnManager;

    .line 302
    invoke-virtual {v2}, Lcom/samsung/android/app/music/search/SearchColumnManager;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 303
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$4;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$4;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    return-object v0
.end method
