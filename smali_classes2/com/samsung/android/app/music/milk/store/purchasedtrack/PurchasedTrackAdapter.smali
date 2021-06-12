.class public final Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;
.super Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;,
        Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;,
        Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;,
        Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$SubHeaderViewHolder;,
        Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter<",
        "Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Companion;


# instance fields
.field private j:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->g:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$AbsBuilder;)V

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->k:Z

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$SubHeaderViewHolder;Landroid/database/Cursor;)V
    .locals 7

    const-string v0, "order_date_local"

    .line 80
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "c.getString(c.getColumnI\u2026ns.COL_ORDER_DATE_LOCAL))"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    const-string p2, " "

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->b(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 79
    check-cast p2, Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$SubHeaderViewHolder;->a()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;Landroid/database/Cursor;Z)V
    .locals 3

    const-string v0, "download_state"

    .line 93
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;->a()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->isActionModeEnabled()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {v2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    if-eqz p1, :cond_4

    .line 108
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;->textView3:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 104
    iget-object p2, p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;->textView3:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " | "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->context:Landroid/content/Context;

    const v2, 0x7f0b0207

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 105
    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;->textView3:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private final b()Z
    .locals 1

    const/16 v0, -0x3eb

    .line 138
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->hasFooterView(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, -0x3e9

    if-eq p2, v1, :cond_2

    if-nez p3, :cond_0

    .line 45
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x7f04019e

    .line 46
    invoke-virtual {p3, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 48
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;

    .line 49
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;

    if-nez p3, :cond_1

    .line 50
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 52
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->k:Z

    .line 48
    invoke-direct {p1, v0, p3, p2, v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;-><init>(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;Landroid/view/View;IZ)V

    check-cast p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    .line 37
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x7f04019f

    .line 38
    invoke-virtual {p3, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 40
    :cond_3
    new-instance p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$SubHeaderViewHolder;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;

    if-nez p3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-direct {p1, v0, p3, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$SubHeaderViewHolder;-><init>(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;Landroid/view/View;I)V

    check-cast p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;

    :goto_0
    return-object p1
.end method

.method public final a()Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->j:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->a(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;I)V
    .locals 2

    .line 62
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;

    invoke-super {p0, v0, p2}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->a(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter$StoreViewHolder;I)V

    .line 64
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->getItemViewType(I)I

    move-result v0

    .line 65
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p2

    const/16 v1, -0x3e9

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 72
    check-cast p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->k:Z

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->a(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;Landroid/database/Cursor;Z)V

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.milk.store.purchasedtrack.PurchasedTrackAdapter.TrackViewHolder"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz p1, :cond_3

    .line 69
    check-cast p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$SubHeaderViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->a(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$SubHeaderViewHolder;Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.milk.store.purchasedtrack.PurchasedTrackAdapter.SubHeaderViewHolder"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->j:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->a(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;I)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->k:Z

    return-void
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 125
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;->getItemViewType(I)I

    move-result p1

    if-gez p1, :cond_1

    const v0, -0x186a0

    if-eq p1, v0, :cond_1

    const/16 v0, -0x3eb

    if-ne p1, v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, -0x3eb

    goto :goto_0

    :cond_0
    const/16 p1, -0x3e9

    :cond_1
    :goto_0
    return p1
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->a(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->a(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    return-object p1
.end method
