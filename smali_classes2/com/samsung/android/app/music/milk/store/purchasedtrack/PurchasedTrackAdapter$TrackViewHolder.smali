.class public final Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;
.super Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackViewHolder"
.end annotation


# instance fields
.field private final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;Landroid/view/View;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter<",
            "*>;",
            "Landroid/view/View;",
            "IZ)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$PurchasedTrackViewHolder;-><init>(Lcom/samsung/android/app/music/milk/store/list/StoreTrackAdapter;Landroid/view/View;I)V

    const v0, 0x7f13040d

    .line 169
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;->d:Landroid/view/View;

    if-lez p3, :cond_0

    .line 174
    check-cast p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;

    .line 173
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;->a(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;Landroid/view/View;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 186
    move-object p3, p1

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;->initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    .line 187
    invoke-virtual {p0, p3, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;->initOnLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    .line 189
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;->d:Landroid/view/View;

    if-eqz p2, :cond_2

    new-instance p3, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder$initOnButtonClickListener$1;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder$initOnButtonClickListener$1;-><init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;->d:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 p1, 0x0

    .line 200
    move-object p3, p1

    check-cast p3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 201
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;->d:Landroid/view/View;

    return-object v0
.end method
