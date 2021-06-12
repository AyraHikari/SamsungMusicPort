.class public abstract Lcom/samsung/android/app/music/milk/deeplink/task/ServiceDeepLinkTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 16
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;-><init>(Landroid/net/Uri;)V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceDeepLinkTask;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 22
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceDeepLinkTask;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceDeepLinkTask;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isTaskIntercepted - can not ignore my music mode"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceDeepLinkTask;->a:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceDeepLinkTask;->a:Landroid/content/Context;

    const v2, 0x7f0b0488

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/music/milk/MilkToast;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 0

    return-void
.end method
