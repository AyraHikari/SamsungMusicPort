.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->a(Lcom/samsung/android/app/music/network/NetworkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$2;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "mobile_data_usage_dialog"

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$2;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 279
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 280
    new-instance v1, Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog;-><init>()V

    .line 281
    invoke-virtual {v1, v0, p1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
