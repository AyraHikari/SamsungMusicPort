.class public Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


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

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->a:I

    return-void
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 2

    .line 29
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 30
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "artist"

    .line 31
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->keywordIndex:I

    goto :goto_0

    :cond_0
    const-string v0, "_id"

    .line 33
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->keywordIndex:I

    :goto_0
    return-void
.end method

.method protected onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 8

    .line 47
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 48
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->text1Index:I

    if-eq v0, v1, :cond_0

    .line 49
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->context:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->text1Index:I

    .line 50
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->text2Index:I

    if-eq v0, v1, :cond_2

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/app/musiclibrary/R$plurals;->NNNalbum:I

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->text2Index:I

    .line 54
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->text2Index:I

    .line 55
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 54
    invoke-virtual {v0, v2, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 57
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->text3Index:I

    if-eq v0, v1, :cond_1

    const-string v0, "   "

    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->fragment:Landroid/support/v4/app/Fragment;

    .line 59
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$plurals;->NNNtrack:I

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->text3Index:I

    .line 60
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->text3Index:I

    .line 61
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v7

    .line 60
    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_1
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 2

    if-nez p3, :cond_0

    .line 39
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/samsung/android/app/musiclibrary/R$layout;->mu_list_item:I

    const/4 v1, 0x0

    .line 40
    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 42
    :cond_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    return-object p1
.end method
