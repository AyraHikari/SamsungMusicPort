.class public final Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaylistAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private final d:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 659
    new-instance p1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->d:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    return-void
.end method

.method private final a(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f13025f

    .line 708
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById<Gr\u2026(R.id.company_info_group)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/support/constraint/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/constraint/Group;->setVisibility(I)V

    const v0, 0x7f1301e0

    .line 709
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 711
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b04bf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 712
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 711
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$initViewCompanyInformation$$inlined$run$lambda$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$initViewCompanyInformation$$inlined$run$lambda$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;Landroid/view/View;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "fragment.activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, -0x3f1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 678
    :cond_1
    check-cast v0, Landroid/app/Activity;

    const p3, 0x7f0400e5

    invoke-static {v0, p3, p1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->a(Landroid/app/Activity;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    .line 674
    :cond_2
    check-cast v0, Landroid/app/Activity;

    const p3, 0x7f04007f

    invoke-static {v0, p3, p1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->a(Landroid/app/Activity;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 675
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_3

    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->a(Landroid/view/View;)V

    .line 682
    :cond_3
    :goto_0
    new-instance p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez p3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-direct {p1, v0, p3, p2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    const/4 p3, -0x4

    if-ne p2, p3, :cond_5

    .line 684
    iget-object p2, p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz p2, :cond_5

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    return-object p1
.end method

.method public final a(I)V
    .locals 0

    .line 723
    iput p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->c:I

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, -0x3f1

    if-eq v0, v2, :cond_4

    .line 698
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-super {p0, v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    if-ltz v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->d:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;J)V

    .line 704
    :cond_1
    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    iget-boolean p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->a:Z

    if-eqz p2, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void

    .line 692
    :cond_4
    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f1301f7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "holder.itemView.findView\u2026<View>(R.id.no_item_text)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->b:Z

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    .line 693
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 655
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->a:Z

    return-void
.end method

.method public final b(I)Ljava/lang/Integer;
    .locals 1

    .line 727
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "display_order"

    .line 951
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final b(Z)V
    .locals 0

    .line 662
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->b:Z

    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 652
    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->a(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 652
    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->a(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 652
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    return-object p1
.end method
