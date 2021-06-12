.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$SearchFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchFilter"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V
    .locals 0

    .line 955
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$SearchFilter;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$1;)V
    .locals 0

    .line 955
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$SearchFilter;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences;)I
    .locals 0

    .line 972
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$SearchFilter;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->j(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/content/SharedPreferences;I)V
    .locals 1

    .line 978
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$SearchFilter;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->b(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;I)I

    .line 979
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$SearchFilter;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->c(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;I)I

    .line 980
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$SearchFilter;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    new-instance p2, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants;->a:[Ljava/lang/String;

    invoke-direct {p2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 981
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$SearchFilter;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public a()[I
    .locals 6

    const-string v0, "3"

    .line 960
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$SearchFilter;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    .line 961
    new-array v0, v4, [I

    sget-object v4, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->ACCURACY:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->toFilterOption()I

    move-result v4

    aput v4, v0, v3

    sget-object v3, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->POPULAR:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    .line 962
    invoke-virtual {v3}, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->toFilterOption()I

    move-result v3

    aput v3, v0, v2

    sget-object v2, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->NAME:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->toFilterOption()I

    move-result v2

    aput v2, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x4

    .line 964
    new-array v0, v0, [I

    sget-object v5, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->ACCURACY:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->toFilterOption()I

    move-result v5

    aput v5, v0, v3

    sget-object v3, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->POPULAR:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    .line 965
    invoke-virtual {v3}, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->toFilterOption()I

    move-result v3

    aput v3, v0, v2

    sget-object v2, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->LATEST:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->toFilterOption()I

    move-result v2

    aput v2, v0, v1

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->NAME:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    .line 966
    invoke-virtual {v1}, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->toFilterOption()I

    move-result v1

    aput v1, v0, v4

    return-object v0
.end method
