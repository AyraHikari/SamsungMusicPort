.class public final enum Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/help/ContactUsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContactUsFeedbackType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

.field public static final enum ASK:Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

.field public static final enum ERROR:Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

.field public static final enum OPINION:Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 64
    new-instance v0, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

    const-string v1, "ASK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;->ASK:Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

    new-instance v0, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

    const-string v1, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;->ERROR:Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

    new-instance v0, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

    const-string v1, "OPINION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;->OPINION:Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

    const/4 v0, 0x3

    .line 63
    new-array v0, v0, [Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

    sget-object v1, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;->ASK:Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;->ERROR:Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;->OPINION:Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;->$VALUES:[Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;
    .locals 1

    .line 63
    const-class v0, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;
    .locals 1

    .line 63
    sget-object v0, Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;->$VALUES:[Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;

    return-object v0
.end method
