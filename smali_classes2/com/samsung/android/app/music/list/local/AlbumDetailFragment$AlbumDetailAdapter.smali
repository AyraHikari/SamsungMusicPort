.class public final Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlbumDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;,
        Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<",
        "Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    const/4 p1, 0x1

    .line 352
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, -0x3e8

    if-ne p2, v2, :cond_1

    if-nez v0, :cond_0

    .line 378
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast v0, Landroid/app/Activity;

    const p3, 0x7f0400fb

    invoke-static {v0, p3, p1, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->a(Landroid/app/Activity;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_1
    if-nez p3, :cond_3

    if-nez v0, :cond_2

    .line 381
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    check-cast v0, Landroid/app/Activity;

    const p3, 0x7f0400d8

    invoke-static {v0, p3, p1, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->a(Landroid/app/Activity;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 385
    :cond_3
    :goto_0
    new-instance p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;

    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;Landroid/view/View;I)V

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    invoke-super {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    .line 390
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_2

    .line 391
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 393
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0b0100

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->f()I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 394
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->a()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->a()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0b03f4

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0

    .line 349
    check-cast p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->a(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 352
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 352
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->a:Z

    return v0
.end method

.method protected b(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 402
    iget-object v0, p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->text1Index:I

    if-eq v0, v1, :cond_0

    .line 404
    iget-object v0, p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->context:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->text1Index:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->text2Index:I

    if-eq v0, v1, :cond_1

    .line 408
    iget-object v0, p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->context:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->text2Index:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->text3Index:I

    if-eq v0, v1, :cond_3

    const-string v0, ""

    .line 412
    iget v1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->text3Index:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-lez p2, :cond_2

    .line 414
    div-int/lit16 p2, p2, 0x3e8

    .line 415
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->context:Landroid/content/Context;

    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiUtils.makeTimeString(context, duration.toLong())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    :cond_2
    iget-object v1, p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 425
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 427
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, -0x64

    if-ne v0, v1, :cond_2

    const/16 p1, -0x3e8

    goto :goto_0

    .line 430
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemViewType(I)I

    move-result v0
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v0

    goto :goto_0

    .line 433
    :catch_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemViewType(I)I

    move-result p1

    :goto_0
    return p1

    .line 436
    :cond_3
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 349
    check-cast p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->a(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 349
    check-cast p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->a(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 349
    check-cast p1, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->b(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 349
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    return-object p1
.end method
