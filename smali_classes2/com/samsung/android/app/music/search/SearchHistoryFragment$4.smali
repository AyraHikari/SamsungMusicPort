.class Lcom/samsung/android/app/music/search/SearchHistoryFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/SearchHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/search/SearchHistoryFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/search/SearchHistoryFragment;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment$4;->a:Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 0

    .line 213
    iget-object p3, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment$4;->a:Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    .line 214
    invoke-virtual {p3}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;

    invoke-virtual {p3, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    .line 216
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p3

    const p4, 0x7f13031c

    if-ne p3, p4, :cond_0

    .line 219
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment$4;->a:Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/search/SearchUtils;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 220
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment$4;->a:Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->a(Lcom/samsung/android/app/music/search/SearchHistoryFragment;)V

    return-void

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p3, 0x7f130318

    if-ne p1, p3, :cond_1

    .line 223
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment$4;->a:Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchUtils;->c(Landroid/content/Context;)V

    .line 224
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment$4;->a:Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->a(Lcom/samsung/android/app/music/search/SearchHistoryFragment;)V

    return-void

    .line 226
    :cond_1
    sget-object p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->PRESET:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->getViewType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->getType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->HISTORY:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    .line 228
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->getViewType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->getType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 230
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchHistoryFragment$4;->a:Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->b(Lcom/samsung/android/app/music/search/SearchHistoryFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milksearch/SearchPreset;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->b_(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
