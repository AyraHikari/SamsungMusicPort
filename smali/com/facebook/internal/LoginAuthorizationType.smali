.class public final enum Lcom/facebook/internal/LoginAuthorizationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/internal/LoginAuthorizationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/internal/LoginAuthorizationType;

.field public static final enum PUBLISH:Lcom/facebook/internal/LoginAuthorizationType;

.field public static final enum READ:Lcom/facebook/internal/LoginAuthorizationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    new-instance v0, Lcom/facebook/internal/LoginAuthorizationType;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/LoginAuthorizationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/LoginAuthorizationType;->READ:Lcom/facebook/internal/LoginAuthorizationType;

    .line 30
    new-instance v0, Lcom/facebook/internal/LoginAuthorizationType;

    const-string v1, "PUBLISH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/facebook/internal/LoginAuthorizationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/LoginAuthorizationType;->PUBLISH:Lcom/facebook/internal/LoginAuthorizationType;

    const/4 v0, 0x2

    .line 28
    new-array v0, v0, [Lcom/facebook/internal/LoginAuthorizationType;

    sget-object v1, Lcom/facebook/internal/LoginAuthorizationType;->READ:Lcom/facebook/internal/LoginAuthorizationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/LoginAuthorizationType;->PUBLISH:Lcom/facebook/internal/LoginAuthorizationType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/internal/LoginAuthorizationType;->$VALUES:[Lcom/facebook/internal/LoginAuthorizationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/LoginAuthorizationType;
    .locals 1

    .line 28
    const-class v0, Lcom/facebook/internal/LoginAuthorizationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/internal/LoginAuthorizationType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/internal/LoginAuthorizationType;
    .locals 1

    .line 28
    sget-object v0, Lcom/facebook/internal/LoginAuthorizationType;->$VALUES:[Lcom/facebook/internal/LoginAuthorizationType;

    invoke-virtual {v0}, [Lcom/facebook/internal/LoginAuthorizationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/internal/LoginAuthorizationType;

    return-object v0
.end method
