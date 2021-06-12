.class final Lcom/samsung/android/app/music/ProviderProcessApplication;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/MusicApplication$OnApplicationCreateCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Landroid/app/Application;)V
    .locals 1

    const/4 v0, 0x1

    .line 30
    invoke-static {p1, v0, v0}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(Landroid/app/Application;ZZ)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Application;)V
    .locals 2

    .line 16
    new-instance v0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->createInstance(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;)Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/ProviderProcessApplication;->c(Landroid/app/Application;)V

    return-void
.end method

.method public b(Landroid/app/Application;)V
    .locals 0

    return-void
.end method
