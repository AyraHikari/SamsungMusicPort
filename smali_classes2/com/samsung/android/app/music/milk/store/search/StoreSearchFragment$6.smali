.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/contents/Cursorable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/contents/Cursorable<",
        "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$6;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x64

    return p1
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Landroid/database/Cursor;
    .locals 12
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 676
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 678
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->i()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v8, v1, v4

    .line 679
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$6;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->d(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object v5

    invoke-static {v8, v5, p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Ljava/lang/String;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object v7

    .line 680
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$6;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    add-int/lit8 v11, v3, 0x1

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$6;->a(I)I

    move-result v9

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$6;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    .line 681
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->b(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;)Lcom/samsung/android/app/music/search/SearchColumnManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/samsung/android/app/music/search/SearchColumnManager;->c(Ljava/lang/String;)I

    move-result v10

    move-object v6, p1

    .line 680
    invoke-static/range {v5 .. v10}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;Ljava/util/List;Ljava/lang/String;II)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move v3, v11

    goto :goto_0

    .line 683
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 684
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    .line 685
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/database/Cursor;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/Cursor;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 671
    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$6;->a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
