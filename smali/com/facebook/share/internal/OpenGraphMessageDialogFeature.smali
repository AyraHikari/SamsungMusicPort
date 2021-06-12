.class public final enum Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/DialogFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;",
        ">;",
        "Lcom/facebook/internal/DialogFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;

.field public static final enum OG_MESSAGE_DIALOG:Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;


# instance fields
.field private minVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    new-instance v0, Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;

    const-string v1, "OG_MESSAGE_DIALOG"

    const/4 v2, 0x0

    const v3, 0x13350ac

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;->OG_MESSAGE_DIALOG:Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;

    const/4 v0, 0x1

    .line 31
    new-array v0, v0, [Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;

    sget-object v1, Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;->OG_MESSAGE_DIALOG:Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;->$VALUES:[Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;->minVersion:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;
    .locals 1

    .line 31
    const-class v0, Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;
    .locals 1

    .line 31
    sget-object v0, Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;->$VALUES:[Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;

    invoke-virtual {v0}, [Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG"

    return-object v0
.end method

.method public getMinVersion()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/facebook/share/internal/OpenGraphMessageDialogFeature;->minVersion:I

    return v0
.end method
