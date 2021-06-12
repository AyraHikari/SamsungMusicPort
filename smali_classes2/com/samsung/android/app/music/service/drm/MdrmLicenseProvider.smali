.class public Lcom/samsung/android/app/music/service/drm/MdrmLicenseProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.music.drm.license"

    .line 24
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/drm/MdrmLicenseProvider;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private declared-synchronized a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    monitor-enter p0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/drm/MdrmLicenseProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LMarkany/MILK/DRM/DRMManager;->getInstance(Landroid/content/Context;)LMarkany/MILK/DRM/DRMManager;

    move-result-object v0

    const-string v1, "file_path"

    .line 66
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_playing"

    .line 67
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 69
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 70
    invoke-virtual {v0, v1, p1}, LMarkany/MILK/DRM/DRMManager;->openMDrm(Ljava/lang/String;Z)Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 71
    invoke-interface {v3}, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;->d()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    new-instance v4, Lcom/markany/drm/xsync/LicenseData;

    invoke-direct {v4}, Lcom/markany/drm/xsync/LicenseData;-><init>()V

    .line 78
    invoke-virtual {v0, v3, v4}, LMarkany/MILK/DRM/DRMManager;->ensureLicense(Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;Lcom/markany/drm/xsync/LicenseData;)I

    move-result v5

    const-string v6, "result_code"

    .line 79
    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-nez v5, :cond_1

    const-string v5, "track_id"

    .line 81
    invoke-virtual {v4}, Lcom/markany/drm/xsync/LicenseData;->getCID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "end_date"

    .line 82
    invoke-virtual {v4}, Lcom/markany/drm/xsync/LicenseData;->getEndDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "meta_size"

    .line 83
    invoke-interface {v3}, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;->e()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_1

    .line 85
    invoke-interface {v3}, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;->a()Lcom/markany/drm/xsync/DRMSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/markany/drm/xsync/DRMSession;->GetUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MDRM-MdrmLicenseProvider"

    .line 86
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playing uri - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " of "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/markany/drm/xsync/LicenseData;->getCID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "playing_uri"

    .line 87
    invoke-interface {v3}, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;->a()Lcom/markany/drm/xsync/DRMSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/markany/drm/xsync/DRMSession;->GetUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_1
    invoke-virtual {v4}, Lcom/markany/drm/xsync/LicenseData;->delete()V

    if-eqz p1, :cond_2

    .line 94
    iget-object p1, p0, Lcom/samsung/android/app/music/service/drm/MdrmLicenseProvider;->b:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {v0, v3}, LMarkany/MILK/DRM/DRMManager;->closeMDrm(Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_3
    :goto_1
    :try_start_1
    const-string p1, "MDRM-MdrmLicenseProvider"

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "milkDrmOpen is null or not DRM protected file : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "result_code"

    const/16 v0, -0x2710

    .line 73
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    .line 64
    monitor-exit p0

    throw p1
.end method

.method private b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    const-string v0, "file_path"

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/samsung/android/app/music/service/drm/MdrmLicenseProvider;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;

    const-string v2, "MDRM-MdrmLicenseProvider"

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Close - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", total : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/drm/MdrmLicenseProvider;->b:Ljava/util/HashMap;

    .line 107
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/drm/MdrmLicenseProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, LMarkany/MILK/DRM/DRMManager;->getInstance(Landroid/content/Context;)LMarkany/MILK/DRM/DRMManager;

    move-result-object v2

    invoke-virtual {v2, v1}, LMarkany/MILK/DRM/DRMManager;->closeMDrm(Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;)V

    .line 110
    iget-object v1, p0, Lcom/samsung/android/app/music/service/drm/MdrmLicenseProvider;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string p2, "ensure_license"

    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 56
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/service/drm/MdrmLicenseProvider;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p2, "close_session"

    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 58
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/service/drm/MdrmLicenseProvider;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p3
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 136
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 125
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 131
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()Z
    .locals 1

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/drm/MdrmLicenseProvider;->b:Ljava/util/HashMap;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 119
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 142
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
