.class final Lcom/samsung/android/app/music/list/local/SpotifyManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$4;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1238
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$4;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->b(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;

    move-result-object v0

    const-string v1, "menuItem"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;->a(Landroid/view/MenuItem;)V

    .line 1240
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1249
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$4;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->k(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1758
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "editor"

    .line 1759
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "heart_chart_do_not_show_again"

    .line 1250
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1760
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1242
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$4;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->k(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1754
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "editor"

    .line 1755
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "heart_chart_hide"

    .line 1244
    invoke-interface {p1, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1756
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    if-eqz v0, :cond_0

    .line 1258
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$4;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->c(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Lcom/samsung/android/app/music/list/local/HeartFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->s_()V

    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1305d6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
