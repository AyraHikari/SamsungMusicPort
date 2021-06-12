.class public final enum Lcom/samsung/android/sdk/ppmt/content/CardState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/ppmt/content/CardState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ppmt/content/CardState;

.field public static final enum CANCELED:Lcom/samsung/android/sdk/ppmt/content/CardState;

.field public static final enum DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

.field public static final enum FAILED:Lcom/samsung/android/sdk/ppmt/content/CardState;

.field public static final enum GONE:Lcom/samsung/android/sdk/ppmt/content/CardState;

.field public static final enum INCOMP_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

.field public static final enum INCOMP_CANCEL_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

.field public static final enum INCOMP_DISPLAY:Lcom/samsung/android/sdk/ppmt/content/CardState;

.field public static final enum INCOMP_RESOURCE:Lcom/samsung/android/sdk/ppmt/content/CardState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 6
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    const-string v1, "INCOMP_CANCEL_API"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/content/CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_CANCEL_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 7
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    const-string v1, "INCOMP_RESOURCE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/ppmt/content/CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 8
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    const-string v1, "INCOMP_DISPLAY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/ppmt/content/CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 9
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    const-string v1, "DISPLAYED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/ppmt/content/CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 10
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    const-string v1, "GONE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/ppmt/content/CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->GONE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 11
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    const-string v1, "FAILED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/ppmt/content/CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->FAILED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 12
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    const-string v1, "CANCELED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/sdk/ppmt/content/CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->CANCELED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 13
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    const-string v1, "INCOMP_API"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/samsung/android/sdk/ppmt/content/CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    const/16 v0, 0x8

    .line 5
    new-array v0, v0, [Lcom/samsung/android/sdk/ppmt/content/CardState;

    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_CANCEL_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/ppmt/content/CardState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->GONE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->FAILED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->CANCELED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    aput-object v1, v0, v9

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->$VALUES:[Lcom/samsung/android/sdk/ppmt/content/CardState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;
    .locals 3

    .line 16
    const-class v0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 17
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/content/CardState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isIncompleteState(Lcom/samsung/android/sdk/ppmt/content/CardState;)Z
    .locals 1

    .line 25
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_CANCEL_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 26
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 27
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 28
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;
    .locals 1

    .line 5
    const-class v0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/ppmt/content/CardState;
    .locals 1

    .line 5
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->$VALUES:[Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ppmt/content/CardState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ppmt/content/CardState;

    return-object v0
.end method
