.class public Lcom/samsung/android/app/music/list/local/SearchFragment;
.super Lcom/samsung/android/app/music/search/SearchableFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;
.implements Lcom/samsung/android/app/music/list/common/SearchPlayable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever;,
        Lcom/samsung/android/app/music/list/local/SearchFragment$SuggestionRetrieveHandler;,
        Lcom/samsung/android/app/music/list/local/SearchFragment$GlobalLayoutListener;,
        Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;,
        Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;,
        Lcom/samsung/android/app/music/list/local/SearchFragment$TextSearchListener;,
        Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;,
        Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/search/SearchableFragment<",
        "Lcom/samsung/android/app/music/search/SearchableAdapter<",
        "*>;>;",
        "Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;",
        "Lcom/samsung/android/app/music/list/common/SearchPlayable;"
    }
.end annotation


# static fields
.field private static final a:[I


# instance fields
.field private d:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

.field private e:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

.field private f:Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;

.field private i:Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;

.field private j:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

.field private m:Landroid/database/Cursor;

.field private n:Lcom/samsung/android/app/music/list/local/SearchFragment$SuggestionRetrieveHandler;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Lcom/samsung/android/app/music/list/local/SearchFragment$GlobalLayoutListener;

.field private final r:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private s:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 145
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/music/list/local/SearchFragment;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xb
        0xc
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;-><init>()V

    .line 166
    new-instance v0, Lcom/samsung/android/app/music/list/local/SearchFragment$SuggestionRetrieveHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SuggestionRetrieveHandler;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->n:Lcom/samsung/android/app/music/list/local/SearchFragment$SuggestionRetrieveHandler;

    .line 591
    new-instance v0, Lcom/samsung/android/app/music/list/local/SearchFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$4;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->r:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    .line 655
    new-instance v0, Lcom/samsung/android/app/music/list/local/SearchFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$5;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->s:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/list/local/SearchFragment;
    .locals 3

    .line 175
    new-instance v0, Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;-><init>()V

    .line 176
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "supported_store"

    .line 177
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 178
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/SearchFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->j:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/SearchFragment;I)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->e(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/SearchFragment;ILandroid/os/Bundle;)V
    .locals 0

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->c(ILandroid/os/Bundle;)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .line 293
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->p:Landroid/view/View;

    .line 297
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 298
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->k:Landroid/widget/TextView;

    .line 299
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz p1, :cond_1

    .line 301
    iput v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 302
    iput v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 303
    iput v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 304
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->p:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    goto :goto_0

    .line 306
    :cond_1
    iput v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 307
    iput v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 308
    iput v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 309
    iput v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    :goto_0
    return-void
.end method

.method private a(Landroid/content/ContentResolver;JI)[J
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p4, :pswitch_data_0

    :goto_0
    move-object p2, v1

    goto/16 :goto_5

    .line 771
    :pswitch_0
    new-array v1, v0, [J

    const/4 p1, 0x0

    aput-wide p2, v1, p1

    goto :goto_0

    .line 762
    :pswitch_1
    new-instance p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;-><init>(Ljava/lang/String;)V

    const-string p2, "_id"

    .line 763
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 764
    iget-object v3, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v4, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v5, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v6, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v7, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v2, p1

    .line 765
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 767
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/database/Cursor;)[J

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    .line 768
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception v1

    .line 764
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_1

    if-eqz v1, :cond_0

    .line 768
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    throw p2

    .line 752
    :pswitch_2
    new-instance p4, Lcom/samsung/android/app/music/list/local/query/ArtistTrackDetailQueryArgs;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, v0}, Lcom/samsung/android/app/music/list/local/query/ArtistTrackDetailQueryArgs;-><init>(Ljava/lang/String;I)V

    const-string p2, "_id"

    .line 754
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 755
    iget-object v3, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v4, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v5, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v6, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v7, p4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v2, p1

    .line 756
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 758
    :try_start_3
    invoke-static {p1}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/database/Cursor;)[J

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_4

    .line 759
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 755
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    if-eqz p1, :cond_3

    if-eqz v1, :cond_2

    .line 759
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_4
    throw p2

    :cond_4
    :goto_5
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/samsung/android/app/music/list/local/SearchFragment;Landroid/content/ContentResolver;JI)[J
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/local/SearchFragment;->a(Landroid/content/ContentResolver;JI)[J

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 10

    .line 510
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 512
    sget-object v1, Lcom/samsung/android/app/music/list/local/SearchFragment;->a:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    .line 513
    new-instance v5, Lcom/samsung/android/app/music/search/LocalSearchCursor;

    invoke-direct {v5, p1, v4}, Lcom/samsung/android/app/music/search/LocalSearchCursor;-><init>(Landroid/database/Cursor;I)V

    .line 514
    invoke-virtual {v5}, Lcom/samsung/android/app/music/search/LocalSearchCursor;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "total_count"

    .line 519
    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/search/LocalSearchCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/search/LocalSearchCursor;->getInt(I)I

    move-result v6

    .line 520
    new-instance v7, Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;

    rsub-int/lit8 v8, v4, -0x64

    .line 522
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v6}, Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;-><init>(ILjava/lang/String;I)V

    .line 520
    invoke-virtual {v5, v7}, Lcom/samsung/android/app/music/search/LocalSearchCursor;->a(Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;)V

    const/4 v7, 0x4

    if-le v6, v7, :cond_1

    .line 524
    new-instance v7, Lcom/samsung/android/app/music/search/AbstractSearchCursor$ViewMoreItem;

    rsub-int v8, v4, -0xc8

    .line 526
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v8, v4, v6}, Lcom/samsung/android/app/music/search/AbstractSearchCursor$ViewMoreItem;-><init>(ILjava/lang/String;I)V

    .line 524
    invoke-virtual {v5, v7}, Lcom/samsung/android/app/music/search/LocalSearchCursor;->a(Lcom/samsung/android/app/music/search/AbstractSearchCursor$ViewMoreItem;)V

    .line 528
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 530
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 531
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    .line 532
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/database/Cursor;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/Cursor;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/list/local/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    return-object p0
.end method

