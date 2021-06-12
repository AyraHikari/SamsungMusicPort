.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/contents/Cursorable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Landroid/content/Context;)V
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
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$4;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Landroid/database/Cursor;
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$4;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$4;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getHeaderViewCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$4;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;-><init>(Ljava/util/List;Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)V

    return-object v0

    .line 382
    :cond_0
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    if-eqz v1, :cond_1

    .line 383
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    .line 384
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    goto :goto_0

    .line 386
    :cond_1
    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    .line 388
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->d()Ljava/util/List;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$4;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 391
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$4;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 393
    :cond_2
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;-><init>(Ljava/util/List;Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)V

    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 0

    .line 373
    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$4;->a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
