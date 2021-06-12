.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;->j()Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$3;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$3;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;->a(I)Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;

    move-result-object p1

    .line 156
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$3;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;->getWord()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->b_(Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$3;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;->b(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;)Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    return-void
.end method
