.class public Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter$Builder;,
        Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


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

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter$ViewHolder;
    .locals 2

    if-nez p3, :cond_0

    .line 30
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0400ee

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 33
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter$ViewHolder;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter$ViewHolder;I)V
    .locals 2

    .line 38
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 39
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;->context:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;->text1Index:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method protected synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;->a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter$ViewHolder;I)V

    return-void
.end method

.method protected synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method
