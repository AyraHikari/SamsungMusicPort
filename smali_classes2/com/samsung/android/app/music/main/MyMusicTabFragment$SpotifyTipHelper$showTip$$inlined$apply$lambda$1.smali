.class final Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper$showTip$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;

.field final synthetic c:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper$showTip$$inlined$apply$lambda$1;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper$showTip$$inlined$apply$lambda$1;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;

    iput-object p3, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper$showTip$$inlined$apply$lambda$1;->c:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "UiList"

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper$showTip$$inlined$apply$lambda$1;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " showTip onClick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper$showTip$$inlined$apply$lambda$1;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;

    invoke-static {p1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->a(Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 633
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper$showTip$$inlined$apply$lambda$1;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;

    iget-object p1, p1, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    const/4 v0, 0x1

    const v1, 0x10100

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->selectTab(II)V

    .line 635
    iget-object p1, p0, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper$showTip$$inlined$apply$lambda$1;->b:Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;

    iget-object p1, p1, Lcom/samsung/android/app/music/main/MyMusicTabFragment$SpotifyTipHelper;->a:Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v0, "activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "key_spotify_oobe_show_tip"

    const/4 v1, 0x0

    .line 634
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
