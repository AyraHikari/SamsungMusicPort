.class public final Lcom/samsung/android/app/music/player/logger/googlefirebase/PlayerFireBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/music/player/logger/googlefirebase/PlayerFireBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/samsung/android/app/music/player/logger/googlefirebase/PlayerFireBase;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/logger/googlefirebase/PlayerFireBase;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/player/logger/googlefirebase/PlayerFireBase;->a:Lcom/samsung/android/app/music/player/logger/googlefirebase/PlayerFireBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "FireBase"

    const-string p1, "setCurrentScreen - activity is null"

    .line 55
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 66
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "FireBase"

    const-string p1, "sendEvent - context is null"

    .line 68
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_0
    return-void
.end method
