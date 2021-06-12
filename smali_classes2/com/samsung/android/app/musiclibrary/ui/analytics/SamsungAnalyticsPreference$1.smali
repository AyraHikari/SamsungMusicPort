.class final Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "SamsungAnalyticsPreference"

    const-string v1, "setValue - run"

    .line 69
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference$1;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
