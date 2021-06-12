.class final Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$TicketMessage;
.super Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TicketMessage"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 314
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;-><init>(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 315
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$TicketMessage;->a:Landroid/app/Activity;

    return-void
.end method

.method static a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    return-object p0
.end method

.method static a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;
    .locals 1

    .line 310
    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$TicketMessage;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$TicketMessage;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public doNegative()V
    .locals 3

    .line 371
    invoke-super {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->doNegative()V

    .line 372
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "912"

    const-string v2, "9151"

    .line 373
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public doPositive()V
    .locals 4

    .line 358
    invoke-super {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->doPositive()V

    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$TicketMessage;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;->a(Landroid/app/Activity;)V

    .line 361
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "912"

    const-string v2, "9152"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$TicketMessage;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "one_min_upsell_click"

    const-string v2, "where"

    iget-object v3, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$TicketMessage;->b:Ljava/lang/String;

    .line 366
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getLayout()I
    .locals 1

    const v0, 0x7f04012b

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    const-string v0, "TicketMessage"

    const-string v1, "getMessage"

    .line 325
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 329
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "store_one_min_upsell"

    goto :goto_0

    :cond_0
    const-string v0, "radio_one_min_upsell"

    .line 330
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$TicketMessage;->b:Ljava/lang/String;

    .line 332
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$TicketMessage;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    const-string v1, "one_min_upsell_show"

    const-string v2, "where"

    iget-object v3, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$TicketMessage;->b:Ljava/lang/String;

    .line 333
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "912"

    .line 336
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$TicketMessage;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$TicketMessage;->a:Landroid/app/Activity;

    const v1, 0x7f0b01fd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$TicketMessage;->a:Landroid/app/Activity;

    const v1, 0x7f0b01f8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNegativeText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getPositiveText()Ljava/lang/CharSequence;
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$TicketMessage;->a:Landroid/app/Activity;

    const v1, 0x7f0b01f9

    .line 347
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$TicketMessage;->a(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public gravity()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method
