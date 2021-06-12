.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder$1;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 436
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder$1;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;

    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->b(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 437
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/network/NetworkManager;

    .line 438
    invoke-interface {v0}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    .line 439
    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->DISCONNECTED_ALL:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    .line 440
    iget-object v2, v0, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz v2, :cond_0

    .line 441
    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->CONNECTED:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo;->d:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz v0, :cond_1

    .line 443
    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->MOBILE_DATA_USAGE_OFF:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    .line 445
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick start network state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$4;->a:[I

    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 463
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 464
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 465
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_1
    const-string v0, "mobile_data_usage_dialog"

    .line 454
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    .line 455
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 456
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_2

    .line 457
    new-instance v1, Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog;-><init>()V

    .line 459
    invoke-virtual {v1, p1, v0}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 448
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder$1;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;

    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->b(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/app/music/regional/spotify/tab/RestartableList;

    if-eqz p1, :cond_2

    .line 449
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder$1;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;

    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;->b(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/tab/RestartableList;

    invoke-interface {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/RestartableList;->d()V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
