.class public final enum Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

.field public static final enum FOOTER:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

.field public static final enum HISTORY:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

.field public static final enum NONE:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

.field public static final enum PRESET:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;


# instance fields
.field private type:Ljava/lang/String;

.field private viewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 37
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    const-string v1, "NONE"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->NONE:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    .line 38
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    const-string v1, "PRESET"

    const-string v2, "PRESET"

    invoke-static {}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->a()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->PRESET:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    .line 39
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    const-string v1, "HISTORY"

    const-string v2, "HISTORY"

    invoke-static {}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->b()I

    move-result v4

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->HISTORY:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    .line 40
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    const-string v1, "FOOTER"

    const-string v2, "FOOTER"

    invoke-static {}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter;->c()I

    move-result v4

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->FOOTER:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    const/4 v0, 0x4

    .line 35
    new-array v0, v0, [Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->NONE:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->PRESET:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->HISTORY:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->FOOTER:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->$VALUES:[Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->type:Ljava/lang/String;

    .line 54
    iput p4, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->viewType:I

    return-void
.end method

.method public static match(I)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;
    .locals 5

    .line 66
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->values()[Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 67
    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->getViewType()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_1
    sget-object p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->NONE:Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;
    .locals 1

    .line 35
    const-class v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;
    .locals 1

    .line 35
    sget-object v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->$VALUES:[Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchPresetAdapter$ItemType;->viewType:I

    return v0
.end method
