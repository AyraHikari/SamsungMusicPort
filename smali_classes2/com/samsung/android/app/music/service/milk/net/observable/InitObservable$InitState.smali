.class final enum Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "InitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

.field public static final enum INITIALIZING:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

.field public static final enum INIT_DONE:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

.field public static final enum INIT_FAILED:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

.field public static final enum NOT_INITIALIZED:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    const-string v1, "NOT_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->NOT_INITIALIZED:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    const-string v1, "INIT_DONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->INIT_DONE:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    const-string v1, "INIT_FAILED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->INIT_FAILED:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    const-string v1, "INITIALIZING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->INITIALIZING:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    const/4 v0, 0x4

    .line 22
    new-array v0, v0, [Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    sget-object v1, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->NOT_INITIALIZED:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->INIT_DONE:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->INIT_FAILED:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->INITIALIZING:Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->$VALUES:[Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;
    .locals 1

    .line 22
    const-class v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;
    .locals 1

    .line 22
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->$VALUES:[Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable$InitState;

    return-object v0
.end method
