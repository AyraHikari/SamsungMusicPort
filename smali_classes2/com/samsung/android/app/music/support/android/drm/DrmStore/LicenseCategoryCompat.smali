.class public Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;
.super Ljava/lang/Object;
.source "LicenseCategoryCompat.java"


# static fields
.field public static final DRM2_COUNT:I

.field public static final DRM2_DATETIME:I

.field public static final DRM2_INTERVAL:I

.field public static final DRM2_TIMED_COUNT:I

.field public static final DRM2_UNLIMITED:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;->DRM2_UNLIMITED:I

    const/4 v0, 0x1

    .line 3
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;->DRM2_COUNT:I

    const/4 v0, 0x2

    .line 4
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;->DRM2_DATETIME:I

    const/4 v0, 0x4

    .line 5
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;->DRM2_INTERVAL:I

    const/16 v0, 0x8

    .line 6
    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;->DRM2_TIMED_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
