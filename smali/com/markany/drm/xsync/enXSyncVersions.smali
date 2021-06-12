.class public final enum Lcom/markany/drm/xsync/enXSyncVersions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/markany/drm/xsync/enXSyncVersions$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/markany/drm/xsync/enXSyncVersions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/markany/drm/xsync/enXSyncVersions;

.field public static final enum E_XSYNCV20_0:Lcom/markany/drm/xsync/enXSyncVersions;

.field public static final enum E_XSYNCV25_0:Lcom/markany/drm/xsync/enXSyncVersions;

.field public static final enum E_XSYNCV_NONE:Lcom/markany/drm/xsync/enXSyncVersions;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/markany/drm/xsync/enXSyncVersions;

    const-string v1, "E_XSYNCV20_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/markany/drm/xsync/enXSyncVersions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/markany/drm/xsync/enXSyncVersions;->E_XSYNCV20_0:Lcom/markany/drm/xsync/enXSyncVersions;

    .line 13
    new-instance v0, Lcom/markany/drm/xsync/enXSyncVersions;

    const-string v1, "E_XSYNCV25_0"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/markany/drm/xsync/enXSyncVersions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/markany/drm/xsync/enXSyncVersions;->E_XSYNCV25_0:Lcom/markany/drm/xsync/enXSyncVersions;

    .line 14
    new-instance v0, Lcom/markany/drm/xsync/enXSyncVersions;

    const-string v1, "E_XSYNCV_NONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/markany/drm/xsync/enXSyncVersions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/markany/drm/xsync/enXSyncVersions;->E_XSYNCV_NONE:Lcom/markany/drm/xsync/enXSyncVersions;

    const/4 v0, 0x3

    .line 11
    new-array v0, v0, [Lcom/markany/drm/xsync/enXSyncVersions;

    sget-object v1, Lcom/markany/drm/xsync/enXSyncVersions;->E_XSYNCV20_0:Lcom/markany/drm/xsync/enXSyncVersions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/markany/drm/xsync/enXSyncVersions;->E_XSYNCV25_0:Lcom/markany/drm/xsync/enXSyncVersions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/markany/drm/xsync/enXSyncVersions;->E_XSYNCV_NONE:Lcom/markany/drm/xsync/enXSyncVersions;

    aput-object v1, v0, v4

    sput-object v0, Lcom/markany/drm/xsync/enXSyncVersions;->$VALUES:[Lcom/markany/drm/xsync/enXSyncVersions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    invoke-static {}, Lcom/markany/drm/xsync/enXSyncVersions$SwigNext;->access$008()I

    move-result p1

    iput p1, p0, Lcom/markany/drm/xsync/enXSyncVersions;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/markany/drm/xsync/enXSyncVersions;->swigValue:I

    add-int/lit8 p3, p3, 0x1

    .line 38
    invoke-static {p3}, Lcom/markany/drm/xsync/enXSyncVersions$SwigNext;->access$002(I)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/markany/drm/xsync/enXSyncVersions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/markany/drm/xsync/enXSyncVersions;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iget p1, p3, Lcom/markany/drm/xsync/enXSyncVersions;->swigValue:I

    iput p1, p0, Lcom/markany/drm/xsync/enXSyncVersions;->swigValue:I

    .line 44
    iget p1, p0, Lcom/markany/drm/xsync/enXSyncVersions;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/markany/drm/xsync/enXSyncVersions$SwigNext;->access$002(I)I

    return-void
.end method

.method public static swigToEnum(I)Lcom/markany/drm/xsync/enXSyncVersions;
    .locals 5

    .line 21
    const-class v0, Lcom/markany/drm/xsync/enXSyncVersions;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/markany/drm/xsync/enXSyncVersions;

    .line 22
    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    aget-object v1, v0, p0

    iget v1, v1, Lcom/markany/drm/xsync/enXSyncVersions;->swigValue:I

    if-ne v1, p0, :cond_0

    .line 23
    aget-object p0, v0, p0

    return-object p0

    .line 24
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 25
    iget v4, v3, Lcom/markany/drm/xsync/enXSyncVersions;->swigValue:I

    if-ne v4, p0, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/markany/drm/xsync/enXSyncVersions;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/markany/drm/xsync/enXSyncVersions;
    .locals 1

    .line 11
    const-class v0, Lcom/markany/drm/xsync/enXSyncVersions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/markany/drm/xsync/enXSyncVersions;

    return-object p0
.end method

.method public static values()[Lcom/markany/drm/xsync/enXSyncVersions;
    .locals 1

    .line 11
    sget-object v0, Lcom/markany/drm/xsync/enXSyncVersions;->$VALUES:[Lcom/markany/drm/xsync/enXSyncVersions;

    invoke-virtual {v0}, [Lcom/markany/drm/xsync/enXSyncVersions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/markany/drm/xsync/enXSyncVersions;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/markany/drm/xsync/enXSyncVersions;->swigValue:I

    return v0
.end method
