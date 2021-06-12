.class public Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$Builder;,
        Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;
    .locals 2
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p3, :cond_0

    .line 49
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0400f2

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 52
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method public a(I)Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;
    .locals 2

    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    .line 77
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 78
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;->b()Landroid/database/Cursor;

    move-result-object p1

    .line 79
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$KeywordCursor;

    if-eqz v0, :cond_1

    .line 80
    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$KeywordCursor;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$KeywordCursor;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;

    move-object v1, p1

    goto :goto_0

    .line 82
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$KeywordCursor;

    if-eqz v0, :cond_1

    .line 83
    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$KeywordCursor;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$KeywordCursor;->a()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;

    :cond_1
    :goto_0
    return-object v1
.end method

.method public a(Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;I)V
    .locals 2

    .line 57
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 58
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;->a(I)Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;->a(Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;->getModifiedPosition(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;->b(Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;)Lcom/samsung/android/app/music/milk/store/widget/RankView;

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/milksearch/SearchPopularInfo;->getRankingChange()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/RankView;->setRankChange(I)V

    :cond_0
    return-void
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemViewType(I)I

    move-result p1

    const/16 v0, -0xb

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/16 p1, 0xa

    return p1
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 32
    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;->a(Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 32
    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;->a(Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;I)V

    return-void
.end method

.method protected synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/search/SearchKeywordAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
