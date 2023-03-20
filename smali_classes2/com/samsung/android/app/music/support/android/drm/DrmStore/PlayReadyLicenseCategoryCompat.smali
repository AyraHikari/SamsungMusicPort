.class public Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;
.super Ljava/lang/Object;
.source "PlayReadyLicenseCategoryCompat.java"


# static fields
.field public static final DRM_LICENSE_STATE_COUNT:I

.field public static final DRM_LICENSE_STATE_COUNT_FROM:I

.field public static final DRM_LICENSE_STATE_COUNT_FROM_UNTIL:I

.field public static final DRM_LICENSE_STATE_COUNT_UNTIL:I

.field public static final DRM_LICENSE_STATE_EXPIRATION_AFTER_FIRSTUSE:I

.field public static final DRM_LICENSE_STATE_FORCE_SYNC:I

.field public static final DRM_LICENSE_STATE_FROM:I

.field public static final DRM_LICENSE_STATE_FROM_UNTIL:I

.field public static final DRM_LICENSE_STATE_NORIGHT:I

.field public static final DRM_LICENSE_STATE_UNLIM:I

.field public static final DRM_LICENSE_STATE_UNTIL:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_NORIGHT:I

    const/4 v0, 0x1

    .line 3
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_UNLIM:I

    const/4 v0, 0x2

    .line 4
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_COUNT:I

    const/4 v0, 0x3

    .line 5
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_FROM:I

    const/4 v0, 0x4

    .line 6
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_UNTIL:I

    const/4 v0, 0x5

    .line 7
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_FROM_UNTIL:I

    const/4 v0, 0x6

    .line 8
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_COUNT_FROM:I

    const/4 v0, 0x7

    .line 9
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_COUNT_UNTIL:I

    const/16 v0, 0x8

    .line 10
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_COUNT_FROM_UNTIL:I

    const/16 v0, 0x9

    .line 11
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_EXPIRATION_AFTER_FIRSTUSE:I

    const/16 v0, 0xa

    .line 12
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_FORCE_SYNC:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
