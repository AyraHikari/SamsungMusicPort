.class public Lcom/samsung/android/app/music/service/drm/MilkDrmOpenSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen;


# instance fields
.field private a:Lcom/markany/drm/xsync/DRMSession;


# direct methods
.method private constructor <init>(Lcom/markany/drm/xsync/DRMSession;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmOpenSession;->a:Lcom/markany/drm/xsync/DRMSession;

    return-void
.end method

.method public static a(Lcom/markany/drm/xsync/DRMSession;)Lcom/samsung/android/app/music/service/drm/MilkDrmOpenSession;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 17
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/service/drm/MilkDrmOpenSession;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/drm/MilkDrmOpenSession;-><init>(Lcom/markany/drm/xsync/DRMSession;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/markany/drm/xsync/LicenseData;)I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmOpenSession;->a:Lcom/markany/drm/xsync/DRMSession;

    invoke-virtual {v0, p1}, Lcom/markany/drm/xsync/DRMSession;->GetLicense(Lcom/markany/drm/xsync/LicenseData;)I

    move-result p1

    return p1
.end method

.method public a([B)I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmOpenSession;->a:Lcom/markany/drm/xsync/DRMSession;

    invoke-virtual {v0, p1}, Lcom/markany/drm/xsync/DRMSession;->GetCustomData([B)I

    move-result p1

    return p1
.end method

.method public a()Lcom/markany/drm/xsync/DRMSession;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmOpenSession;->a:Lcom/markany/drm/xsync/DRMSession;

    return-object v0
.end method

.method public b()Lcom/markany/drm/xsync/DRMFile;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;
    .locals 1

    .line 36
    sget-object v0, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;->SESSION:Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmOpenSession;->a:Lcom/markany/drm/xsync/DRMSession;

    invoke-virtual {v0}, Lcom/markany/drm/xsync/DRMSession;->IsDRMFile()Z

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmOpenSession;->a:Lcom/markany/drm/xsync/DRMSession;

    invoke-virtual {v0}, Lcom/markany/drm/xsync/DRMSession;->GetCustomDataLength()I

    move-result v0

    return v0
.end method
