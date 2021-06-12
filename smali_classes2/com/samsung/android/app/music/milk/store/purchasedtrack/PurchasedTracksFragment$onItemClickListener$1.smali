.class final Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment$onItemClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IJ)V
    .locals 6

    const-string p3, "view"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p3, 0x7f13040d

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 62
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 63
    sget-object v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;

    const-string p2, "it"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->a(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;IILjava/lang/Object;)V

    .line 65
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string p2, "981"

    const-string p3, "9804"

    .line 66
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
