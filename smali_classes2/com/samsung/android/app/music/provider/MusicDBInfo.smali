.class public final Lcom/samsung/android/app/music/provider/MusicDBInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/MusicDBInfo$Audio;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$Album;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$Artist;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$AlbumArtist;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$Genre;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$Composer;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$BixBySearch;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$MostPlayedRank;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$DBSyncInfo;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$SyncLog;,
        Lcom/samsung/android/app/music/provider/MusicDBInfo$DeleteLog;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/MusicDBInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/samsung/android/app/music/provider/MusicDBInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/provider/MusicDBInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
