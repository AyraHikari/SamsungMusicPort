.class Lcom/samsung/android/app/music/list/local/SearchFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/contents/Cursorable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
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
.field final synthetic a:Lcom/samsung/android/app/music/list/local/SearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$1;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Landroid/database/Cursor;
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$1;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->a(Lcom/samsung/android/app/music/list/local/SearchFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    const/4 v2, 0x4

    if-ne v0, v1, :cond_0

    .line 337
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    .line 338
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;-><init>(Ljava/util/List;)V

    return-object v0

    .line 341
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    .line 342
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchUtils;->b(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 0

    .line 333
    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$1;->a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
