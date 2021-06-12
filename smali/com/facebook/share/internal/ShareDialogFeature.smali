.class public final enum Lcom/facebook/share/internal/ShareDialogFeature;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/DialogFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/internal/ShareDialogFeature;",
        ">;",
        "Lcom/facebook/internal/DialogFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/internal/ShareDialogFeature;

.field public static final enum HASHTAG:Lcom/facebook/share/internal/ShareDialogFeature;

.field public static final enum LINK_SHARE_QUOTES:Lcom/facebook/share/internal/ShareDialogFeature;

.field public static final enum MULTIMEDIA:Lcom/facebook/share/internal/ShareDialogFeature;

.field public static final enum PHOTOS:Lcom/facebook/share/internal/ShareDialogFeature;

.field public static final enum SHARE_DIALOG:Lcom/facebook/share/internal/ShareDialogFeature;

.field public static final enum VIDEO:Lcom/facebook/share/internal/ShareDialogFeature;


# instance fields
.field private minVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 36
    new-instance v0, Lcom/facebook/share/internal/ShareDialogFeature;

    const-string v1, "SHARE_DIALOG"

    const/4 v2, 0x0

    const v3, 0x1332b3a

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/share/internal/ShareDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/share/internal/ShareDialogFeature;

    .line 40
    new-instance v0, Lcom/facebook/share/internal/ShareDialogFeature;

    const-string v1, "PHOTOS"

    const/4 v3, 0x1

    const v4, 0x13350ac

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/share/internal/ShareDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/ShareDialogFeature;->PHOTOS:Lcom/facebook/share/internal/ShareDialogFeature;

    .line 44
    new-instance v0, Lcom/facebook/share/internal/ShareDialogFeature;

    const-string v1, "VIDEO"

    const/4 v4, 0x2

    const v5, 0x13353e4

    invoke-direct {v0, v1, v4, v5}, Lcom/facebook/share/internal/ShareDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/ShareDialogFeature;->VIDEO:Lcom/facebook/share/internal/ShareDialogFeature;

    .line 48
    new-instance v0, Lcom/facebook/share/internal/ShareDialogFeature;

    const-string v1, "MULTIMEDIA"

    const/4 v5, 0x3

    const v6, 0x1339f47

    invoke-direct {v0, v1, v5, v6}, Lcom/facebook/share/internal/ShareDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/ShareDialogFeature;->MULTIMEDIA:Lcom/facebook/share/internal/ShareDialogFeature;

    .line 52
    new-instance v0, Lcom/facebook/share/internal/ShareDialogFeature;

    const-string v1, "HASHTAG"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v6}, Lcom/facebook/share/internal/ShareDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/ShareDialogFeature;->HASHTAG:Lcom/facebook/share/internal/ShareDialogFeature;

    .line 56
    new-instance v0, Lcom/facebook/share/internal/ShareDialogFeature;

    const-string v1, "LINK_SHARE_QUOTES"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v6}, Lcom/facebook/share/internal/ShareDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/ShareDialogFeature;->LINK_SHARE_QUOTES:Lcom/facebook/share/internal/ShareDialogFeature;

    const/4 v0, 0x6

    .line 31
    new-array v0, v0, [Lcom/facebook/share/internal/ShareDialogFeature;

    sget-object v1, Lcom/facebook/share/internal/ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/share/internal/ShareDialogFeature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/share/internal/ShareDialogFeature;->PHOTOS:Lcom/facebook/share/internal/ShareDialogFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/share/internal/ShareDialogFeature;->VIDEO:Lcom/facebook/share/internal/ShareDialogFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/share/internal/ShareDialogFeature;->MULTIMEDIA:Lcom/facebook/share/internal/ShareDialogFeature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/share/internal/ShareDialogFeature;->HASHTAG:Lcom/facebook/share/internal/ShareDialogFeature;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/share/internal/ShareDialogFeature;->LINK_SHARE_QUOTES:Lcom/facebook/share/internal/ShareDialogFeature;

    aput-object v1, v0, v8

    sput-object v0, Lcom/facebook/share/internal/ShareDialogFeature;->$VALUES:[Lcom/facebook/share/internal/ShareDialogFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/facebook/share/internal/ShareDialogFeature;->minVersion:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/internal/ShareDialogFeature;
    .locals 1

    .line 31
    const-class v0, Lcom/facebook/share/internal/ShareDialogFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/internal/ShareDialogFeature;

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/internal/ShareDialogFeature;
    .locals 1

    .line 31
    sget-object v0, Lcom/facebook/share/internal/ShareDialogFeature;->$VALUES:[Lcom/facebook/share/internal/ShareDialogFeature;

    invoke-virtual {v0}, [Lcom/facebook/share/internal/ShareDialogFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/internal/ShareDialogFeature;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.facebook.platform.action.request.FEED_DIALOG"

    return-object v0
.end method

.method public getMinVersion()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/facebook/share/internal/ShareDialogFeature;->minVersion:I

    return v0
.end method