.method private b(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 5
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

    if-eqz p2, :cond_0

    .line 539
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    const/16 v3, -0x65

    const/16 v4, -0x3f3

    if-nez v1, :cond_1

    .line 541
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/music/search/SearchableAdapter;->removeHeaderView(I)V

    .line 542
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/music/search/SearchableAdapter;->removeFooterView(I)V

    .line 543
    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->m:Landroid/database/Cursor;

    .line 544
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->a(Z)V

    goto :goto_1

    .line 546
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->p:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 547
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->g()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 548
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/music/search/SearchableAdapter;->removeHeaderView(I)V

    .line 549
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/music/search/SearchableAdapter;->removeFooterView(I)V

    .line 550
    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->m:Landroid/database/Cursor;

    .line 551
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->a(Z)V

    goto :goto_1

    .line 553
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/music/search/SearchableAdapter;->hasFooterView(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 554
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/search/SearchableAdapter;

    const v0, 0x7f0400f3

    invoke-virtual {p1, v3, v0}, Lcom/samsung/android/app/music/search/SearchableAdapter;->addHeaderView(II)V

    .line 556
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/search/SearchableAdapter;

    const v0, 0x7f0400f1

    invoke-virtual {p1, v4, v0}, Lcom/samsung/android/app/music/search/SearchableAdapter;->addFooterView(II)V

    .line 558
    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->m:Landroid/database/Cursor;

    const/4 p1, 0x1

    .line 559
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->a(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 3

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->k()Z

    move-result v0

    const v1, 0x7f0b02c2

    if-eqz v0, :cond_0

    const v0, 0x7f1302e8

    .line 284
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->k:Landroid/widget/TextView;

    .line 285
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 287
    :cond_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    const/4 v0, 0x0

    const v2, 0x7f0f003a

    .line 288
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;)V

    .line 287
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/list/local/SearchFragment;I)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->j(I)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/list/local/SearchFragment;ILandroid/os/Bundle;)V
    .locals 0

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->d(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/list/local/SearchFragment;)Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->d:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
            ">;"
        }
    .end annotation

    .line 357
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->j:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne v0, v1, :cond_0

    .line 359
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionView;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionView;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;I)V

    goto :goto_0

    .line 362
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 365
    :goto_0
    new-instance v1, Lcom/samsung/android/app/music/list/local/SearchFragment$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$2;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;Ljava/lang/String;Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;->a(Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/list/local/SearchFragment;)V
    .locals 0

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->m()V

    return-void
.end method

