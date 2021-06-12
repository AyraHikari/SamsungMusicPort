.class public abstract enum Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$TagUx;,
        Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$Separators;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;",
        ">;",
        "Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$TagUpdater;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

.field public static final enum Connection:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

.field public static final enum DRM:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

.field public static final enum Lyrics:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

.field public static final enum MWRoundedSongTag:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

.field public static final enum PrivateVisibility:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

.field public static final enum Quality:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

.field public static final enum RoundedSongTag:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

.field public static final enum SongTag:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

.field public static final enum SongTagVisibility:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 20
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$1;

    const-string v1, "PrivateVisibility"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->PrivateVisibility:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    .line 38
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$2;

    const-string v1, "SongTag"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->SongTag:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    .line 72
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$3;

    const-string v1, "RoundedSongTag"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->RoundedSongTag:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    .line 105
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$4;

    const-string v1, "MWRoundedSongTag"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->MWRoundedSongTag:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    .line 129
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$5;

    const-string v1, "SongTagVisibility"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->SongTagVisibility:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    .line 158
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$6;

    const-string v1, "Quality"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->Quality:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    .line 195
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$7;

    const-string v1, "DRM"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->DRM:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    .line 216
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$8;

    const-string v1, "Lyrics"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->Lyrics:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    .line 239
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$9;

    const-string v1, "Connection"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->Connection:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    const/16 v0, 0x9

    .line 18
    new-array v0, v0, [Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->PrivateVisibility:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->SongTag:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->RoundedSongTag:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->MWRoundedSongTag:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->SongTagVisibility:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->Quality:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->DRM:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->Lyrics:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->Connection:Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    aput-object v1, v0, v10

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->$VALUES:[Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;
    .locals 1

    .line 18
    const-class v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;
    .locals 1

    .line 18
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->$VALUES:[Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;

    return-object v0
.end method
