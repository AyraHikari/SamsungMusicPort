.class public Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailActivity$SpotifyListDetailActivityLauncher;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 31
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040255

    .line 32
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "what"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;->a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailFragment;

    move-result-object p1

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f130011

    const-string v2, "what"

    .line 38
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method
