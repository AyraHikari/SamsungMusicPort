.class Lcom/samsung/android/app/music/view/NoNetworkViewController$2;
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

    .line 226
    iput-object p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$2;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$2;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-static {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b(Lcom/samsung/android/app/music/view/NoNetworkViewController;)Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f130485

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$2;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-static {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b(Lcom/samsung/android/app/music/view/NoNetworkViewController;)Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$2;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    .line 235
    invoke-static {v2}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->c(Lcom/samsung/android/app/music/view/NoNetworkViewController;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, v1, p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;->a(Landroid/content/Context;II)V

    .line 238
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$2;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-static {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->c(Lcom/samsung/android/app/music/view/NoNetworkViewController;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/samsung/android/app/music/settings/SettingsActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "no_mobile_data"

    .line 239
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 240
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$2;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-static {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->c(Lcom/samsung/android/app/music/view/NoNetworkViewController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
