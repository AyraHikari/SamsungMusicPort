.class final Lcom/samsung/android/app/music/list/local/SpotifyManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/SpotifyManager;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/SpotifyManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/SpotifyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$5;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1263
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$5;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->g(Lcom/samsung/android/app/music/list/local/SpotifyManager;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1265
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$5;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->c(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Lcom/samsung/android/app/music/list/local/HeartFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->d(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "MobileDataUsageNoticeDialog"

    .line 1266
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1267
    new-instance v0, Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog;-><init>()V

    const-string v1, "MobileDataUsageNoticeDialog"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1271
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 1272
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1274
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$5;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->c(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Lcom/samsung/android/app/music/list/local/HeartFragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
