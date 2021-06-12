.class public final Lcom/samsung/android/app/music/list/local/ArtistAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/ArtistAdapter$Builder;
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

    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    return-void
.end method


# virtual methods
.method protected onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 9

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/ArtistAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 26
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/music/list/local/ArtistAdapter;->text1Index:I

    if-eq v0, v1, :cond_1

    .line 28
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/ArtistAdapter;->context:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/app/music/list/local/ArtistAdapter;->text1Index:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/list/local/ArtistAdapter;->text2Index:I

    if-eq v0, v1, :cond_4

    .line 31
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/ArtistAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0d0000

    .line 32
    iget v4, p0, Lcom/samsung/android/app/music/list/local/ArtistAdapter;->text2Index:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget v7, p0, Lcom/samsung/android/app/music/list/local/ArtistAdapter;->text2Index:I

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 31
    invoke-virtual {v2, v3, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget v0, p0, Lcom/samsung/android/app/music/list/local/ArtistAdapter;->text3Index:I

    if-eq v0, v1, :cond_4

    .line 35
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0004

    .line 36
    iget v2, p0, Lcom/samsung/android/app/music/list/local/ArtistAdapter;->text3Index:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/app/music/list/local/ArtistAdapter;->text3Index:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v8

    .line 35
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 18
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/ArtistAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0400db

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 21
    :cond_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-direct {p1, v0, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    return-object p1
.end method
