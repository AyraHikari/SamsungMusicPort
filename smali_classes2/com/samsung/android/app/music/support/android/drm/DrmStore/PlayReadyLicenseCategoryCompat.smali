.class public Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;
.super Ljava/lang/Object;
.source "SourceFile"


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
.method static constructor <clinit>()V
    .locals 1

    .line 9
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_NORIGHT:I

    .line 13
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_UNLIM:I

    .line 17
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_COUNT:I

    .line 21
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_FROM:I

    .line 25
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_UNTIL:I

    .line 29
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x5

    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_FROM_UNTIL:I

    .line 33
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x6

    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_COUNT_FROM:I

    .line 37
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x7

    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_COUNT_UNTIL:I

    .line 41
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0x8

    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_COUNT_FROM_UNTIL:I

    .line 45
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0x9

    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_EXPIRATION_AFTER_FIRSTUSE:I

    .line 49
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0xa

    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_FORCE_SYNC:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
