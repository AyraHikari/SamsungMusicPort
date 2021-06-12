.class final Lcom/samsung/android/app/music/list/sync/ListSyncManager$settingObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/sync/ListSyncManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/sync/ListSyncManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$settingObserver$1;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string p2, "my_music_mode_option"

    .line 49
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$settingObserver$1;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->f(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)Z

    move-result p1

    .line 51
    iget-object p2, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$settingObserver$1;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a(Lcom/samsung/android/app/music/list/sync/ListSyncManager;Z)V

    .line 53
    sget-object v1, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isMyMusicMode changed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$settingObserver$1;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->f(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;->a(Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$settingObserver$1;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->f(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$settingObserver$1;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a(Lcom/samsung/android/app/music/list/sync/ListSyncManager;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
