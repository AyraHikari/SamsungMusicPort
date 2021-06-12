.class final Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$OnPageChangeListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnPageChangeListenerAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$OnPageChangeListenerAdapter;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4

    .line 141
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "981"

    const-string v2, "9802"

    .line 145
    sget-object v3, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->TAB_MP3:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->getValue()I

    move-result v3

    if-ne p1, v3, :cond_0

    const-string v3, "Collect"

    goto :goto_0

    :cond_0
    const-string v3, "Temporary"

    .line 142
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$OnPageChangeListenerAdapter;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$OnPageChangeListenerAdapter;->a:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;

    check-cast v1, Landroid/app/Activity;

    .line 154
    sget-object v2, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->TAB_MP3:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity$TabId;->getValue()I

    move-result v2

    if-ne p1, v2, :cond_1

    const-string p1, "purchased_tracks_mp3"

    goto :goto_1

    :cond_1
    const-string p1, "purchased_tracks_drm"

    .line 152
    :goto_1
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method
