.class public final Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
            "*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    const/4 v0, -0x3

    if-eq p3, v0, :cond_0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p2, 0x7f0202d5

    const p3, 0x7f0b0309

    const v0, 0x7f0b03ed

    .line 259
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;III)V

    goto :goto_0

    :pswitch_1
    const p3, 0x7f0202cf

    const v0, 0x7f0b0141

    const v1, 0x7f0b03ec

    .line 266
    invoke-direct {p0, p1, p3, v0, v1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;III)V

    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const p2, 0x7f0202cd

    const p3, 0x7f0b019d

    const v0, 0x7f0b03ee

    .line 253
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;III)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(II)V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "itemView.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 294
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private final a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
            "*>;III)V"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->a(II)V

    .line 286
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string p3, "itemView"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    return-void
.end method
