.class Lcom/samsung/android/app/music/activity/AboutPolicyActivity$1;
.super Lcom/samsung/android/app/music/network/NetworkManagerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/AboutPolicyActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/AboutPolicyActivity;Landroid/content/Context;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$1;->a:Lcom/samsung/android/app/music/activity/AboutPolicyActivity;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 3

    .line 147
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->a(Lcom/samsung/android/app/music/network/NetworkInfo;)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/AboutPolicyActivity$1;->a:Lcom/samsung/android/app/music/activity/AboutPolicyActivity;

    .line 150
    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/AboutPolicyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "music_player_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first_use"

    const/4 v2, 0x1

    .line 151
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 152
    iget-object v1, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->d:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v1, v1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 153
    iget-object p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iput-boolean v2, p1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    :cond_0
    return-void
.end method
