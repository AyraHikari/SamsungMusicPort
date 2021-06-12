.class public final enum Lcom/samsung/android/app/music/search/SearchConstants$SearchType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/SearchConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/search/SearchConstants$SearchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

.field public static final enum LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

.field public static final enum MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

.field public static final enum SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 72
    new-instance v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    new-instance v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    const-string v1, "MILK_STORE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    new-instance v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    const-string v1, "SPOTIFY_STORE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    const/4 v0, 0x3

    .line 71
    new-array v0, v0, [Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->$VALUES:[Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;
    .locals 1

    .line 71
    const-class v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/search/SearchConstants$SearchType;
    .locals 1

    .line 71
    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->$VALUES:[Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    return-object v0
.end method
