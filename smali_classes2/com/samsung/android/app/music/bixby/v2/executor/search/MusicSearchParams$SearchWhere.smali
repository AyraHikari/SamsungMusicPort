.class public final enum Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchWhere"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

.field public static final enum LOCAL:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

.field public static final enum STORE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

.field public static final enum UNDEFINED:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 25
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    const-string v1, "UNDEFINED"

    const-string v2, "Undefined"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->UNDEFINED:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    .line 26
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    const-string v1, "LOCAL"

    const-string v2, "Local"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->LOCAL:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    .line 27
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    const-string v1, "STORE"

    const-string v2, "Store"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->STORE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    const/4 v0, 0x3

    .line 23
    new-array v0, v0, [Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->UNDEFINED:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->LOCAL:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->STORE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->$VALUES:[Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

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

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->value:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->value:Ljava/lang/String;

    return-object p0
.end method

.method public static match(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;
    .locals 5

    .line 38
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->values()[Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 39
    iget-object v4, v3, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_1
    sget-object p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->UNDEFINED:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;
    .locals 1

    .line 23
    const-class v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;
    .locals 1

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->$VALUES:[Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->value:Ljava/lang/String;

    return-object v0
.end method
