.class public final enum Lcom/samsung/auth/Locale$AccessType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/auth/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/auth/Locale$AccessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/auth/Locale$AccessType;

.field public static final enum MusicRadio:Lcom/samsung/auth/Locale$AccessType;

.field public static final enum PaperGarden:Lcom/samsung/auth/Locale$AccessType;

.field public static final enum SamsungBooks:Lcom/samsung/auth/Locale$AccessType;

.field public static final enum SamsungLearning:Lcom/samsung/auth/Locale$AccessType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lcom/samsung/auth/Locale$AccessType;

    const-string v1, "PaperGarden"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/auth/Locale$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/auth/Locale$AccessType;->PaperGarden:Lcom/samsung/auth/Locale$AccessType;

    new-instance v0, Lcom/samsung/auth/Locale$AccessType;

    const-string v1, "SamsungBooks"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/auth/Locale$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/auth/Locale$AccessType;->SamsungBooks:Lcom/samsung/auth/Locale$AccessType;

    new-instance v0, Lcom/samsung/auth/Locale$AccessType;

    const-string v1, "SamsungLearning"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/auth/Locale$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/auth/Locale$AccessType;->SamsungLearning:Lcom/samsung/auth/Locale$AccessType;

    new-instance v0, Lcom/samsung/auth/Locale$AccessType;

    const-string v1, "MusicRadio"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/auth/Locale$AccessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/auth/Locale$AccessType;->MusicRadio:Lcom/samsung/auth/Locale$AccessType;

    const/4 v0, 0x4

    .line 10
    new-array v0, v0, [Lcom/samsung/auth/Locale$AccessType;

    sget-object v1, Lcom/samsung/auth/Locale$AccessType;->PaperGarden:Lcom/samsung/auth/Locale$AccessType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/auth/Locale$AccessType;->SamsungBooks:Lcom/samsung/auth/Locale$AccessType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/auth/Locale$AccessType;->SamsungLearning:Lcom/samsung/auth/Locale$AccessType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/auth/Locale$AccessType;->MusicRadio:Lcom/samsung/auth/Locale$AccessType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/auth/Locale$AccessType;->$VALUES:[Lcom/samsung/auth/Locale$AccessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/auth/Locale$AccessType;
    .locals 1

    .line 10
    const-class v0, Lcom/samsung/auth/Locale$AccessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/auth/Locale$AccessType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/auth/Locale$AccessType;
    .locals 1

    .line 10
    sget-object v0, Lcom/samsung/auth/Locale$AccessType;->$VALUES:[Lcom/samsung/auth/Locale$AccessType;

    invoke-virtual {v0}, [Lcom/samsung/auth/Locale$AccessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/auth/Locale$AccessType;

    return-object v0
.end method
