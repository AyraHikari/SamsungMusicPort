.class public final enum Lcom/samsung/android/app/music/provider/sync/SyncOperation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/provider/sync/SyncOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/provider/sync/SyncOperation;

.field public static final enum HEART_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

.field public static final enum LOCAL_DRM_DELETE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

.field public static final enum LOCAL_DRM_INSERT:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

.field public static final enum LOCAL_DRM_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

.field public static final enum LOCAL_PLAYLIST_FAVORITE_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

.field public static final enum LOCAL_PLAYLIST_INSERT:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

.field public static final enum LOCAL_PLAYLIST_SYNC_DOWN:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

.field public static final enum LOCAL_PLAYLIST_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

.field public static final enum LOCAL_TRACK_DELETE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

.field public static final enum LOCAL_TRACK_INSERT:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

.field public static final enum LOCAL_TRACK_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    new-instance v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    const-string v2, "LOCAL_TRACK_DELETE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncOperation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_TRACK_DELETE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    const-string v2, "LOCAL_TRACK_INSERT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncOperation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_TRACK_INSERT:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    const-string v2, "LOCAL_TRACK_UPDATE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncOperation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_TRACK_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    const-string v2, "LOCAL_PLAYLIST_INSERT"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncOperation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_PLAYLIST_INSERT:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    const-string v2, "LOCAL_PLAYLIST_UPDATE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncOperation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_PLAYLIST_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    const-string v2, "LOCAL_PLAYLIST_FAVORITE_UPDATE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncOperation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_PLAYLIST_FAVORITE_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    const-string v2, "LOCAL_PLAYLIST_SYNC_DOWN"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncOperation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_PLAYLIST_SYNC_DOWN:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    const-string v2, "LOCAL_DRM_DELETE"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncOperation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_DRM_DELETE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    const-string v2, "LOCAL_DRM_INSERT"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncOperation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_DRM_INSERT:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    const-string v2, "LOCAL_DRM_UPDATE"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncOperation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_DRM_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    const-string v2, "HEART_UPDATE"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/provider/sync/SyncOperation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->HEART_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->$VALUES:[Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/SyncOperation;
    .locals 1

    const-class v0, Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/provider/sync/SyncOperation;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->$VALUES:[Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/provider/sync/SyncOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    return-object v0
.end method
