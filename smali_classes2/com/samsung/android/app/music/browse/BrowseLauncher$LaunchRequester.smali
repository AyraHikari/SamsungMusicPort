.class abstract Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/BrowseLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LaunchRequester"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Landroid/os/Bundle;

.field final f:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 388
    iput v0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->b:I

    .line 395
    iput p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->f:I

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 421
    iput p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->b:I

    .line 422
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)TT;"
        }
    .end annotation

    .line 399
    iget v0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->f:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Artist;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->a:Ljava/lang/String;

    goto :goto_0

    .line 401
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Album;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->a:Ljava/lang/String;

    .line 407
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 437
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->e:Landroid/os/Bundle;

    .line 438
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 431
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->d:Ljava/lang/String;

    .line 432
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 426
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->c:Ljava/lang/String;

    .line 427
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 416
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->a:Ljava/lang/String;

    .line 417
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method d()Landroid/os/Bundle;
    .locals 3

    .line 442
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_id"

    .line 443
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget v1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->b:I

    if-ltz v1, :cond_0

    const-string v1, "extra_tab_pos"

    .line 445
    iget v2, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v1, "extra_title"

    .line 447
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra_track_id"

    .line 448
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->e:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    return-object v0
.end method
