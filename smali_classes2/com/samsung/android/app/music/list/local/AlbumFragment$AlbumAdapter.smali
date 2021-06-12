.class public final Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlbumAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "Lcom/samsung/android/app/music/list/common/GridViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/common/GridViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 187
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x7f040178

    .line 188
    invoke-virtual {p3, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 190
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/list/common/GridViewHolder;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-direct {p1, v1, p3, p2}, Lcom/samsung/android/app/music/list/common/GridViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    .line 191
    iget-object p2, p1, Lcom/samsung/android/app/music/list/common/GridViewHolder;->textView3:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/GridViewHolder;->e()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/list/common/GridViewHolder;I)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 197
    iget v0, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter;->text1Index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 199
    iget-object v0, p1, Lcom/samsung/android/app/music/list/common/GridViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter;->context:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter;->text1Index:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter;->text2Index:I

    if-eq v0, v1, :cond_1

    .line 203
    iget-object v0, p1, Lcom/samsung/android/app/music/list/common/GridViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter;->context:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter;->text2Index:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter;->text3Index:I

    if-eq v0, v1, :cond_2

    .line 206
    iget-object p1, p1, Lcom/samsung/android/app/music/list/common/GridViewHolder;->textView3:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0004

    .line 208
    iget v2, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter;->text3Index:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 209
    iget v5, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter;->text3Index:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    .line 206
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method protected b(Lcom/samsung/android/app/music/list/common/GridViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-super {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolderThumbnailView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 216
    iget-object p1, p1, Lcom/samsung/android/app/music/list/common/GridViewHolder;->thumbnailView:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 178
    check-cast p1, Lcom/samsung/android/app/music/list/common/GridViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter;->a(Lcom/samsung/android/app/music/list/common/GridViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolderThumbnailView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 178
    check-cast p1, Lcom/samsung/android/app/music/list/common/GridViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter;->b(Lcom/samsung/android/app/music/list/common/GridViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 178
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/common/GridViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    return-object p1
.end method
