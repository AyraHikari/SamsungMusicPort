.class public Lcom/samsung/android/app/musiclibrary/core/service/drm/MilkDrmConstants$Error;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/drm/MilkDrmConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/drm/MilkDrmConstants$Error$ReadRet;,
        Lcom/samsung/android/app/musiclibrary/core/service/drm/MilkDrmConstants$Error$OpenRet;
    }
.end annotation


# static fields
.field public static final DRM_DB_BUSY:I = -0x37

.field public static final DRM_DB_INIT_ERR:I = -0x31

.field public static final DRM_DB_LOCKED:I = -0x36

.field public static final DRM_DB_NOT_READABLE:I = -0x35

.field public static final DRM_DB_OPEN_ERR:I = -0x17

.field public static final DRM_DB_SET_PATH_ERR:I = -0x18

.field public static final DRM_END_OF_LIST:I = -0x1e

.field public static final DRM_FAIL:I = -0x1

.field public static final DRM_FILE_INVALID_META:I = -0x2e

.field public static final DRM_FILE_INVALID_NAME:I = -0x3d

.field public static final DRM_FILE_NO_FILE_EXISTS:I = -0x11

.field public static final DRM_INVALID_ARG:I = -0x30

.field public static final DRM_INVALID_CID:I = -0x32

.field public static final DRM_INVALID_CONTEXT:I = -0x2f

.field public static final DRM_INVALID_DOMAIN:I = -0x33

.field public static final DRM_INVALID_HEADER:I = -0x3c

.field public static final DRM_INVALID_RANGE:I = -0x3e

.field public static final DRM_IO_ERR:I = -0x3b

.field public static final DRM_IO_INTERRUPTED:I = -0x26

.field public static final DRM_IO_PERMISSION_DENIED:I = -0x38

.field public static final DRM_LICENSE_INVALID_DOMAIN:I = -0x4

.field public static final DRM_LICENSE_NOT_BASE64_ENCODED:I = -0x2

.field public static final DRM_LICENSE_RESPONSE_PARSING_FAILED:I = -0x3

.field public static final DRM_LIC_INVALID_FORM:I = -0x28

.field public static final DRM_LIC_SRV_INTERNAL_ERR:I = -0x27

.field public static final DRM_NOT_A_DRM_CONTENT:I = -0x3a

.field public static final DRM_NOT_IMPLEMENTED:I = -0x19

.field public static final DRM_NOT_READABLE:I = -0x34

.field public static final DRM_NOT_SUPPORTED:I = -0x1c

.field public static final DRM_NO_SPACE:I = -0x39

.field public static final DRM_OPEN_FAIL:I = -0x2d

.field public static final DRM_SESSION_CLOSE_ERR:I = -0x10

.field public static final DRM_SESSION_DLMANAGER_DOWNLOAD_FAILED:I = -0xe

.field public static final DRM_SESSION_DLMANAGER_DOWNLOAD_TIMEOUT:I = -0x6

.field public static final DRM_SESSION_DLMANAGER_INIT_FAILED:I = -0xf

.field public static final DRM_SESSION_GET_LICENSE_FAILED:I = -0xc

.field public static final DRM_SESSION_LICENSE_INSTALL_FAILED:I = -0xd

.field public static final DRM_SESSION_LICENSE_PARSING_FAILED:I = -0x5

.field public static final DRM_SRV_ADD_SESSION_HDR_FAILED:I = -0x8

.field public static final DRM_SRV_ALREADY_STARTED:I = -0x14

.field public static final DRM_SRV_BIND_ERR:I = -0x13

.field public static final DRM_SRV_HTTP_NOT_YET_SUPPORTED:I = -0xb

.field public static final DRM_SRV_INVALID_ARG:I = -0x9

.field public static final DRM_SRV_NO_HANDLER_ERR:I = -0x15

.field public static final DRM_SRV_NO_MATCHED_STATE:I = -0x12

.field public static final DRM_SRV_NO_MATCHED_URL_SCHEME:I = -0xa

.field public static final DRM_SRV_STOPPED:I = -0x7

.field public static final DRM_SVR_ADD_HANDLER_ERR:I = -0x16

.field public static final DRM_ZIP_BUF_ERR:I = -0x24

.field public static final DRM_ZIP_CRC_ERR:I = -0x20

.field public static final DRM_ZIP_DATA_ERR:I = -0x22

.field public static final DRM_ZIP_ENTRY_DIR_WRONG_ACCESS:I = -0x2c

.field public static final DRM_ZIP_ENTRY_NAME_LEN_MAX_LIMIT:I = -0x2b

.field public static final DRM_ZIP_ENTRY_NOT_FOUND:I = -0x2a

.field public static final DRM_ZIP_INSTANCE_IS_NULL:I = -0x29

.field public static final DRM_ZIP_INTERNAL_ERR:I = -0x1f

.field public static final DRM_ZIP_INVALID_ARG:I = -0x1b

.field public static final DRM_ZIP_INVALID_FILE:I = -0x1d

.field public static final DRM_ZIP_MEM_ERR:I = -0x23

.field public static final DRM_ZIP_NEED_RANDOMACCESS_PREPARED:I = -0x1a

.field public static final DRM_ZIP_STREAM_ERR:I = -0x21

.field public static final DRM_ZIP_VERSION_ERR:I = -0x25


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
