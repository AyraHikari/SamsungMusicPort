.class public Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$StoreMainLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoreMainLogger"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "931"

    return-object v0
.end method

.method public a(Landroid/content/Context;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 607
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    .line 608
    invoke-virtual {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$StoreMainLogger;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "9453"

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    .line 603
    invoke-virtual {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$StoreMainLogger;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "9454"

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 592
    :pswitch_4
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    .line 593
    invoke-virtual {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$StoreMainLogger;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "9451"

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 587
    :pswitch_5
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    .line 588
    invoke-virtual {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$StoreMainLogger;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "9452"

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public b(Landroid/content/Context;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
