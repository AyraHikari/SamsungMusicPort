.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Constants"
.end annotation


# static fields
.field public static final COLUMN_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_PLAYLIST_ID:Ljava/lang/String; = "playlist_id"

.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$Constants;

.field public static final TABLE_NAME:Ljava/lang/String; = "playlist"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 294
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$Constants;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$Constants;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$Constants;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/queue/room/QueueRoom$Playlist$Constants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
