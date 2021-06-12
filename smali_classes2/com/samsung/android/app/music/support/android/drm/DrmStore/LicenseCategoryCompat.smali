.class public Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DRM2_COUNT:I

.field public static final DRM2_DATETIME:I

.field public static final DRM2_INTERVAL:I

.field public static final DRM2_TIMED_COUNT:I

.field public static final DRM2_UNLIMITED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;->DRM2_UNLIMITED:I

    .line 14
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;->DRM2_COUNT:I

    .line 17
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;->DRM2_DATETIME:I

    .line 21
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x4

    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;->DRM2_INTERVAL:I

    .line 25
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0x8

    sput v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;->DRM2_TIMED_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
