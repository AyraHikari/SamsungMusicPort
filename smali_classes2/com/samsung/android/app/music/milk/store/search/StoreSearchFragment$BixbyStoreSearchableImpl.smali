.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BixbyStoreSearchableImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

.field private b:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable$OnSearchListener;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;Landroid/content/Context;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 704
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->e:Z

    .line 707
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 764
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->b:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable$OnSearchListener;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->e:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 767
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->e:Z

    .line 768
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/search/SearchableAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->c:Ljava/lang/String;

    .line 769
    invoke-static {v2}, Lcom/samsung/android/app/music/search/SearchUtils;->b(Ljava/lang/String;)I

    move-result v2

    .line 768
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->e(I)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 772
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    add-int/2addr v1, v0

    invoke-static {v2, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object v2

    :cond_1
    const/4 v1, 0x0

    if-eqz v2, :cond_3

    .line 776
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->c:Ljava/lang/String;

    .line 777
    invoke-static {v3}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 776
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->getInt(I)I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    if-lez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 784
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->b:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable$OnSearchListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable$OnSearchListener;->a(I)V

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 10

    const-string v0, "StoreSearchFragment"

    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move to result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", this : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/search/SearchableAdapter;

    .line 715
    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchUtils;->b(Ljava/lang/String;)I

    move-result v1

    .line 714
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->e(I)I

    move-result v0

    .line 716
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    .line 717
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/support/v7/widget/GridLayoutManager;

    .line 718
    new-instance v9, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v1

    move v5, p2

    move-object v6, p1

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;Landroid/support/v7/widget/RecyclerView;ILjava/lang/String;I)V

    invoke-virtual {v1, v9}, Landroid/support/v7/widget/RecyclerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    add-int/lit8 p1, v0, -0x1

    const/4 p2, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 749
    :cond_0
    invoke-virtual {v8, p1, p2}, Landroid/support/v7/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    const-string p1, "StoreSearchFragment"

    .line 750
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "move to position : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable$OnSearchListener;)V
    .locals 0
    .param p2    # Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable$OnSearchListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 756
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->c:Ljava/lang/String;

    .line 757
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->b:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable$OnSearchListener;

    .line 758
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 759
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment$BixbyStoreSearchableImpl;->a()V

    :cond_0
    return-void
.end method
