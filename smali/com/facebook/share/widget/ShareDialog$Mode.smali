.class public final enum Lcom/facebook/share/widget/ShareDialog$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/ShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/widget/ShareDialog$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/widget/ShareDialog$Mode;

.field public static final enum AUTOMATIC:Lcom/facebook/share/widget/ShareDialog$Mode;

.field public static final enum FEED:Lcom/facebook/share/widget/ShareDialog$Mode;

.field public static final enum NATIVE:Lcom/facebook/share/widget/ShareDialog$Mode;

.field public static final enum WEB:Lcom/facebook/share/widget/ShareDialog$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 82
    new-instance v0, Lcom/facebook/share/widget/ShareDialog$Mode;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/widget/ShareDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->AUTOMATIC:Lcom/facebook/share/widget/ShareDialog$Mode;

    .line 86
    new-instance v0, Lcom/facebook/share/widget/ShareDialog$Mode;

    const-string v1, "NATIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/facebook/share/widget/ShareDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->NATIVE:Lcom/facebook/share/widget/ShareDialog$Mode;

    .line 90
    new-instance v0, Lcom/facebook/share/widget/ShareDialog$Mode;

    const-string v1, "WEB"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/facebook/share/widget/ShareDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->WEB:Lcom/facebook/share/widget/ShareDialog$Mode;

    .line 94
    new-instance v0, Lcom/facebook/share/widget/ShareDialog$Mode;

    const-string v1, "FEED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/facebook/share/widget/ShareDialog$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->FEED:Lcom/facebook/share/widget/ShareDialog$Mode;

    const/4 v0, 0x4

    .line 78
    new-array v0, v0, [Lcom/facebook/share/widget/ShareDialog$Mode;

    sget-object v1, Lcom/facebook/share/widget/ShareDialog$Mode;->AUTOMATIC:Lcom/facebook/share/widget/ShareDialog$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/share/widget/ShareDialog$Mode;->NATIVE:Lcom/facebook/share/widget/ShareDialog$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/share/widget/ShareDialog$Mode;->WEB:Lcom/facebook/share/widget/ShareDialog$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/share/widget/ShareDialog$Mode;->FEED:Lcom/facebook/share/widget/ShareDialog$Mode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->$VALUES:[Lcom/facebook/share/widget/ShareDialog$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/widget/ShareDialog$Mode;
    .locals 1

    .line 78
    const-class v0, Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/widget/ShareDialog$Mode;

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/widget/ShareDialog$Mode;
    .locals 1

    .line 78
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->$VALUES:[Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {v0}, [Lcom/facebook/share/widget/ShareDialog$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/widget/ShareDialog$Mode;

    return-object v0
.end method
