.class public final enum Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/legal/LegalUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LegalType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

.field public static final enum legal_marketing_agreed:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

.field public static final enum privacy_policy:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

.field public static final enum privacy_policy_3d:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

.field public static final enum tnc:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 21
    new-instance v0, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    const-string v1, "tnc"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->tnc:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    new-instance v0, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    const-string v1, "privacy_policy"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->privacy_policy:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    new-instance v0, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    const-string v1, "privacy_policy_3d"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->privacy_policy_3d:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    new-instance v0, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    const-string v1, "legal_marketing_agreed"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->legal_marketing_agreed:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    const/4 v0, 0x4

    .line 20
    new-array v0, v0, [Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    sget-object v1, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->tnc:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->privacy_policy:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->privacy_policy_3d:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->legal_marketing_agreed:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->$VALUES:[Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;
    .locals 1

    .line 20
    const-class v0, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;
    .locals 1

    .line 20
    sget-object v0, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->$VALUES:[Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    return-object v0
.end method
