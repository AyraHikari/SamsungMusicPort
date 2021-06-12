.class public Lcom/samsung/android/app/music/update/SamsungAppsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/update/SamsungAppsManager$Downloader;,
        Lcom/samsung/android/app/music/update/SamsungAppsManager$UrlParams;,
        Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;,
        Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;,
        Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;
    }
.end annotation


# static fields
.field private static a:Lcom/samsung/android/app/music/update/SamsungAppsManager;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/update/VersionCheckInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager;->b:Ljava/util/Map;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager;->c:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/samsung/android/app/music/update/SamsungAppsManager;
    .locals 1

    .line 65
    sget-object v0, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a:Lcom/samsung/android/app/music/update/SamsungAppsManager;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/samsung/android/app/music/update/SamsungAppsManager;

    invoke-direct {v0}, Lcom/samsung/android/app/music/update/SamsungAppsManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a:Lcom/samsung/android/app/music/update/SamsungAppsManager;

    .line 68
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a:Lcom/samsung/android/app/music/update/SamsungAppsManager;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/samsung/android/app/music/update/VersionCheckInfo;Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;)V
    .locals 4
    .param p2    # Lcom/samsung/android/app/music/update/VersionCheckInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 114
    invoke-virtual {p2}, Lcom/samsung/android/app/music/update/VersionCheckInfo;->a()Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 117
    new-instance v1, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;-><init>(Lcom/samsung/android/app/music/update/SamsungAppsManager$1;)V

    .line 118
    iget-object v3, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager;->c:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    invoke-static {v1}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->a(Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-static {v1, p3}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->a(Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;)V

    const-string p1, "SamsungAppsManager"

    const-string p2, "There are already running update check. This request also receive via listener."

    .line 122
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-static {v1, p3}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->a(Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;)V

    .line 126
    invoke-static {v1}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->b(Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "SamsungAppsManager"

    const-string v0, "checkUpdate - send a request"

    .line 127
    invoke-static {p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance p3, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;

    invoke-direct {p3, p1, p2, v1, v2}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/update/VersionCheckInfo;Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;Lcom/samsung/android/app/music/update/SamsungAppsManager$1;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    .line 129
    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;

    if-eqz v0, :cond_0

    .line 148
    invoke-static {v0}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->c(Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;)V

    .line 150
    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/update/SamsungAppsManager$Downloader;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/update/VersionCheckInfo;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/samsung/android/app/music/update/VersionCheckInfo;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/update/VersionCheckInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    :cond_0
    invoke-direct {p0, p1, v0, p3}, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a(Landroid/content/Context;Lcom/samsung/android/app/music/update/VersionCheckInfo;Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;

    if-eqz v0, :cond_0

    .line 137
    invoke-static {v0, p2}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->b(Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;Lcom/samsung/android/app/music/update/SamsungAppsManager$ResultListener;)V

    .line 138
    invoke-static {v0}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->a(Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 139
    iget-object p2, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object p2, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
