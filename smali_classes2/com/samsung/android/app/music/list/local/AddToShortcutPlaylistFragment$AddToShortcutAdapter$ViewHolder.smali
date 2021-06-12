.class public final Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V
    .locals 1
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

    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p3, 0x7f0b0141

    .line 195
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;->a(I)V

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;->initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    const p3, 0x7f0b030b

    .line 183
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;->a(I)V

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;->initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    const p3, 0x7f0b030c

    .line 187
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;->a(I)V

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;->initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    const p3, 0x7f0b026a

    .line 191
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;->a(I)V

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;->initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(I)V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 203
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "itemView.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 204
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutPlaylistFragment$AddToShortcutAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method
