.class synthetic LMarkany/MILK/DRM/DRMManager$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMarkany/MILK/DRM/DRMManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$markany$drm$xsync$LicenseType:[I

.field static final synthetic $SwitchMap$com$samsung$android$app$music$service$drm$IMilkDrmOpen$DrmOpenType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 200
    invoke-static {}, Lcom/markany/drm/xsync/LicenseType;->values()[Lcom/markany/drm/xsync/LicenseType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$markany$drm$xsync$LicenseType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$markany$drm$xsync$LicenseType:[I

    sget-object v2, Lcom/markany/drm/xsync/LicenseType;->LICENSE_NO:Lcom/markany/drm/xsync/LicenseType;

    invoke-virtual {v2}, Lcom/markany/drm/xsync/LicenseType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$markany$drm$xsync$LicenseType:[I

    sget-object v3, Lcom/markany/drm/xsync/LicenseType;->LICENSE_EXPIRED:Lcom/markany/drm/xsync/LicenseType;

    invoke-virtual {v3}, Lcom/markany/drm/xsync/LicenseType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$markany$drm$xsync$LicenseType:[I

    sget-object v3, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_VERSION:Lcom/markany/drm/xsync/LicenseType;

    invoke-virtual {v3}, Lcom/markany/drm/xsync/LicenseType;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$markany$drm$xsync$LicenseType:[I

    sget-object v3, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_DOMAIN:Lcom/markany/drm/xsync/LicenseType;

    invoke-virtual {v3}, Lcom/markany/drm/xsync/LicenseType;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v2, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$markany$drm$xsync$LicenseType:[I

    sget-object v3, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_UID:Lcom/markany/drm/xsync/LicenseType;

    invoke-virtual {v3}, Lcom/markany/drm/xsync/LicenseType;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v2, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$markany$drm$xsync$LicenseType:[I

    sget-object v3, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_DEVICE_KEY:Lcom/markany/drm/xsync/LicenseType;

    invoke-virtual {v3}, Lcom/markany/drm/xsync/LicenseType;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v2, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$markany$drm$xsync$LicenseType:[I

    sget-object v3, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_TERM:Lcom/markany/drm/xsync/LicenseType;

    invoke-virtual {v3}, Lcom/markany/drm/xsync/LicenseType;->ordinal()I

    move-result v3

    const/4 v4, 0x7

    aput v4, v2, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v2, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$markany$drm$xsync$LicenseType:[I

    sget-object v3, Lcom/markany/drm/xsync/LicenseType;->LICENSE_ROLLBACK:Lcom/markany/drm/xsync/LicenseType;

    invoke-virtual {v3}, Lcom/markany/drm/xsync/LicenseType;->ordinal()I

    move-result v3

    const/16 v4, 0x8

    aput v4, v2, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v2, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$markany$drm$xsync$LicenseType:[I

    sget-object v3, Lcom/markany/drm/xsync/LicenseType;->LICENSE_TERM_NOT_YET_STARTED:Lcom/markany/drm/xsync/LicenseType;

    invoke-virtual {v3}, Lcom/markany/drm/xsync/LicenseType;->ordinal()I

    move-result v3

    const/16 v4, 0x9

    aput v4, v2, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v2, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$markany$drm$xsync$LicenseType:[I

    sget-object v3, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID:Lcom/markany/drm/xsync/LicenseType;

    invoke-virtual {v3}, Lcom/markany/drm/xsync/LicenseType;->ordinal()I

    move-result v3

    const/16 v4, 0xa

    aput v4, v2, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v2, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$markany$drm$xsync$LicenseType:[I

    sget-object v3, Lcom/markany/drm/xsync/LicenseType;->LICENSE_UNLIMITED:Lcom/markany/drm/xsync/LicenseType;

    invoke-virtual {v3}, Lcom/markany/drm/xsync/LicenseType;->ordinal()I

    move-result v3

    const/16 v4, 0xb

    aput v4, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v2, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$markany$drm$xsync$LicenseType:[I

    sget-object v3, Lcom/markany/drm/xsync/LicenseType;->LICENSE_TERM:Lcom/markany/drm/xsync/LicenseType;

    invoke-virtual {v3}, Lcom/markany/drm/xsync/LicenseType;->ordinal()I

    move-result v3

    const/16 v4, 0xc

    aput v4, v2, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v2, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$markany$drm$xsync$LicenseType:[I

    sget-object v3, Lcom/markany/drm/xsync/LicenseType;->LICENSE_IS_NOT_DRM_FILE:Lcom/markany/drm/xsync/LicenseType;

    invoke-virtual {v3}, Lcom/markany/drm/xsync/LicenseType;->ordinal()I

    move-result v3

    const/16 v4, 0xd

    aput v4, v2, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 134
    :catch_c
    invoke-static {}, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;->values()[Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$samsung$android$app$music$service$drm$IMilkDrmOpen$DrmOpenType:[I

    :try_start_d
    sget-object v2, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$samsung$android$app$music$service$drm$IMilkDrmOpen$DrmOpenType:[I

    sget-object v3, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;->FILE:Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, LMarkany/MILK/DRM/DRMManager$1;->$SwitchMap$com$samsung$android$app$music$service$drm$IMilkDrmOpen$DrmOpenType:[I

    sget-object v2, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;->SESSION:Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/drm/IMilkDrmOpen$DrmOpenType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method