.method static synthetic d()[I
    .locals 1

    .line 131
    sget-object v0, Lcom/samsung/android/app/music/list/local/SearchFragment;->a:[I

    return-object v0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/list/local/SearchFragment;)Lcom/samsung/android/app/music/search/ISearchPageSwitcher;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->l:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    return-object p0
.end method

.method private e(I)V
    .locals 10

    .line 673
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/SearchableAdapter;->f()I

    move-result v0

    .line 674
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/search/SearchableAdapter;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->e(I)I

    move-result v1

    .line 676
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 677
    new-array v3, v0, [J

    .line 679
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/search/SearchableAdapter;->e()I

    move-result v4

    .line 680
    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v5, 0x1

    .line 683
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    aput-wide v7, v3, v5

    .line 684
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    if-lt v6, v0, :cond_0

    goto :goto_1

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr p1, v1

    .line 687
    new-instance v0, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;-><init>()V

    .line 688
    iput-object v3, v0, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;->a:[J

    .line 689
    iput p1, v0, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;->b:I

    .line 691
    iget-object v4, v0, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;->a:[J

    iget v5, v0, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;->b:I

    const/16 v6, -0x64

    const/16 v7, -0x64

    .line 692
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->g()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->h()Ljava/lang/String;

    move-result-object v9

    .line 691
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIIIILjava/lang/String;)I

    return-void
.end method

.method private f()V
    .locals 15

    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 247
    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .line 250
    move-object v10, v6

    check-cast v10, Lcom/samsung/android/app/music/network/NetworkManager;

    .line 256
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "Search"

    :goto_0
    move-object v11, v0

    const/4 v0, 0x4

    .line 261
    new-array v12, v0, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    const/4 v13, 0x0

    new-instance v14, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;

    move-object v0, v14

    move-object v1, v7

    move-object v2, v8

    move-object v3, p0

    move-object v4, v9

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;Lcom/samsung/android/app/music/network/NetworkManager;)V

    aput-object v14, v12, v13

    const/4 v0, 0x1

    new-instance v1, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor;

    invoke-direct {v1, v7, v8, p0, p0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;Lcom/samsung/android/app/music/list/common/SearchPlayable;)V

    aput-object v1, v12, v0

    const/4 v13, 0x2

    new-instance v14, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->l:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    move-object v0, v14

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/search/ISearchPageSwitcher;Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;Lcom/samsung/android/app/music/network/NetworkManager;Landroid/content/Context;)V

    aput-object v14, v12, v13

    const/4 v0, 0x3

    new-instance v1, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor;

    invoke-direct {v1, v7, v8, p0, p0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultPlayExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;Lcom/samsung/android/app/music/list/common/SearchPlayable;)V

    aput-object v1, v12, v0

    invoke-interface {v7, v11, v12}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/samsung/android/app/music/list/local/SearchFragment;)Z
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->k()Z

    move-result p0

    return p0
.end method

