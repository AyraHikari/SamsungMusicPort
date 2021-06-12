.class public Lcom/samsung/android/app/music/support/android/drm/DrmStore/ConstraintsColumnsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LICENSE_CATEGORY:Ljava/lang/String;

.field public static final LICENSE_ORIGINAL_INTERVAL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "license_original_interval"

    sput-object v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/ConstraintsColumnsCompat;->LICENSE_ORIGINAL_INTERVAL:Ljava/lang/String;

    .line 14
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "license_category"

    sput-object v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/ConstraintsColumnsCompat;->LICENSE_CATEGORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
