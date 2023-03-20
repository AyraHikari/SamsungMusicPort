.class public Lcom/samsung/android/app/music/support/android/drm/DrmInfoRequestCompat;
.super Ljava/lang/Object;
.source "DrmInfoRequestCompat.java"


# static fields
.field public static final DRM_PATH:Ljava/lang/String;

.field public static final STATUS:Ljava/lang/String;

.field public static final TYPE_GET_DRMFILE_INFO:I

.field public static final TYPE_GET_OPTION_MENU:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "drm_path"

    sput-object v0, Lcom/samsung/android/app/music/support/android/drm/DrmInfoRequestCompat;->DRM_PATH:Ljava/lang/String;

    const/16 v0, 0xe

    .line 2
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmInfoRequestCompat;->TYPE_GET_DRMFILE_INFO:I

    const/16 v0, 0x10

    .line 3
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmInfoRequestCompat;->TYPE_GET_OPTION_MENU:I

    const-string v0, "status"

    .line 4
    sput-object v0, Lcom/samsung/android/app/music/support/android/drm/DrmInfoRequestCompat;->STATUS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
