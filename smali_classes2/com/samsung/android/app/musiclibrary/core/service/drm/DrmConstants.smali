.class public Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants$Error;
    }
.end annotation


# static fields
.field public static final API_MAX_PATH:I = 0x190

.field public static final DRM_OK:I = 0x0

.field public static final FEATURE_ON:Z

.field public static final MAX_DRM_KEY_SIZE:I = 0xa

.field public static final UNDEFINED:I = -0x1

.field public static final UNDEFINED_VALIDITY:I = -0x1

.field public static final VIRTUAL_DRM_KEY:Ljava/lang/String; = "88888888888"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "KOREA"

    .line 18
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/feature/SystemPropertyFeatures;->q:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;->FEATURE_ON:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
