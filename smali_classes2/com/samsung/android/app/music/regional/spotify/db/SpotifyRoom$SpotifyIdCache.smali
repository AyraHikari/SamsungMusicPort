.class public Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpotifyIdCache"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;
    .locals 1

    .line 64
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;

    invoke-direct {v0}, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;-><init>()V

    .line 65
    iput-object p0, v0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->b:Ljava/lang/String;

    .line 66
    iput-object p1, v0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->c:Ljava/lang/String;

    .line 67
    iput-object p2, v0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->d:Ljava/lang/String;

    .line 68
    iput-object p3, v0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->e:Ljava/lang/String;

    .line 69
    iput-wide p4, v0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->f:J

    return-object v0
.end method
