.class public final enum Lcom/samsung/auth/AuthManager$AccessType;
.super Ljava/lang/Enum;
.source "SourceFile"


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
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Lcom/samsung/auth/AuthManager$AccessType;

    const-string v1, "PaperGarden"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/auth/AuthManager$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/auth/AuthManager$AccessType;->PaperGarden:Lcom/samsung/auth/AuthManager$AccessType;

    new-instance v0, Lcom/samsung/auth/AuthManager$AccessType;

    const-string v1, "SamsungBooks"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/auth/AuthManager$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/auth/AuthManager$AccessType;->SamsungBooks:Lcom/samsung/auth/AuthManager$AccessType;

    new-instance v0, Lcom/samsung/auth/AuthManager$AccessType;

    const-string v1, "SamsungLearning"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/auth/AuthManager$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/auth/AuthManager$AccessType;->SamsungLearning:Lcom/samsung/auth/AuthManager$AccessType;

    new-instance v0, Lcom/samsung/auth/AuthManager$AccessType;

    const-string v1, "MusicRadio"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/auth/AuthManager$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/auth/AuthManager$AccessType;->MusicRadio:Lcom/samsung/auth/AuthManager$AccessType;

    const/4 v0, 0x4

    .line 14
    new-array v0, v0, [Lcom/samsung/auth/AuthManager$AccessType;

    sget-object v1, Lcom/samsung/auth/AuthManager$AccessType;->PaperGarden:Lcom/samsung/auth/AuthManager$AccessType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/auth/AuthManager$AccessType;->SamsungBooks:Lcom/samsung/auth/AuthManager$AccessType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/auth/AuthManager$AccessType;->SamsungLearning:Lcom/samsung/auth/AuthManager$AccessType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/auth/AuthManager$AccessType;->MusicRadio:Lcom/samsung/auth/AuthManager$AccessType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/auth/AuthManager$AccessType;->$VALUES:[Lcom/samsung/auth/AuthManager$AccessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/auth/AuthManager$AccessType;
    .locals 1

    .line 14
    const-class v0, Lcom/samsung/auth/AuthManager$AccessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/auth/AuthManager$AccessType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/auth/AuthManager$AccessType;
    .locals 1

    .line 14
    sget-object v0, Lcom/samsung/auth/AuthManager$AccessType;->$VALUES:[Lcom/samsung/auth/AuthManager$AccessType;

    invoke-virtual {v0}, [Lcom/samsung/auth/AuthManager$AccessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/auth/AuthManager$AccessType;

    return-object v0
.end method
