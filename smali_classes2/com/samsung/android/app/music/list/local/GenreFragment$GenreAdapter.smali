.class public final Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/GenreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GenreAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "Lcom/samsung/android/app/music/list/common/GridViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I


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

    .line 175
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    const/4 p1, -0x1

    .line 177
    iput p1, p0, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;->a:I

    .line 178
    iput p1, p0, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/common/GridViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 193
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x7f040178

    .line 194
    invoke-virtual {p3, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 196
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/list/common/GridViewHolder;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-direct {p1, v1, p3, p2}, Lcom/samsung/android/app/music/list/common/GridViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    .line 197
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/GridViewHolder;->a()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 198
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/GridViewHolder;->c()Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    :cond_3
    iget-object p2, p1, Lcom/samsung/android/app/music/list/common/GridViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    :cond_4
    iget-object p2, p1, Lcom/samsung/android/app/music/list/common/GridViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz p2, :cond_5

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    return-object p1
.end method

.method protected a(Lcom/samsung/android/app/music/list/common/GridViewHolder;I)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 207
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/GridViewHolder;->c()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;->context:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;->a:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :cond_0
    iget-object p1, p1, Lcom/samsung/android/app/music/list/common/GridViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0004

    .line 210
    iget v2, p0, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;->b:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;->b:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    .line 209
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected b(Lcom/samsung/android/app/music/list/common/GridViewHolder;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 221
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->b:Landroid/net/Uri;

    .line 222
    iget v1, p0, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;->thumbnailIdIndex:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 224
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/common/GridViewHolder;->thumbnailView:Landroid/widget/ImageView;

    sget v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->a:I

    invoke-direct {p2, p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;-><init>(Landroid/widget/ImageView;I)V

    const p1, 0x7f100086

    .line 225
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p1

    .line 226
    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    return-void
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "newCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->initColIndex(Landroid/database/Cursor;)V

    const-string v0, "genre_name"

    .line 182
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;->a:I

    const-string v0, "number_of_tracks"

    .line 183
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;->b:I

    return-void
.end method

.method public synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 174
    check-cast p1, Lcom/samsung/android/app/music/list/common/GridViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;->a(Lcom/samsung/android/app/music/list/common/GridViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolderThumbnailView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 174
    check-cast p1, Lcom/samsung/android/app/music/list/common/GridViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;->b(Lcom/samsung/android/app/music/list/common/GridViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 174
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/common/GridViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    return-object p1
.end method
