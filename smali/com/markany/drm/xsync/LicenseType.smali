.class public final enum Lcom/markany/drm/xsync/LicenseType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/markany/drm/xsync/LicenseType$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/markany/drm/xsync/LicenseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_ACQ_METHOD_NOT_CALLED:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_EXPIRED:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_INVALID:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_INVALID_DEVICE_KEY:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_INVALID_DOMAIN:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_INVALID_TERM:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_INVALID_UID:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_INVALID_VERSION:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_IS_NOT_DRM_FILE:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_NO:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_ROLLBACK:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_TERM:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_TERM_NOT_YET_STARTED:Lcom/markany/drm/xsync/LicenseType;

.field public static final enum LICENSE_UNLIMITED:Lcom/markany/drm/xsync/LicenseType;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 12
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_ACQ_METHOD_NOT_CALLED"

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_ACQ_METHOD_NOT_CALLED_get()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_ACQ_METHOD_NOT_CALLED:Lcom/markany/drm/xsync/LicenseType;

    .line 13
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_NO"

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_NO_get()I

    move-result v2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_NO:Lcom/markany/drm/xsync/LicenseType;

    .line 14
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_EXPIRED"

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_EXPIRED_get()I

    move-result v2

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_EXPIRED:Lcom/markany/drm/xsync/LicenseType;

    .line 15
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_UNLIMITED"

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_UNLIMITED_get()I

    move-result v2

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_UNLIMITED:Lcom/markany/drm/xsync/LicenseType;

    .line 16
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_TERM"

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_TERM_get()I

    move-result v2

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_TERM:Lcom/markany/drm/xsync/LicenseType;

    .line 17
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_INVALID_VERSION"

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_INVALID_VERSION_get()I

    move-result v2

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_VERSION:Lcom/markany/drm/xsync/LicenseType;

    .line 18
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_INVALID_DOMAIN"

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_INVALID_DOMAIN_get()I

    move-result v2

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_DOMAIN:Lcom/markany/drm/xsync/LicenseType;

    .line 19
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_INVALID_UID"

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_INVALID_UID_get()I

    move-result v2

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_UID:Lcom/markany/drm/xsync/LicenseType;

    .line 20
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_INVALID_DEVICE_KEY"

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_INVALID_DEVICE_KEY_get()I

    move-result v2

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_DEVICE_KEY:Lcom/markany/drm/xsync/LicenseType;

    .line 21
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_INVALID_TERM"

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_INVALID_TERM_get()I

    move-result v2

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_TERM:Lcom/markany/drm/xsync/LicenseType;

    .line 22
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_ROLLBACK"

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_ROLLBACK_get()I

    move-result v2

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_ROLLBACK:Lcom/markany/drm/xsync/LicenseType;

    .line 23
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_IS_NOT_DRM_FILE"

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_IS_NOT_DRM_FILE_get()I

    move-result v2

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_IS_NOT_DRM_FILE:Lcom/markany/drm/xsync/LicenseType;

    .line 24
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_INVALID"

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_INVALID_get()I

    move-result v2

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID:Lcom/markany/drm/xsync/LicenseType;

    .line 25
    new-instance v0, Lcom/markany/drm/xsync/LicenseType;

    const-string v1, "LICENSE_TERM_NOT_YET_STARTED"

    invoke-static {}, Lcom/markany/drm/xsync/xsyncmoduleJNI;->LICENSE_TERM_NOT_YET_STARTED_get()I

    move-result v2

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2}, Lcom/markany/drm/xsync/LicenseType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->LICENSE_TERM_NOT_YET_STARTED:Lcom/markany/drm/xsync/LicenseType;

    const/16 v0, 0xe

    .line 11
    new-array v0, v0, [Lcom/markany/drm/xsync/LicenseType;

    sget-object v1, Lcom/markany/drm/xsync/LicenseType;->LICENSE_ACQ_METHOD_NOT_CALLED:Lcom/markany/drm/xsync/LicenseType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/markany/drm/xsync/LicenseType;->LICENSE_NO:Lcom/markany/drm/xsync/LicenseType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/markany/drm/xsync/LicenseType;->LICENSE_EXPIRED:Lcom/markany/drm/xsync/LicenseType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/markany/drm/xsync/LicenseType;->LICENSE_UNLIMITED:Lcom/markany/drm/xsync/LicenseType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/markany/drm/xsync/LicenseType;->LICENSE_TERM:Lcom/markany/drm/xsync/LicenseType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_VERSION:Lcom/markany/drm/xsync/LicenseType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_DOMAIN:Lcom/markany/drm/xsync/LicenseType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_UID:Lcom/markany/drm/xsync/LicenseType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_DEVICE_KEY:Lcom/markany/drm/xsync/LicenseType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID_TERM:Lcom/markany/drm/xsync/LicenseType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/markany/drm/xsync/LicenseType;->LICENSE_ROLLBACK:Lcom/markany/drm/xsync/LicenseType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/markany/drm/xsync/LicenseType;->LICENSE_IS_NOT_DRM_FILE:Lcom/markany/drm/xsync/LicenseType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/markany/drm/xsync/LicenseType;->LICENSE_INVALID:Lcom/markany/drm/xsync/LicenseType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/markany/drm/xsync/LicenseType;->LICENSE_TERM_NOT_YET_STARTED:Lcom/markany/drm/xsync/LicenseType;

    aput-object v1, v0, v15

    sput-object v0, Lcom/markany/drm/xsync/LicenseType;->$VALUES:[Lcom/markany/drm/xsync/LicenseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    invoke-static {}, Lcom/markany/drm/xsync/LicenseType$SwigNext;->access$008()I

    move-result p1

    iput p1, p0, Lcom/markany/drm/xsync/LicenseType;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/markany/drm/xsync/LicenseType;->swigValue:I

    add-int/lit8 p3, p3, 0x1

    .line 49
    invoke-static {p3}, Lcom/markany/drm/xsync/LicenseType$SwigNext;->access$002(I)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/markany/drm/xsync/LicenseType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/markany/drm/xsync/LicenseType;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iget p1, p3, Lcom/markany/drm/xsync/LicenseType;->swigValue:I

    iput p1, p0, Lcom/markany/drm/xsync/LicenseType;->swigValue:I

    .line 55
    iget p1, p0, Lcom/markany/drm/xsync/LicenseType;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/markany/drm/xsync/LicenseType$SwigNext;->access$002(I)I

    return-void
.end method

.method public static swigToEnum(I)Lcom/markany/drm/xsync/LicenseType;
    .locals 5

    .line 32
    const-class v0, Lcom/markany/drm/xsync/LicenseType;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/markany/drm/xsync/LicenseType;

    .line 33
    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    aget-object v1, v0, p0

    iget v1, v1, Lcom/markany/drm/xsync/LicenseType;->swigValue:I

    if-ne v1, p0, :cond_0

    .line 34
    aget-object p0, v0, p0

    return-object p0

    .line 35
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 36
    iget v4, v3, Lcom/markany/drm/xsync/LicenseType;->swigValue:I

    if-ne v4, p0, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/markany/drm/xsync/LicenseType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/markany/drm/xsync/LicenseType;
    .locals 1

    .line 11
    const-class v0, Lcom/markany/drm/xsync/LicenseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/markany/drm/xsync/LicenseType;

    return-object p0
.end method

.method public static values()[Lcom/markany/drm/xsync/LicenseType;
    .locals 1

    .line 11
    sget-object v0, Lcom/markany/drm/xsync/LicenseType;->$VALUES:[Lcom/markany/drm/xsync/LicenseType;

    invoke-virtual {v0}, [Lcom/markany/drm/xsync/LicenseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/markany/drm/xsync/LicenseType;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/markany/drm/xsync/LicenseType;->swigValue:I

    return v0
.end method
