.class public abstract Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequester;
.super Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/BrowseLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ActivityRequester"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 346
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Ljava/lang/Object;
    .locals 0

    .line 343
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->a(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroid/content/Context;J)Ljava/lang/Object;
    .locals 0

    .line 343
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->a(Landroid/content/Context;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 343
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->a(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 343
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 7

    if-nez p1, :cond_0

    .line 355
    sget-object p1, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a:Ljava/lang/String;

    const-string v0, "launch. activity is null"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 359
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequester;->f:I

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseUiType$ListTypeConverter;->b(I)I

    move-result v2

    .line 360
    instance-of v0, p1, Lcom/samsung/android/app/music/navigate/NavigationManager;

    if-eqz v0, :cond_1

    .line 361
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/music/navigate/NavigationManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequester;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequester;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequester;->d()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/app/music/navigate/NavigationManager;->navigate(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequester;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    if-nez p1, :cond_0

    .line 372
    sget-object p1, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a:Ljava/lang/String;

    const-string v0, "launchWithParentStack. context is null"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 375
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequester;->f:I

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseUiType$ListTypeConverter;->b(I)I

    move-result v0

    .line 376
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequester;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequester;->c:Ljava/lang/String;

    .line 377
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequester;->d()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 378
    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_1

    const/high16 v1, 0x10000000

    .line 379
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 381
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 343
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 343
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