.method private h(Z)V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 582
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 583
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 585
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->p:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 586
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private i()V
    .locals 5

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    .line 273
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;-><init>([I)V

    .line 276
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 277
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    new-instance v3, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$SearchDividerChecker;

    invoke-direct {v3}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$SearchDividerChecker;-><init>()V

    const v4, 0x7f020220

    invoke-direct {v2, v4, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;)V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const/4 v1, 0x1

    .line 279
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->c(Landroid/support/v7/widget/RecyclerView;Z)V

    return-void

    :array_0
    .array-data 4
        -0x64
        -0x65
        -0x3f3
    .end array-data
.end method

.method private j(I)V
    .locals 4

    .line 696
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 697
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/search/SearchableAdapter;

    .line 698
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    .line 699
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 700
    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->b(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 701
    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    .line 699
    invoke-static {v0, v2, v3, p1}, Lcom/samsung/android/app/music/recommend/SeedTracker;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private k()Z
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->j:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->j:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->j:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->c()Lcom/samsung/android/app/music/search/SearchableAdapter;

    move-result-object v0

    return-object v0
.end method

.method public a(II)V
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->i:Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;->a(II)V

    return-void
.end method

.method public a(ILcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;)V
    .locals 1
    .param p2    # Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 706
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->f:Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->a(ILcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;)V

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

    if-eqz p2, :cond_0

    .line 466
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 467
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->g()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 468
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p2

    .line 470
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 471
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->b(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 472
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->m:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 474
    new-instance p2, Landroid/database/MatrixCursor;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->m:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/search/SearchableAdapter;

    const/16 v3, -0x65

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/search/SearchableAdapter;->removeHeaderView(I)V

    :cond_2
    if-nez v1, :cond_3

    .line 480
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-eqz v2, :cond_3

    .line 481
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;)V

    .line 482
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->d:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 485
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 486
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result p2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->g()I

    move-result v2

    if-ne p2, v2, :cond_5

    .line 487
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    .line 488
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->d()Landroid/net/Uri;

    move-result-object p1

    const-string p2, "query_text"

    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 489
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 490
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->f:Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->a(Ljava/lang/String;)V

    .line 491
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->k()Z

    move-result p2

    if-eqz p2, :cond_5

    if-nez v1, :cond_4

    const/4 p2, 0x1

    .line 493
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->h(Z)V

    .line 494
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->v_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "SearchFragment"

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send delay request to suggest with : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->n:Lcom/samsung/android/app/music/list/local/SearchFragment$SuggestionRetrieveHandler;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment$SuggestionRetrieveHandler;->removeMessages(I)V

    .line 497
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->n:Lcom/samsung/android/app/music/list/local/SearchFragment$SuggestionRetrieveHandler;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->n:Lcom/samsung/android/app/music/list/local/SearchFragment$SuggestionRetrieveHandler;

    .line 498
    invoke-virtual {v1, p2, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SuggestionRetrieveHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    .line 497
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/music/list/local/SearchFragment$SuggestionRetrieveHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 502
    :cond_4
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->h(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 315
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->a(Landroid/view/View;)V

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->o:Landroid/view/View;

    .line 317
    new-instance v0, Lcom/samsung/android/app/music/list/local/SearchFragment$GlobalLayoutListener;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$GlobalLayoutListener;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->q:Lcom/samsung/android/app/music/list/local/SearchFragment$GlobalLayoutListener;

    .line 318
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->q:Lcom/samsung/android/app/music/list/local/SearchFragment$GlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 716
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->l:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    sget-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_HISTORY:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    const/4 p1, 0x1

    return p1

    .line 720
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1

    .line 432
    new-instance p1, Lcom/samsung/android/app/music/search/SearchQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->v_()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/search/SearchQueryArgs;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    .line 725
    new-instance v0, Lcom/samsung/android/app/music/list/local/SearchFragment$7;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$7;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 731
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/list/local/SearchFragment$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$6;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 737
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected c()Lcom/samsung/android/app/music/search/SearchableAdapter;
    .locals 2

    .line 417
    new-instance v0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "_id"

    .line 418
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;

    const-string v1, "album_id"

    .line 419
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->s:Landroid/view/View$OnClickListener;

    .line 420
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->a(Landroid/view/View$OnClickListener;)Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->j:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    .line 421
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->r:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->b()Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 3

    .line 742
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->c(Ljava/lang/String;)V

    const-string v0, "SearchFragment"

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "search text with : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and cancel suggestion"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->n:Lcom/samsung/android/app/music/list/local/SearchFragment$SuggestionRetrieveHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SuggestionRetrieveHandler;->removeMessages(I)V

    return-void
.end method

.method public deleteItems()V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    .line 451
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 452
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    new-instance v1, Lcom/samsung/android/app/music/list/local/SearchFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$3;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;)V

    .line 461
    invoke-super {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->deleteItems()V

    return-void
.end method

.method public g()I
    .locals 1

    const v0, 0x100024

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 193
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->onAttach(Landroid/app/Activity;)V

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 195
    instance-of v0, p1, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    if-eqz v0, :cond_0

    .line 196
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->l:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    .line 198
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/music/search/SearchTabFragment;

    if-eqz v0, :cond_1

    .line 199
    check-cast p1, Lcom/samsung/android/app/music/search/SearchTabFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->f()Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eq p1, p0, :cond_1

    const/4 p1, 0x0

    .line 201
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->setUserVisibleHint(Z)V

    .line 202
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->setMenuVisibility(Z)V

    :cond_1
    const-string p1, "961"

    const-string v0, "962"

    .line 205
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 567
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 568
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->m:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 569
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const v2, 0x100124

    if-ne v0, v1, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object p1

    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->m:Landroid/database/Cursor;

    .line 571
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 570
    invoke-super {p0, p1, v0}, Lcom/samsung/android/app/music/search/SearchableFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    goto :goto_0

    .line 572
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 573
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->m:Landroid/database/Cursor;

    invoke-super {p0, p1, v0}, Lcom/samsung/android/app/music/search/SearchableFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 184
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "supported_store"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->j:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    :cond_0
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

    const v0, 0x100124

    if-ne p1, v0, :cond_0

    const-string p1, "suggestion_keyword"

    .line 332
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 333
    new-instance p2, Lcom/samsung/android/app/music/list/local/SearchFragment$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V

    .line 347
    new-instance v0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->d(Ljava/lang/String;)Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;Lcom/samsung/android/app/music/contents/Cursorable;)V

    return-object v0

    .line 350
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object p1

    return-object p1
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

    .line 213
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const p3, 0x7f0400c7

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 216
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/search/SearchableFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->o:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->q:Lcom/samsung/android/app/music/list/local/SearchFragment$GlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 326
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->onDestroyView()V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 131
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 221
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->f()V

    .line 225
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->r:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    const/4 p2, 0x0

    .line 227
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->b_(I)V

    .line 229
    new-instance v0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;Lcom/samsung/android/app/music/list/local/SearchFragment$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->f:Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;

    .line 230
    new-instance v0, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;Lcom/samsung/android/app/music/list/local/SearchFragment$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->i:Lcom/samsung/android/app/music/list/local/SearchFragment$SearchPlayableImpl;

    const v0, 0x7f13013e

    .line 231
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->p:Landroid/view/View;

    .line 233
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->c(Z)V

    .line 234
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->i()V

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->g()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->d(I)V

    .line 236
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->b(Landroid/view/View;)V

    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->H()V

    .line 239
    new-instance p1, Lcom/samsung/android/app/music/search/NoItemAnimator;

    invoke-direct {p1}, Lcom/samsung/android/app/music/search/NoItemAnimator;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->d:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->d:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 427
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
