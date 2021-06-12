.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$4;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 0

    .line 250
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$4;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->b(Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$4;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;->getText1(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->b_(Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment$4;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->c(Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;)Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    return-void
.end method
