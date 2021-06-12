.class public Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;
.super Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequester;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/BrowseLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackDetailActivityRequester"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequester<",
        "Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Z

.field private h:Z


# direct methods
.method constructor <init>()V
    .locals 1

    const/16 v0, 0x78

    .line 547
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequester;-><init>(I)V

    const/4 v0, 0x0

    .line 543
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;->g:Z

    .line 544
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;->h:Z

    return-void
.end method


# virtual methods
.method a()Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;
    .locals 0

    return-object p0
.end method

.method public a(Z)Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;
    .locals 0

    .line 551
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;->g:Z

    return-object p0
.end method

.method public b(Z)Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;
    .locals 0

    .line 556
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;->h:Z

    return-object p0
.end method

.method synthetic b()Ljava/lang/Object;
    .locals 1

    .line 541
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;->a()Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;

    move-result-object v0

    return-object v0
.end method

.method d()Landroid/os/Bundle;
    .locals 3

    .line 567
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequester;->d()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_show_ban"

    .line 568
    iget-boolean v2, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;->g:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "extra_is_banned"

    .line 569
    iget-boolean v2, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;->h:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
