.class public final enum Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

.field public static final enum COMPLETED:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

.field public static final enum ERROR:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

.field public static final enum IDLE:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

.field public static final enum PAUSED:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

.field public static final enum PLAYING:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

.field public static final enum PREPARED:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

.field public static final enum PREPARING:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 53
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->ERROR:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 54
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    const-string v1, "IDLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 55
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    const-string v1, "PREPARING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->PREPARING:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 56
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    const-string v1, "PREPARED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->PREPARED:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 57
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    const-string v1, "PLAYING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->PLAYING:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 58
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    const-string v1, "PAUSED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->PAUSED:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 59
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    const-string v1, "COMPLETED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->COMPLETED:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    const/4 v0, 0x7

    .line 52
    new-array v0, v0, [Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->ERROR:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->PREPARING:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->PREPARED:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->PLAYING:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->PAUSED:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->COMPLETED:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    aput-object v1, v0, v8

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->$VALUES:[Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;
    .locals 1

    .line 52
    const-class v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    return-object p0
.end method

.method public static values()[Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;
    .locals 1

    .line 52
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->$VALUES:[Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    invoke-virtual {v0}, [Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    return-object v0
.end method
