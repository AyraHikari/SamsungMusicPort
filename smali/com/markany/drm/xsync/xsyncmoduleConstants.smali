.class public interface abstract Lcom/markany/drm/xsync/xsyncmoduleConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FALSE:I

.field public static final LICENSERESULT_ST_DESCRIPTION_LEN:I

.field public static final LICENSERESULT_ST_RESULT_LEN:I

.field public static final NULL:I

.field public static final TRUE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->NULL_get()I

    move-result v0

    sput v0, Lcom/markany/drm/xsync/xsyncmoduleConstants;->NULL:I

    .line 13
    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->TRUE_get()Z

    move-result v0

    sput-boolean v0, Lcom/markany/drm/xsync/xsyncmoduleConstants;->TRUE:Z

    .line 14
    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->FALSE_get()I

    move-result v0

    sput v0, Lcom/markany/drm/xsync/xsyncmoduleConstants;->FALSE:I

    .line 15
    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSERESULT_ST_RESULT_LEN_get()I

    move-result v0

    sput v0, Lcom/markany/drm/xsync/xsyncmoduleConstants;->LICENSERESULT_ST_RESULT_LEN:I

    .line 16
    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSERESULT_ST_DESCRIPTION_LEN_get()I

    move-result v0

    sput v0, Lcom/markany/drm/xsync/xsyncmoduleConstants;->LICENSERESULT_ST_DESCRIPTION_LEN:I

    return-void
.end method
