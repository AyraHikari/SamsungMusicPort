.class final Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(Landroid/app/Application;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$3;->a:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 153
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v0

    .line 154
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents$AlbumArt;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "album_art"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;-><init>(JLandroid/net/Uri;[Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 158
    new-array v2, v2, [J

    fill-array-data v2, :array_0

    .line 163
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;)V

    .line 164
    invoke-static {}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->c()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;[J)V

    .line 165
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_0

    .line 166
    invoke-static {}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->d()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;[J)V

    .line 167
    invoke-static {}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->e()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;[J)V

    .line 168
    new-instance v1, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$CheckMilkLoadedArtworkSize;

    iget-object v2, p0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$3;->a:Landroid/app/Application;

    .line 169
    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils$CheckMilkLoadedArtworkSize;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ArtworkLoadingListener;)V

    .line 173
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(Z)V

    .line 174
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->f()Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    move-result-object v1

    const-string v2, "my_music_mode_option"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 8
        0x64
        0xc8
        0x190
    .end array-data
.end method
