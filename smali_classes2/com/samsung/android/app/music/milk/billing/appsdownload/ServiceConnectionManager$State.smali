.class final enum Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

.field public static final enum FAILED:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

.field public static final enum IDLE:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

.field public static final enum INIT:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

.field public static final enum PREPARED:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

.field public static final enum RELEASING:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->IDLE:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    new-instance v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    const-string v1, "INIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->INIT:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    new-instance v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    const-string v1, "FAILED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->FAILED:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    new-instance v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    const-string v1, "PREPARED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->PREPARED:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    new-instance v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    const-string v1, "RELEASING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->RELEASING:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    const/4 v0, 0x5

    .line 20
    new-array v0, v0, [Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    sget-object v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->IDLE:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->INIT:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->FAILED:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->PREPARED:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->RELEASING:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->$VALUES:[Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;
    .locals 1

    .line 20
    const-class v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;
    .locals 1

    .line 20
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->$VALUES:[Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    return-object v0
.end method
