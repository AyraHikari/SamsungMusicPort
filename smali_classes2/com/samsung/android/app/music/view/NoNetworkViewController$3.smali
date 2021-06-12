.class Lcom/samsung/android/app/music/view/NoNetworkViewController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/view/NoNetworkViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/view/NoNetworkViewController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/view/NoNetworkViewController;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$3;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$3;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-static {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b(Lcom/samsung/android/app/music/view/NoNetworkViewController;)Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f130485

    const/4 v2, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x2

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$3;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-static {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b(Lcom/samsung/android/app/music/view/NoNetworkViewController;)Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$3;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    .line 255
    invoke-static {v1}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->c(Lcom/samsung/android/app/music/view/NoNetworkViewController;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1, v1, v2, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;->a(Landroid/content/Context;II)V

    .line 258
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 259
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$3;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-static {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->c(Lcom/samsung/android/app/music/view/NoNetworkViewController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
