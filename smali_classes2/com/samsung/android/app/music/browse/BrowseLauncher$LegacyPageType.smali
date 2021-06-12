.class public final enum Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/BrowseLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LegacyPageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;

.field public static final enum COVER_ART:Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;

.field public static final enum VIDEO_PLAYER:Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;


# instance fields
.field private final mAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 219
    new-instance v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;

    const-string v1, "VIDEO_PLAYER"

    const-string v2, "milk.store.video_player"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;->VIDEO_PLAYER:Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;

    new-instance v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;

    const-string v1, "COVER_ART"

    const-string v2, "milk.store.cover_art"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;->COVER_ART:Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;

    const/4 v0, 0x2

    .line 218
    new-array v0, v0, [Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;

    sget-object v1, Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;->VIDEO_PLAYER:Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;->COVER_ART:Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;->$VALUES:[Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;

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

    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 224
    iput-object p3, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;->mAction:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;
    .locals 1

    .line 218
    const-class v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;
    .locals 1

    .line 218
    sget-object v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;->$VALUES:[Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;->mAction:Ljava/lang/String;

    return-object v0
.end method
