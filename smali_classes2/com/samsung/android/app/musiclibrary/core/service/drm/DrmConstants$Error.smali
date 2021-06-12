.class public Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants$Error;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants$Error$ReadRet;,
        Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants$Error$OpenRet;
    }
.end annotation


# static fields
.field public static final BAD_DCF_INFORM:I = -0x8

.field public static final BAD_INFORM_CLUSTER:I = -0xc9

.field public static final CLUSTER_DATE_EXPIRED:I = -0xca

.field public static final CONTENT_NOT_FOUND:I = -0x1

.field public static final DATE_EXPIRED:I = -0x65

.field public static final DEVICE_NOT_REGISTERED:I = -0x64

.field public static final DOWNLOAD_DEVICE_OVERFLOW:I = -0x192

.field public static final FAILE_GET_CLUSTER_FILEPATH:I = -0xcc

.field public static final FAIL_GET_STRING_LENGTH:I = -0x25

.field public static final FILE_READ_ERROR:I = -0xa

.field public static final FILE_SEEK_ERROR:I = -0xc

.field public static final FILE_TELL_ERROR:I = -0xd

.field public static final FILE_WRITE_ERROR:I = -0xb

.field public static final INVALID_ALLOWABLESERVICE:I = -0x68

.field public static final INVALID_CID_TYPE:I = -0x7d0

.field public static final INVALID_CID_VAL:I = -0x7da

.field public static final INVALID_CLIENT_ORDER_ID:I = -0x190

.field public static final INVALID_CLUSTER:I = -0xc8

.field public static final INVALID_DEVICE_ID:I = -0xcb

.field public static final INVALID_OWNERSHIP:I = -0x66

.field public static final INVALID_PATH:I = -0x26f8

.field public static final INVALID_PATH_LENGTH:I = -0x270f

.field public static final INVALID_PERMIT:I = -0x8fc

.field public static final INVALID_SERVER_ORDER_ID:I = -0x191

.field public static final INVALID_STATUS:I = -0x19

.field public static final INVALID_TIME:I = -0x7e4

.field public static final INVALID_UCH:I = -0x898

.field public static final INVALID_UCH_LENGTH:I = -0x899

.field public static final MAX_FILE_OPEN:I = -0x1a

.field public static final NOT_LYRIC:I = -0x12c

.field public static final NOT_VALID_TIME:I = -0x67

.field public static final NO_FILE:I = -0x834

.field public static final NO_RIGHT_DOWNLOAD:I = 0x1131

.field public static final OUT_OF_MEMORY:I = -0x16

.field public static final UNKN0WN_FILE_IO_2:I = -0x3

.field public static final UNKNOWN_ERROR:I = -0x2710

.field public static final UNKNOWN_FILE_IO_1:I = -0x2

.field public static final UPDATE_UCH:I = -0x960


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
