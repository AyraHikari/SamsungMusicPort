.class public Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$SearchLogger;
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
    name = "SearchLogger"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "963"

    return-object v0
.end method

.method public a(Landroid/content/Context;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 640
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    .line 641
    invoke-virtual {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$SearchLogger;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "9744"

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 635
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    .line 636
    invoke-virtual {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$SearchLogger;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "9742"

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/content/Context;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 658
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$SearchLogger;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "9743"

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$SearchLogger;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "9741"

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
