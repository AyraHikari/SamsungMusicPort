.class final enum Lcom/samsung/auth/AuthManager$AccessType;
.super Ljava/lang/Enum;
.source "AuthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/auth/AuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/auth/AuthManager$AccessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/auth/AuthManager$AccessType;

.field public static final enum MusicRadio:Lcom/samsung/auth/AuthManager$AccessType;

.field public static final enum PaperGarden:Lcom/samsung/auth/AuthManager$AccessType;

.field public static final enum SamsungBooks:Lcom/samsung/auth/AuthManager$AccessType;

.field public static final enum SamsungLearning:Lcom/samsung/auth/AuthManager$AccessType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/samsung/auth/AuthManager$AccessType;

    const-string v1, "PaperGarden"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/auth/AuthManager$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/auth/AuthManager$AccessType;->PaperGarden:Lcom/samsung/auth/AuthManager$AccessType;

    new-instance v1, Lcom/samsung/auth/AuthManager$AccessType;

    const-string v3, "SamsungBooks"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/auth/AuthManager$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/auth/AuthManager$AccessType;->SamsungBooks:Lcom/samsung/auth/AuthManager$AccessType;

    new-instance v3, Lcom/samsung/auth/AuthManager$AccessType;

    const-string v5, "SamsungLearning"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/auth/AuthManager$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/auth/AuthManager$AccessType;->SamsungLearning:Lcom/samsung/auth/AuthManager$AccessType;

    new-instance v5, Lcom/samsung/auth/AuthManager$AccessType;

    const-string v7, "MusicRadio"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/auth/AuthManager$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/auth/AuthManager$AccessType;->MusicRadio:Lcom/samsung/auth/AuthManager$AccessType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/auth/AuthManager$AccessType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lcom/samsung/auth/AuthManager$AccessType;->$VALUES:[Lcom/samsung/auth/AuthManager$AccessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/auth/AuthManager$AccessType;
    .locals 1

    const-class v0, Lcom/samsung/auth/AuthManager$AccessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/auth/AuthManager$AccessType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/auth/AuthManager$AccessType;
    .locals 1

    sget-object v0, Lcom/samsung/auth/AuthManager$AccessType;->$VALUES:[Lcom/samsung/auth/AuthManager$AccessType;

    invoke-virtual {v0}, [Lcom/samsung/auth/AuthManager$AccessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/auth/AuthManager$AccessType;

    return-object v0
.end method
