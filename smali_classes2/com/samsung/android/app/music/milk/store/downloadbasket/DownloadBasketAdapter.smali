.class public final Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;
.super Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$SubscriptionHeaderHolder;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$DownloadBasketTrackViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter<",
        "Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;)V

    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->g:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->j:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->k:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->l:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->e()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->m:I

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->n:I

    .line 25
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->o:I

    .line 26
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->p:I

    .line 27
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->q:I

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$DownloadBasketTrackViewHolder;I)V
    .locals 3

    .line 83
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    .line 84
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->o:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->p:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$DownloadBasketTrackViewHolder;->a()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "00"

    .line 87
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 88
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->context:Landroid/content/Context;

    const v0, 0x7f0b046b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_0

    .line 89
    :cond_0
    iget p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->m:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 90
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0b046c

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "context.getString(R.stri\u2026milk_download_basket_krw)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    array-length v0, v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    const-string p2, ""

    .line 91
    check-cast p2, Ljava/lang/CharSequence;

    .line 86
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private final b(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$DownloadBasketTrackViewHolder;I)V
    .locals 1

    .line 99
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$DownloadBasketTrackViewHolder;->b()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->m:I

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->q:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_0

    .line 100
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->context:Landroid/content/Context;

    const v0, 0x7f0b04c3

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    .line 99
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x5

    if-eq p2, v0, :cond_2

    if-nez p3, :cond_0

    .line 41
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f040073

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 45
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$DownloadBasketTrackViewHolder;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;

    if-nez p3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-direct {p1, v0, p3, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$DownloadBasketTrackViewHolder;-><init>(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;Landroid/view/View;I)V

    check-cast p1, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;

    goto :goto_0

    .line 37
    :cond_2
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$SubscriptionHeaderHolder;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;

    if-nez p3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-direct {p1, v0, p3, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$SubscriptionHeaderHolder;-><init>(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;Landroid/view/View;I)V

    check-cast p1, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;

    :goto_0
    return-object p1
.end method

.method public final a(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 106
    check-cast v0, Ljava/lang/String;

    .line 107
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 108
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->n:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 109
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->n:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->a(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;I)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->getItemViewType(I)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->m:I

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->o:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->p:I

    if-eq v0, v1, :cond_1

    .line 58
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$DownloadBasketTrackViewHolder;

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$DownloadBasketTrackViewHolder;I)V

    .line 60
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->q:I

    if-eq v0, v1, :cond_2

    .line 61
    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$DownloadBasketTrackViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->b(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$DownloadBasketTrackViewHolder;I)V

    :cond_2
    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->a(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;I)V

    return-void
.end method

.method public final b(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 115
    check-cast v0, Ljava/lang/String;

    .line 116
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 117
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->p:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 118
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->p:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final c(I)I
    .locals 2

    .line 125
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 127
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->o:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "newCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->n:I

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 72
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->o:I

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->k:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 75
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->p:I

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->l:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 78
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->q:I

    :cond_3
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->a(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->a(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    return-object p1
.end method
