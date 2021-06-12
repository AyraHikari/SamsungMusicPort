.class final Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder$initOnButtonClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;->a(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder$initOnButtonClickListener$1;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder$initOnButtonClickListener$1;->b:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder$initOnButtonClickListener$1;->b:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->a()Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder$initOnButtonClickListener$1;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;->getAdapterPosition()I

    move-result v1

    .line 193
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder$initOnButtonClickListener$1;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$TrackViewHolder;->getItemId()J

    move-result-wide v2

    .line 190
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;->onItemClick(Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method
