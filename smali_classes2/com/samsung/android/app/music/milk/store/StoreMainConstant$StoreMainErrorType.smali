.class public final enum Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/StoreMainConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoreMainErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

.field public static final enum LEGAL_NOT_AGREED:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

.field public static final enum NO_CONNECTION:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

.field public static final enum NO_ERROR:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

.field public static final enum SERVICE_NOT_CONNECTED:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

.field public static final enum TIME_OUT:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

.field public static final enum UNKNOWN:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;


# instance fields
.field private final mMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 197
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    const-string v1, "NO_ERROR"

    const-string v2, "No error !!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->NO_ERROR:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    .line 198
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    const-string v1, "UNKNOWN"

    const-string v2, "Unknown error !!"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->UNKNOWN:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    .line 199
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    const-string v1, "TIME_OUT"

    const-string v2, "Time out !! "

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->TIME_OUT:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    .line 200
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    const-string v1, "NO_CONNECTION"

    const-string v2, "No connection !!"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->NO_CONNECTION:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    .line 201
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    const-string v1, "SERVICE_NOT_CONNECTED"

    const-string v2, "No service connection !!"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    .line 202
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    const-string v1, "LEGAL_NOT_AGREED"

    const-string v2, "Legal not agreed"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->LEGAL_NOT_AGREED:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    const/4 v0, 0x6

    .line 196
    new-array v0, v0, [Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->NO_ERROR:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->UNKNOWN:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->TIME_OUT:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->NO_CONNECTION:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->LEGAL_NOT_AGREED:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->$VALUES:[Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 207
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public static fromException(Ljava/lang/Throwable;)Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;
    .locals 1

    .line 215
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->UNKNOWN:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    .line 216
    instance-of p0, p0, Ljava/util/concurrent/TimeoutException;

    if-eqz p0, :cond_0

    .line 217
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->TIME_OUT:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;
    .locals 1

    .line 196
    const-class v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;
    .locals 1

    .line 196
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->$VALUES:[Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->mMessage:Ljava/lang/String;

    return-object v0
.end method
