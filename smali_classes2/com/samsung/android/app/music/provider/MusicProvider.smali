.class public final Lcom/samsung/android/app/music/provider/MusicProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/MusicProvider$NotifyHelper;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "MusicProvider"

.field private static final d:Landroid/content/UriMatcher;

.field private static final g:Landroid/net/Uri;

.field private static final h:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/database/sqlite/SQLiteDatabase;

.field private j:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 109
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    .line 207
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "media_db_backup"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "db_info/sync"

    const/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "db_info/restore"

    const/16 v3, 0xca

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "online_sync_key_value"

    const/16 v3, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 213
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "sync_log"

    const/16 v3, 0xd2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "online_sync_log"

    const/16 v3, 0xd3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "delete_log"

    const/16 v3, 0xd4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "sync/local/update"

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 221
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media"

    const/16 v3, 0x2775

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 222
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/#"

    const/16 v4, 0x2776

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 223
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/raw_meta"

    const/16 v4, 0x2777

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 224
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/selected/*"

    const/16 v4, 0x277e

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/most_played_rank"

    const/16 v4, 0x27ed

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 228
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/now_playing_queue"

    const/16 v4, 0x283d

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 229
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/now_playing_queue_unique"

    const/16 v4, 0x28ab

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 231
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/base_artists"

    const/16 v4, 0x2905

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 232
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/music_artists_album_id"

    const/16 v4, 0x2906

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 233
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/music_artists_album_id/#"

    const/16 v4, 0x2907

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 234
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/music_albumartist"

    const/16 v4, 0x290f

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 236
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/base_albums"

    const/16 v4, 0x2969

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 237
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/music_albums"

    const/16 v4, 0x296a

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/music_albums/#"

    const/16 v4, 0x296b

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 239
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/albumart"

    const/16 v4, 0x2973

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 240
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/albumart/#"

    const/16 v4, 0x2974

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 242
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/music_genres"

    const/16 v4, 0x29cd

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 243
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/music_folders"

    const/16 v4, 0x2a31

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 244
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/music_folders_info"

    const/16 v4, 0x2a32

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/music_folder_trees"

    const/16 v4, 0x2a3b

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 246
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/music_folder_trees/tracks"

    const/16 v4, 0x2a3c

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 247
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/music_composers"

    const/16 v4, 0x2a95

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/search/fancy"

    const/16 v4, 0x192

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/search/fancy/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 252
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/search/#/type"

    const/16 v4, 0x193

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 253
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/search/#/type/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 256
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/search/bixby_total"

    const/16 v4, 0x194

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 257
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/search/bixby_total/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 259
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/raw_sql/*"

    const/16 v4, 0x271a

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 262
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "dlna_dms_contents_table"

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 263
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "dlna_dms_contents_table/#"

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 264
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "dlna_album_art"

    const/16 v4, 0xb

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 265
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "dlna_dms_table"

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 266
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "dlna_dmr_table"

    const/4 v4, 0x7

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 267
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "dlna_open_intent_table"

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 268
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "dlna_open_intent_table/#"

    const/16 v4, 0x9

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 269
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "dlna_all_table"

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 272
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "content://media/external/audio/albumart"

    .line 569
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->g:Landroid/net/Uri;

    .line 573
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    const-wide/16 v1, 0x7d0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;-><init>(J)V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->h:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    .line 630
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 78
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->e:Ljava/util/List;

    const-string v1, "_id"

    const-string v2, "mime_type"

    const-string v3, "artist"

    const-string v4, "album"

    const-string v5, "album_id"

    const-string v6, "title"

    const-string v7, "duration"

    const-string v8, "data1"

    const-string v9, "data2"

    const-string v10, "null AS dummy_album_art"

    const-string v11, "cp_attrs"

    .line 869
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->j:[Ljava/lang/String;

    .line 1992
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->a:Ljava/util/HashMap;

    .line 1994
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->b:Ljava/util/HashMap;

    return-void
.end method

.method static a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)I
    .locals 3

    .line 1823
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveListEntry from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p7, p8, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1827
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-nez p4, :cond_1

    :try_start_0
    const-string p4, ""

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 1830
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1831
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=-1 WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p5}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ge p7, p8, :cond_2

    .line 1835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p5}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-int p7, p8, p7

    add-int/lit8 p7, p7, 0x1

    goto :goto_1

    .line 1841
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p5}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-int/2addr p7, p8

    add-int/lit8 p7, p7, 0x1

    .line 1847
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " SET "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " WHERE "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "=-1 "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p5}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1850
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1851
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1854
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return p7

    :goto_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method

.method private a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    .line 1548
    :try_start_0
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x1

    .line 1550
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p4, :cond_0

    .line 1552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v4, v1

    const-string v1, "group_concat(_id, \',\')"

    const-string v2, "group_concat(source_id, \',\')"

    .line 1554
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "audio_meta"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    move-object v5, p5

    .line 1558
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1560
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 1561
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1562
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v3

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v2, p1

    .line 1557
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v2, :cond_1

    .line 1564
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_1
    move-exception p3

    :try_start_4
    invoke-virtual {v2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    throw p1

    :cond_3
    move-object v0, v2

    move-object v6, v0

    :goto_2
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1565
    :cond_4
    invoke-static {p1, p2, p3, v6}, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    const-string v1, "audio_meta"

    .line 1568
    invoke-virtual {p2, v1, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p4

    .line 1570
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1572
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1574
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1577
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->e(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_5

    return p4

    :cond_5
    if-lez p4, :cond_6

    .line 1582
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 1583
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "_id IN ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "external"

    .line 1585
    invoke-static {p3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-static {p1, p3, p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 1586
    sget-object p3, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteAudioMedia : source provider - deleted "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", where : "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return p4

    :catchall_1
    move-exception p1

    .line 1574
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I
    .locals 7

    const-string v0, "validity"

    .line 2012
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "track_id"

    .line 2013
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    .line 2014
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2016
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2017
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audio_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "validity"

    .line 2019
    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "track_id"

    .line 2020
    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "milk_drm"

    .line 2021
    invoke-virtual {p1, v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2027
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->b(Landroid/content/ContentValues;)V

    .line 2028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio_meta"

    .line 2029
    invoke-virtual {p1, v1, p2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 29

    move-object/from16 v15, p0

    move-object/from16 v0, p3

    move-object/from16 v14, p4

    const-string v1, "artist"

    .line 1690
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v1, "album"

    .line 1691
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v1, "_data"

    .line 1692
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "cp_attrs"

    .line 1693
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v9, :cond_0

    .line 1695
    invoke-direct {v15, v9, v0}, Lcom/samsung/android/app/music/provider/MusicProvider;->b(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_0
    const/4 v12, 0x0

    const/4 v11, 0x1

    if-nez v13, :cond_1

    if-eqz v17, :cond_6

    :cond_1
    if-eqz v9, :cond_2

    if-nez v10, :cond_6

    :cond_2
    const-string v2, "audio_meta"

    const-string v1, "_data"

    const-string v3, "cp_attrs"

    .line 1701
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 1705
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v3, v11, :cond_3

    .line 1707
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1708
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1709
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    move-object v9, v3

    goto :goto_1

    .line 1711
    :cond_3
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAudioFile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rows "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 1717
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return v12

    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v7, v15

    :goto_0
    move-object v2, v0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v7, v15

    goto/16 :goto_b

    .line 1715
    :cond_5
    :try_start_1
    sget-object v3, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAudioFile : can not get path, selection : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :goto_1
    if-eqz v1, :cond_6

    .line 1717
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    const-wide/16 v18, 0x0

    if-eqz v13, :cond_8

    if-eqz v10, :cond_8

    const-string v1, "source_artist_id"

    .line 1726
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1727
    iget-object v1, v15, Lcom/samsung/android/app/music/provider/MusicProvider;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 1728
    :try_start_2
    invoke-direct {v15, v8, v13, v10}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    .line 1729
    iget-object v2, v15, Lcom/samsung/android/app/music/provider/MusicProvider;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1730
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_7

    const-string v3, "artists"

    const-string v4, "artist_unique_key"

    const-string v5, "artist_key"

    const-string v6, "artist"

    const-string v16, "source_artist_id"

    const/16 v20, 0x0

    .line 1732
    iget-object v2, v15, Lcom/samsung/android/app/music/provider/MusicProvider;->b:Ljava/util/HashMap;

    const/16 v21, 0x0

    move-object/from16 v1, p0

    move-object/from16 v22, v2

    move-object/from16 v2, p1

    move-object/from16 v23, v7

    move-object v7, v13

    move-object/from16 v24, v8

    move-object/from16 v8, v16

    move-object/from16 v25, v9

    move-object/from16 v9, v24

    move-object/from16 v26, v10

    move-object/from16 v10, v23

    const/16 v23, 0x1

    move-object/from16 v11, v20

    move-object v12, v13

    move-object/from16 v27, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v26

    move-object/from16 v15, p3

    move/from16 v16, v21

    invoke-direct/range {v1 .. v16}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Integer;Landroid/content/ContentValues;Z)J

    move-result-wide v1

    goto :goto_2

    :cond_7
    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v13

    const/16 v23, 0x1

    .line 1737
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_2
    cmp-long v3, v1, v18

    if-lez v3, :cond_9

    const-string v3, "artist_id"

    .line 1740
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 1730
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_8
    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v13

    const/16 v23, 0x1

    :cond_9
    :goto_3
    if-eqz v17, :cond_c

    move-object/from16 v15, v26

    if-eqz v15, :cond_b

    const-string v1, "album_artist"

    .line 1746
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "source_album_id"

    .line 1747
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v14, p0

    .line 1751
    iget-object v7, v14, Lcom/samsung/android/app/music/provider/MusicProvider;->a:Ljava/util/HashMap;

    monitor-enter v7

    const/16 v1, 0x2f

    move-object/from16 v2, v25

    .line 1753
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, v17

    move-object v4, v11

    .line 1752
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 1754
    iget-object v1, v14, Lcom/samsung/android/app/music/provider/MusicProvider;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1755
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v1, :cond_a

    const-string v3, "albums"

    const-string v4, "album_unique_key"

    const-string v5, "album_key"

    const-string v6, "album"

    const-string v8, "source_album_id"

    .line 1757
    iget-object v12, v14, Lcom/samsung/android/app/music/provider/MusicProvider;->a:Ljava/util/HashMap;

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, v17

    move-object/from16 v17, v12

    move-object/from16 v12, v27

    const/16 v20, 0x0

    move-object/from16 v13, v17

    move-object v14, v15

    move-object/from16 v28, v15

    move-object/from16 v15, p3

    invoke-direct/range {v1 .. v16}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Integer;Landroid/content/ContentValues;Z)J

    move-result-wide v1

    goto :goto_4

    :cond_a
    move-object/from16 v28, v15

    const/16 v20, 0x0

    .line 1762
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_4
    cmp-long v3, v1, v18

    if-lez v3, :cond_d

    const-string v3, "album_id"

    .line 1765
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_6

    :catchall_2
    move-exception v0

    .line 1755
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_b
    move-object/from16 v28, v15

    goto :goto_5

    :cond_c
    move-object/from16 v28, v26

    :goto_5
    const/16 v20, 0x0

    :cond_d
    :goto_6
    const-string v1, "title"

    .line 1769
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    move-object/from16 v10, v28

    if-eqz v10, :cond_f

    move-object/from16 v7, p0

    .line 1771
    invoke-direct {v7, v0, v1, v10}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_7

    :cond_e
    move-object/from16 v10, v28

    :cond_f
    move-object/from16 v7, p0

    :goto_7
    const-string v1, "album_artist"

    .line 1778
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    const-string v2, "music_album_artist"

    .line 1780
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    move-object/from16 v1, v27

    if-eqz v1, :cond_11

    const-string v2, "music_album_artist"

    .line 1782
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_8
    const-string v1, "composer"

    .line 1785
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1786
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/provider/MusicProvider;->c(Landroid/content/ContentValues;)V

    .line 1788
    :cond_12
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/provider/MusicProvider;->d(Landroid/content/ContentValues;)V

    .line 1789
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/provider/MusicProvider;->f(Landroid/content/ContentValues;)V

    if-eqz v10, :cond_14

    .line 1792
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x80001

    if-ne v1, v2, :cond_13

    const/4 v1, 0x1

    goto :goto_9

    :cond_13
    const/4 v1, 0x0

    :goto_9
    invoke-direct {v7, v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->b(Landroid/content/ContentValues;Z)V

    .line 1794
    :cond_14
    invoke-direct {v7, v0}, Lcom/samsung/android/app/music/provider/MusicProvider;->b(Landroid/content/ContentValues;)V

    const-string v1, "audio_meta"

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v5, p4

    .line 1795
    invoke-virtual {v2, v1, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_15

    .line 1799
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_15
    return v8

    :catchall_3
    move-exception v0

    move-object v7, v15

    :goto_a
    move-object v3, v2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v7, v15

    move-object v2, v0

    .line 1701
    :goto_b
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_a

    :goto_c
    if-eqz v1, :cond_17

    if-eqz v3, :cond_16

    .line 1717
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_d

    :catch_2
    move-exception v0

    move-object v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_16
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_17
    :goto_d
    throw v2
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 10

    .line 1000
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1004
    array-length v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p3, v4

    if-eqz v5, :cond_0

    .line 1006
    invoke-direct {p0, p1, v5, v3}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    .line 1008
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1013
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1, p2, v0, v1}, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)V

    .line 1014
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1018
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x2775

    .line 1019
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/net/Uri;I)V

    .line 1021
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :catchall_0
    move-exception p2

    .line 1016
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2
.end method

.method private a(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 6

    .line 2527
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    const-string v1, "bulkUpdate() is called."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "match"

    .line 2530
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "albumArt"

    .line 2531
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x140

    goto :goto_0

    :cond_0
    const-string v1, "mdrm"

    .line 2533
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x14a

    goto :goto_0

    :cond_1
    const/16 v0, 0x136

    .line 2537
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x0

    .line 2540
    :try_start_0
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v5, p2, v3

    if-eqz v5, :cond_2

    .line 2542
    invoke-direct {p0, p1, v0, v5}, Lcom/samsung/android/app/music/provider/MusicProvider;->b(Landroid/net/Uri;ILandroid/content/ContentValues;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2545
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2553
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v1, v4

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p2

    .line 2550
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bulkUpdate : SQLiteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    invoke-static {v2, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2553
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2556
    :goto_2
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 2559
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->d:Landroid/net/Uri;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_4
    return v1

    .line 2553
    :goto_3
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method private a(Landroid/net/Uri;[Landroid/content/ContentValues;I)I
    .locals 4

    .line 974
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 977
    :try_start_0
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p2, v1

    if-eqz v3, :cond_0

    .line 979
    invoke-direct {p0, p1, p3, v3}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 985
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 993
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(Landroid/net/Uri;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 994
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/net/Uri;I)V

    :cond_2
    return v2

    :catchall_0
    move-exception p1

    .line 987
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 2035
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 2037
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const-string p2, "<unknown>"

    .line 2039
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    :goto_0
    return p1
.end method

.method private a([Landroid/content/ContentValues;)I
    .locals 9

    .line 1409
    array-length v0, p1

    .line 1412
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "dlna_album_art"

    const-string v3, "album_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 1415
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1416
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    .line 1417
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v2, p1

    .line 1412
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    .line 1419
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw p1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1421
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1423
    :try_start_3
    array-length v1, p1

    :goto_3
    if-ge v3, v1, :cond_4

    aget-object v5, p1, v3

    add-int/lit8 v4, v4, 0x1

    .line 1426
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "album_id"

    .line 1427
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "album_art"

    const-string v8, "album_art"

    .line 1430
    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1429
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    iget-object v7, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "dlna_album_art"

    invoke-virtual {v7, v8, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v6, "_size"

    const-string v7, "_size"

    .line 1436
    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1435
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "album_id"

    .line 1437
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "album_art"

    .line 1439
    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1441
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "dlna_dms_contents_table"

    invoke-virtual {v6, v7, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1443
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1445
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1447
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    return v0

    :catchall_1
    move-exception p1

    .line 1445
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)J
    .locals 27

    move-object/from16 v15, p0

    move-object/from16 v0, p2

    const-string v1, "_data"

    .line 2046
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "cp_attrs"

    .line 2047
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    const/4 v12, 0x1

    if-eqz v14, :cond_e

    .line 2048
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_e

    if-nez v13, :cond_0

    goto/16 :goto_f

    .line 2059
    :cond_0
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    const-string v0, "album_artist"

    .line 2061
    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "artist"

    .line 2062
    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2063
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v10, v1

    goto :goto_2

    :cond_2
    :goto_1
    const-string v1, "<unknown>"

    goto :goto_0

    :goto_2
    const-string v1, "album"

    .line 2068
    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_data"

    .line 2069
    invoke-virtual {v11, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    if-eqz v1, :cond_4

    .line 2070
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    move-object/from16 v17, v1

    goto :goto_6

    :cond_4
    :goto_4
    if-eqz v9, :cond_5

    .line 2073
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2075
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_5
    move-object v1, v8

    :goto_5
    if-nez v1, :cond_3

    const-string v1, "<unknown>"

    goto :goto_3

    :goto_6
    const-string v1, "source_artist_id"

    .line 2088
    invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2089
    iget-object v1, v15, Lcom/samsung/android/app/music/provider/MusicProvider;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 2090
    :try_start_0
    invoke-direct {v15, v7, v10, v13}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    .line 2091
    iget-object v2, v15, Lcom/samsung/android/app/music/provider/MusicProvider;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2092
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_6

    const-string v3, "artists"

    const-string v4, "artist_unique_key"

    const-string v5, "artist_key"

    const-string v16, "artist"

    const-string v18, "source_artist_id"

    const/16 v19, 0x0

    .line 2094
    iget-object v2, v15, Lcom/samsung/android/app/music/provider/MusicProvider;->b:Ljava/util/HashMap;

    move-object/from16 v1, p0

    move-object/from16 v20, v2

    move-object/from16 v2, p1

    move-object/from16 v21, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v7

    move-object v7, v10

    move-object/from16 v8, v18

    move-object/from16 v22, v9

    move-object/from16 v9, v16

    move-object/from16 v18, v10

    move-object/from16 v10, v21

    move-object/from16 v23, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v18

    move-object/from16 v24, v13

    move-object/from16 v13, v20

    move-object/from16 v25, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v23

    move/from16 v16, p3

    invoke-direct/range {v1 .. v16}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Integer;Landroid/content/ContentValues;Z)J

    move-result-wide v1

    goto :goto_7

    :cond_6
    move-object/from16 v22, v9

    move-object/from16 v18, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    .line 2099
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_7
    const-wide/16 v19, 0x0

    cmp-long v3, v1, v19

    if-lez v3, :cond_7

    const-string v3, "artist_id"

    .line 2102
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v15, v23

    invoke-virtual {v15, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_8

    :cond_7
    move-object/from16 v15, v23

    :goto_8
    const-string v1, "source_album_id"

    .line 2110
    invoke-virtual {v15, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v14, p0

    .line 2111
    iget-object v7, v14, Lcom/samsung/android/app/music/provider/MusicProvider;->a:Ljava/util/HashMap;

    monitor-enter v7

    const/16 v1, 0x2f

    move-object/from16 v13, v22

    .line 2113
    :try_start_1
    invoke-virtual {v13, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v12, 0x0

    invoke-virtual {v13, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, v17

    move-object v4, v0

    .line 2112
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 2114
    iget-object v1, v14, Lcom/samsung/android/app/music/provider/MusicProvider;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2115
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_8

    const-string v3, "albums"

    const-string v4, "album_unique_key"

    const-string v5, "album_key"

    const-string v6, "album"

    const-string v8, "source_album_id"

    .line 2117
    iget-object v11, v14, Lcom/samsung/android/app/music/provider/MusicProvider;->a:Ljava/util/HashMap;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, v17

    move-object/from16 v16, v11

    move-object v11, v0

    const/4 v0, 0x0

    move-object/from16 v12, v18

    move-object v0, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v24

    move-object/from16 v26, v15

    move/from16 v16, p3

    .line 2118
    invoke-direct/range {v1 .. v16}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Integer;Landroid/content/ContentValues;Z)J

    move-result-wide v1

    goto :goto_9

    :cond_8
    move-object v0, v13

    move-object/from16 v26, v15

    .line 2123
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_9
    cmp-long v3, v1, v19

    if-lez v3, :cond_9

    const-string v3, "album_id"

    .line 2126
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, v26

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_a

    :cond_9
    move-object/from16 v2, v26

    :goto_a
    const-string v1, "title"

    .line 2130
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move-object/from16 v3, p0

    .line 2132
    invoke-direct {v3, v0}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "title"

    .line 2133
    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_a
    move-object/from16 v3, p0

    :goto_b
    const-string v4, "album_artist"

    .line 2137
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    const-string v4, "artist"

    .line 2139
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_b
    const-string v5, "music_album_artist"

    if-nez v4, :cond_c

    const-string v4, "<unknown>"

    .line 2141
    :cond_c
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v24

    .line 2144
    invoke-direct {v3, v2, v1, v4}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2145
    invoke-direct {v3, v0, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2146
    invoke-direct {v3, v0, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->b(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2147
    invoke-direct {v3, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->c(Landroid/content/ContentValues;)V

    .line 2148
    invoke-direct {v3, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->d(Landroid/content/ContentValues;)V

    .line 2149
    invoke-direct {v3, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->e(Landroid/content/ContentValues;)V

    .line 2150
    invoke-direct {v3, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->f(Landroid/content/ContentValues;)V

    .line 2153
    invoke-direct {v3, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->b(Landroid/content/ContentValues;)V

    .line 2154
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x80001

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_c

    :cond_d
    const/4 v0, 0x0

    :goto_c
    invoke-direct {v3, v2, v0}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/content/ContentValues;Z)V

    move-object/from16 v0, v25

    .line 2155
    invoke-direct {v3, v2, v0}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v0, "audio_meta"

    move-object/from16 v1, p1

    const/4 v4, 0x0

    .line 2156
    invoke-virtual {v1, v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0

    :catchall_0
    move-exception v0

    move-object v3, v14

    .line 2115
    :goto_d
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v3, v15

    .line 2092
    :goto_e
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_e

    :cond_e
    :goto_f
    move-object v3, v15

    .line 2049
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    const-string v1, "Necessary columns can\'t be null or empty."

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 9

    .line 1999
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    .line 2000
    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)J

    move-result-wide v7

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-lez v0, :cond_0

    .line 2002
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, v7

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/AudioMetaTriggerHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;JLandroid/content/ContentValues;)V

    .line 2004
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2006
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v7

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Integer;Landroid/content/ContentValues;Z)J
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            "Landroid/content/ContentValues;",
            "Z)J"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v15, p9

    move-object/from16 v14, p12

    move-object/from16 v13, p13

    move-object/from16 v12, p14

    const-wide/16 v10, -0x1

    const/4 v8, 0x1

    if-eqz v13, :cond_10

    .line 2337
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x80008

    if-ne v1, v2, :cond_0

    goto/16 :goto_d

    .line 2343
    :cond_0
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x80001

    if-eq v1, v2, :cond_2

    if-eqz p8, :cond_1

    if-eqz p8, :cond_2

    .line 2344
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 2345
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    const-string v1, "getKeyIdForName : Local(Non drm)/Online\'s sourceAlbum/ArtistId should not be null"

    invoke-static {v8, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    return-wide v10

    :cond_2
    if-eqz p6, :cond_4

    .line 2351
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move-object/from16 v7, p6

    goto :goto_1

    :cond_4
    :goto_0
    const-string v1, "<unknown>"

    move-object v7, v1

    :goto_1
    const-string v1, "albums"

    .line 2354
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    const-string v1, "<unknown>"

    .line 2355
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 2357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    .line 2359
    new-array v5, v8, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v15, v5, v2

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v17

    const/4 v0, 0x1

    move-object/from16 v8, v18

    .line 2360
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v7, 0x0

    .line 2361
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v24, 0x0

    packed-switch v1, :pswitch_data_0

    move-object v1, v7

    move-object/from16 v23, v8

    move-object v5, v14

    move-object v6, v15

    .line 2409
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_7

    .line 2379
    :pswitch_0
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v11, 0x0

    .line 2380
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez p15, :cond_6

    move-object/from16 v1, p0

    move-object v2, v8

    move/from16 v3, v21

    move-object/from16 v4, p5

    move-wide/from16 v26, v5

    move-object/from16 v5, v16

    move-object/from16 v6, p7

    move-object v10, v7

    move-object/from16 v7, p8

    move-object/from16 v23, v8

    move-object/from16 v8, p10

    .line 2384
    :try_start_3
    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/Cursor;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v7, v10

    goto/16 :goto_b

    :cond_6
    move-wide/from16 v26, v5

    move-object v10, v7

    move-object/from16 v23, v8

    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_9

    move-object v1, v10

    move-object/from16 v10, p0

    const/4 v2, 0x0

    move/from16 v11, v21

    move-object v3, v12

    move-object/from16 v12, p3

    move-object v4, v13

    move-object/from16 v13, p9

    move-object v5, v14

    move-object/from16 v14, p4

    move-object v6, v15

    move-object/from16 v15, p5

    move-object/from16 v17, p8

    move-object/from16 v18, p13

    move-object/from16 v19, p10

    move-object/from16 v20, p14

    .line 2388
    :try_start_4
    invoke-direct/range {v10 .. v20}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 2391
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v21, :cond_7

    const-string v8, "album_id"

    goto :goto_4

    :cond_7
    const-string v8, "artist_id"

    :goto_4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "=?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2393
    new-array v8, v0, [Ljava/lang/String;

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v2

    move-object/from16 v0, p1

    const/4 v2, 0x1

    .line 2394
    invoke-virtual {v0, v9, v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-ge v8, v2, :cond_8

    .line 2395
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getKeyIdForName can\'t update table : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", whereClaus : "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", rowId : "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v26

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    move-wide/from16 v9, v26

    :goto_5
    if-eqz v21, :cond_a

    const-string v2, "album_art_location"

    .line 2402
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-wide/from16 p4, v9

    move-object/from16 p6, p8

    move-object/from16 p7, v2

    .line 2401
    invoke-direct/range {p2 .. p7}, Lcom/samsung/android/app/music/provider/MusicProvider;->b(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    move-object v5, v14

    move-object v6, v15

    move-wide/from16 v9, v26

    :cond_a
    :goto_6
    move-wide v7, v9

    goto/16 :goto_8

    :pswitch_1
    move-object v1, v7

    move-object/from16 v23, v8

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v0, p1

    move-object/from16 v10, p0

    move/from16 v11, v21

    move-object/from16 v12, p3

    move-object/from16 v13, p9

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v17, p8

    move-object/from16 v18, p13

    move-object/from16 v19, p10

    move-object/from16 v20, p14

    .line 2365
    invoke-direct/range {v10 .. v20}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v2

    .line 2368
    invoke-virtual {v0, v9, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    cmp-long v2, v7, v24

    if-lez v2, :cond_b

    .line 2370
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/music/provider/CpAttrs;->c(I)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v21, :cond_b

    const-string v2, "album_art_location"

    .line 2372
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-wide/from16 p4, v7

    move-object/from16 p6, p8

    move-object/from16 p7, v2

    .line 2371
    invoke-direct/range {p2 .. p7}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 2409
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple entries in table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for unique key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-wide v7, v10

    :cond_b
    :goto_8
    if-eqz v23, :cond_c

    .line 2414
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz v5, :cond_d

    if-nez v22, :cond_d

    cmp-long v0, v7, v24

    if-lez v0, :cond_d

    .line 2417
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-wide v7

    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v1, v7

    move-object/from16 v23, v8

    :goto_9
    move-object v1, v0

    goto :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v23, v8

    :goto_a
    move-object v7, v0

    .line 2359
    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_9

    :goto_b
    if-eqz v23, :cond_f

    if-eqz v7, :cond_e

    .line 2414
    :try_start_6
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_c

    :catch_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v7, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_e
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_f
    :goto_c
    throw v1

    :cond_10
    :goto_d
    move-object v4, v13

    const/4 v2, 0x1

    .line 2338
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKeyIdForName : cpAttrs should be Local(DRM) or Online : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    return-wide v10

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;IJ)Landroid/content/ContentValues;
    .locals 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    cmp-long p4, p4, v2

    if-nez p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const-string p5, "source_id"

    .line 1329
    invoke-virtual {p2, p5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const-string v2, "title"

    .line 1330
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eq p3, v3, :cond_9

    .line 1331
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_2

    .line 1342
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "source_id"

    .line 1343
    invoke-virtual {v0, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_data"

    .line 1344
    invoke-static {p5}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "title"

    .line 1345
    invoke-virtual {v0, p5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "cp_attrs"

    .line 1346
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p5, "album"

    .line 1348
    invoke-virtual {p2, p5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const-string v3, "album_id"

    .line 1349
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "album_artist"

    .line 1350
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "artist"

    .line 1351
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "artist_id"

    .line 1352
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "duration"

    .line 1353
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "explicit"

    .line 1354
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "is_celeb"

    .line 1355
    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    if-eqz p4, :cond_3

    const-string p2, "album"

    .line 1358
    invoke-virtual {v0, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "album_id"

    .line 1359
    invoke-virtual {v0, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "album_artist"

    .line 1360
    invoke-virtual {v0, p2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "artist"

    .line 1361
    invoke-virtual {v0, p2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "artist_id"

    .line 1362
    invoke-virtual {v0, p2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "duration"

    .line 1363
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p4

    mul-int/lit16 p4, p4, 0x3e8

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "explicit"

    .line 1364
    invoke-virtual {v0, p2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v9, :cond_2

    const-string p2, "is_celeb"

    .line 1366
    invoke-virtual {v0, p2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1369
    :cond_2
    invoke-direct {p0, p1, v0, v1, p3}, Lcom/samsung/android/app/music/provider/MusicProvider;->c(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)J

    move-result-wide p4

    const-string p2, "artist_id"

    .line 1370
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1371
    invoke-direct {p0, p1, v0, v1, p3}, Lcom/samsung/android/app/music/provider/MusicProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)J

    move-result-wide p1

    const-string p4, "album_id"

    .line 1372
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 1374
    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    .line 1375
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    const-string p4, "album"

    .line 1376
    invoke-virtual {v0, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "album_id"

    .line 1377
    invoke-virtual {v0, p4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "album_artist"

    .line 1378
    invoke-virtual {v0, p4, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    invoke-direct {p0, p1, v0, v1, p3}, Lcom/samsung/android/app/music/provider/MusicProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)J

    move-result-wide p4

    const-string v3, "album_id"

    .line 1380
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1382
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "artist"

    .line 1383
    invoke-virtual {v0, p4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "artist_id"

    .line 1384
    invoke-virtual {v0, p4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/samsung/android/app/music/provider/MusicProvider;->c(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)J

    move-result-wide p1

    const-string p4, "artist_id"

    .line 1387
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_5
    if-eqz v7, :cond_6

    const-string p1, "duration"

    .line 1390
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    if-eqz v8, :cond_7

    const-string p1, "explicit"

    .line 1393
    invoke-virtual {v0, p1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_7
    if-eqz v9, :cond_8

    const-string p1, "is_celeb"

    .line 1396
    invoke-virtual {v0, p1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_8
    :goto_1
    const-string p1, "artist"

    .line 1400
    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p1, "album"

    .line 1401
    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p1, "album_artist"

    .line 1402
    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1404
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, v2, p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    .line 1332
    :cond_9
    :goto_2
    sget-object p1, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    const-string p2, "Necessary columns can\'t be null or empty."

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 3

    .line 2476
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "source_album_id"

    const-string v1, "album_cp_attrs"

    if-eqz p9, :cond_2

    const-string v2, "album_artist"

    .line 2483
    invoke-virtual {v0, v2, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p7, :cond_1

    const-string p1, "::"

    .line 2487
    invoke-virtual {p7, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2488
    array-length p1, p1

    const/4 p9, 0x1

    if-le p1, p9, :cond_1

    const-string p1, "is_multple_artist"

    .line 2489
    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    invoke-virtual {v0, p1, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string p1, "source_artist_id"

    const-string v1, "artist_cp_attrs"

    .line 2496
    :cond_2
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    invoke-virtual {v0, p5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_3

    .line 2498
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_3

    .line 2499
    invoke-virtual {v0, p1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p8, :cond_4

    .line 2502
    invoke-virtual {v0, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2506
    :cond_4
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->l_:Z

    if-eqz p1, :cond_6

    .line 2507
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_pinyin"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2508
    invoke-virtual {p10, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    .line 2510
    invoke-static {p6}, Lcom/samsung/android/app/musiclibrary/ui/provider/PinyinUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2512
    :cond_5
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string p1, "dummy_key"

    .line 2514
    invoke-virtual {v0, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 716
    sget-object p2, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doBixbySearch : uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string p3, "  "

    const-string v0, " "

    .line 718
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 720
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v0, 0x0

    if-lez p3, :cond_1

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    new-array p2, v0, [Ljava/lang/String;

    .line 722
    :goto_1
    array-length p3, p2

    if-nez p3, :cond_2

    .line 724
    sget-object p1, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    const-string p2, "doBixbySearch "

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 728
    :cond_2
    new-array v6, p3, [Ljava/lang/String;

    :goto_2
    if-ge v0, p3, :cond_3

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, v6

    move-object v4, p5

    move-object v5, p6

    .line 733
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 734
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-eqz p3, :cond_4

    .line 735
    sget-object p1, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    const-string p3, "doBixbySearch : step1 return result"

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_4
    if-eqz p2, :cond_5

    .line 739
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, v6

    move-object v4, p5

    move-object v5, p6

    .line 742
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MusicProvider;->b(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 743
    sget-object p2, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    const-string p3, "doBixbySearch : step2 return result"

    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move/from16 v0, p8

    .line 659
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAudioSearch : uriMatch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_5

    .line 665
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "  "

    const-string v4, " "

    .line 666
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 668
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    new-array v2, v4, [Ljava/lang/String;

    :goto_1
    move-object/from16 v3, p5

    const/4 v1, 0x0

    .line 670
    :goto_2
    array-length v5, v2

    if-ge v1, v5, :cond_3

    if-nez v1, :cond_2

    const-string v3, "match LIKE ? ESCAPE \'\\\'"

    goto :goto_3

    .line 674
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND match LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 677
    :cond_3
    array-length v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 678
    array-length v5, v2

    :goto_4
    if-ge v4, v5, :cond_4

    .line 680
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v2, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    move-object v2, v1

    move-object v1, v3

    goto :goto_5

    :cond_5
    move-object/from16 v1, p5

    move-object/from16 v2, p6

    :goto_5
    const/16 v3, 0x192

    if-ne v0, v3, :cond_6

    const-string v0, "search"

    :goto_6
    move-object v3, v0

    move-object/from16 v0, p2

    goto :goto_7

    .line 691
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 690
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "search_track"

    goto :goto_6

    :pswitch_0
    const-string v0, "search_album"

    goto :goto_6

    :pswitch_1
    const-string v0, "search_artist"

    goto :goto_6

    .line 704
    :goto_7
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v3, p0

    .line 705
    iget-object v8, v3, Lcom/samsung/android/app/music/provider/MusicProvider;->j:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-object v9, v1

    move-object v10, v2

    move-object/from16 v13, p7

    move-object/from16 v14, p9

    invoke-virtual/range {v6 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v6, p0

    move-object/from16 v8, p2

    move-object/from16 v11, p7

    move-object/from16 v12, p9

    .line 707
    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v4, :cond_7

    .line 708
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_7

    .line 709
    invoke-interface {v4, v0}, Landroid/database/Cursor;->setExtras(Landroid/os/Bundle;)V

    :cond_7
    return-object v4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    .line 553
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->c(Landroid/net/Uri;)I

    move-result v0

    const-string v1, "limit"

    .line 554
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 556
    invoke-static {v1}, Lcom/samsung/android/app/music/provider/MusicDBInfo$MostPlayedRank;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 557
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 556
    invoke-static {v2, p3, p4, p6, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 560
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    .line 559
    invoke-static {p5, v3, p4}, Lcom/samsung/android/app/music/provider/MusicProvider;->a([Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 561
    invoke-virtual {p1, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_0
    return-object p1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15

    move-object/from16 v0, p3

    const-string v1, "title"

    const-string v2, "artist"

    const-string v3, "album"

    .line 765
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 767
    array-length v2, v1

    .line 768
    array-length v3, v0

    .line 770
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    mul-int v5, v3, v2

    .line 772
    new-array v10, v5, [Ljava/lang/String;

    .line 773
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_3

    const-string v8, "("

    .line 775
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v3, :cond_1

    if-nez v8, :cond_0

    .line 778
    aget-object v9, v1, v7

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " LIKE ? "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const-string v9, " AND "

    .line 780
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v1, v7

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " LIKE ? "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    mul-int v9, v7, v3

    add-int/2addr v9, v8

    .line 782
    aget-object v11, v0, v8

    aput-object v11, v10, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v2, -0x1

    if-ne v7, v8, :cond_2

    const-string v8, ")"

    .line 789
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const-string v8, ") OR "

    .line 791
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 795
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 796
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v7, "audio"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 799
    invoke-virtual/range {v6 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 801
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doBixbySearchInternalStep1 return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", selectionArgs :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 801
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eq p2, v0, :cond_4

    const/16 v0, 0xb

    if-eq p2, v0, :cond_3

    const/16 v0, 0x64

    if-eq p2, v0, :cond_2

    const/16 v0, 0x2775

    if-eq p2, v0, :cond_1

    const/16 v0, 0x2973

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_2

    .line 1987
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid URI "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1913
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1915
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "online_sync_log"

    invoke-virtual {p1, p2, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1916
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "DELETE FROM online_sync_log WHERE rowid IN (SELECT rowid FROM online_sync_log ORDER BY rowid DESC LIMIT 50,-1)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1918
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1920
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1924
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    const-string p1, "message"

    .line 1926
    invoke-virtual {p3, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1927
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "INSERT INTO delete_log (message) VALUES (?)"

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    invoke-virtual {p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1929
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "DELETE FROM delete_log WHERE rowid IN (SELECT rowid FROM delete_log ORDER BY rowid DESC LIMIT 100,-1)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1931
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1933
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catchall_1
    move-exception p1

    .line 1920
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    .line 1898
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_2
    const-string p1, "message"

    .line 1900
    invoke-virtual {p3, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1901
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string p3, "INSERT INTO sync_log (time, message) VALUES (strftime(\'%Y-%m-%d %H:%M:%f\',\'now\'),?)"

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    invoke-virtual {p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1904
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "DELETE FROM sync_log WHERE rowid IN (SELECT rowid FROM sync_log ORDER BY rowid DESC LIMIT 100,-1)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1906
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1908
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_2
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    .line 1892
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "restore_list"

    invoke-virtual {p1, p2, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-lez p3, :cond_5

    .line 1894
    sget-object p3, Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList;->a:Landroid/net/Uri;

    invoke-static {p3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_0

    .line 1885
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "online_sync_info"

    invoke-virtual {p1, p2, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-lez p3, :cond_5

    .line 1887
    sget-object p3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$OnlineSyncInfo;->a:Landroid/net/Uri;

    .line 1888
    invoke-static {p3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_0

    .line 1879
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "smusic_db_info"

    invoke-virtual {p1, p2, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-lez p3, :cond_5

    .line 1881
    sget-object p3, Lcom/samsung/android/app/music/provider/MusicDBInfo$DBSyncInfo;->a:Landroid/net/Uri;

    invoke-static {p3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_0

    .line 1972
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "dlna_open_intent_table"

    invoke-virtual {p1, p2, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-lez p3, :cond_5

    .line 1975
    sget-object p3, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContentsExtra;->CONTENT_URI:Landroid/net/Uri;

    .line 1976
    invoke-static {p3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_0

    .line 1966
    :pswitch_7
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "dlna_dmr_table"

    invoke-virtual {p1, p2, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-lez p3, :cond_5

    .line 1968
    sget-object p3, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Renderer;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_0

    .line 1960
    :pswitch_8
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "dlna_dms_table"

    invoke-virtual {p1, p2, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-lez p3, :cond_5

    .line 1962
    sget-object p3, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Server;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_0

    .line 1945
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "album_art"

    const-string v1, "_data"

    invoke-virtual {p2, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p2

    cmp-long v0, p2, v2

    if-lez v0, :cond_5

    .line 1948
    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 1938
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-lez p3, :cond_5

    .line 1940
    sget-object p3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->d:Landroid/net/Uri;

    .line 1941
    invoke-static {p3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 1871
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "media_db_backup"

    invoke-virtual {p1, p2, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-lez p3, :cond_5

    .line 1873
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://com.sec.android.app.music/media_db_backup/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 1980
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "dlna_album_art"

    invoke-virtual {p1, p2, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-lez p3, :cond_5

    .line 1982
    sget-object p3, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents$AlbumArt;->CONTENT_URI:Landroid/net/Uri;

    .line 1983
    invoke-static {p3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    :cond_4
    const-string p1, "source_id"

    .line 1952
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1953
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "dlna_dms_contents_table"

    invoke-virtual {p1, p2, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-lez p3, :cond_5

    .line 1955
    sget-object p3, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents;->CONTENT_URI:Landroid/net/Uri;

    .line 1956
    invoke-static {p3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    :cond_5
    :goto_0
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xd2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11

    .line 878
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "grouporder"

    const-string v1, "count(*) AS count"

    .line 883
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "grouporder"

    const/4 v8, 0x0

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 884
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 887
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 888
    new-array v2, v1, [I

    .line 889
    new-array v3, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    .line 892
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 893
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aput v6, v2, v5

    const/4 v6, 0x1

    .line 894
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 896
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 898
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "index_grouporder"

    .line 899
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v1, "index_counts"

    .line 900
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3

    .line 634
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDcfAlbumArt : albumId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", albumArtData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->i:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p5, :cond_0

    .line 639
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 640
    invoke-static {p6}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    :try_start_1
    invoke-static {v1, p5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    :try_start_2
    monitor-exit v0

    return-object p5

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 649
    :catch_0
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/app/music/provider/MilkAlbumArtWriter;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 651
    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private a(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2636
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;

    .line 2637
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    .line 2161
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2164
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2165
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v0, 0x2e

    .line 2169
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 2171
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 2432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "si:"

    .line 2433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_md:"

    .line 2434
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_ca:"

    .line 2435
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2436
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2446
    :cond_0
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, "*"

    .line 506
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 508
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 509
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 511
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :goto_1
    const-string p1, " FROM ("

    .line 513
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string p0, " WHERE "

    .line 515
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p3, :cond_3

    const-string p0, " ORDER BY "

    .line 518
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz p4, :cond_4

    const-string p0, " LIMIT "

    .line 521
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/ContentValues;)V
    .locals 5

    const-string v0, "album_id"

    .line 1183
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    const-string v0, "album_id"

    .line 1185
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_0
    const-string v0, "artist_id"

    .line 1188
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1189
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    const-string v0, "artist_id"

    .line 1190
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1

    const-string v0, "drm_type"

    .line 2675
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2677
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, ".mdrm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 2678
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2680
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_0
    const-string v0, "drm_type"

    .line 2682
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "source_id"

    .line 2251
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "title_unique_key"

    .line 2252
    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2276
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2278
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/PinyinUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/ContentValues;Z)V
    .locals 9

    const-string v0, "track"

    .line 2657
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "track"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "_size"

    .line 2658
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    const-string v2, "_size"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_1

    :cond_1
    move-wide v5, v3

    :goto_1
    const-string v2, "duration"

    .line 2659
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "duration"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_2

    :cond_2
    move-wide v7, v3

    :goto_2
    if-nez v0, :cond_3

    cmp-long v2, v5, v3

    if-nez v2, :cond_3

    cmp-long v2, v7, v3

    if-nez v2, :cond_3

    const-string p2, "_data"

    .line 2665
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "local_track_id"

    .line 2666
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    :cond_3
    const-string v2, "local_track_id"

    const-string v3, "%d@%d@%d"

    const/4 v4, 0x3

    .line 2668
    new-array v4, v4, [Ljava/lang/Object;

    if-eqz p2, :cond_4

    rem-int/lit16 v0, v0, 0x3e8

    .line 2669
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v1

    const/4 p2, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, p2

    const/4 p2, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, p2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2668
    invoke-virtual {p1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 2831
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS hearts_backup AS SELECT * FROM hearts WHERE category_type IN (65540, 65538, 65539)"

    .line 2838
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE hearts_backup SET category_id=(SELECT _id FROM audio_playlists WHERE source_playlist_id=category_id) WHERE category_id > 0 AND category_type=65540"

    .line 2844
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE hearts_backup SET category_id=(SELECT album_id FROM albums WHERE source_album_id=category_id) WHERE category_id > 0 AND category_type=65538"

    .line 2850
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE hearts_backup SET category_id=(SELECT artist_id FROM artists WHERE source_artist_id=category_id) WHERE category_id > 0 AND category_type=65539"

    .line 2856
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE FROM hearts WHERE category_type IN (65540, 65538, 65539)"

    .line 2860
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR IGNORE INTO hearts SELECT * FROM hearts_backup WHERE category_id IS NOT NULL"

    .line 2864
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2867
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2869
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2284
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "album_id"

    .line 2285
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "source_album_id"

    .line 2286
    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "album_art_location"

    .line 2287
    invoke-virtual {v0, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "album_art"

    const/4 p3, 0x0

    .line 2288
    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    if-nez p2, :cond_0

    .line 1860
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 1862
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/net/Uri;I)V
    .locals 1

    const/16 v0, 0x2710

    if-lt p2, v0, :cond_0

    .line 1606
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "content://com.sec.android.app.music/audio"

    .line 1607
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 1606
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 1610
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/16 v0, 0x2f

    .line 2178
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 2180
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "_display_name"

    .line 2182
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/database/Cursor;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 2452
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 2453
    invoke-interface {p1, p5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p5

    invoke-interface {p1, p5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string p5, "<unknown>"

    .line 2454
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p5, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    const-string p3, "<unknown>"

    .line 2455
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_2

    const-wide/16 p3, 0x0

    cmp-long p3, v0, p3

    if-nez p3, :cond_1

    if-eqz p6, :cond_1

    .line 2457
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p3, 0x1

    :goto_2
    if-eqz p2, :cond_5

    const-string p2, "album_artist"

    .line 2461
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p3, :cond_4

    if-nez p1, :cond_3

    if-eqz p7, :cond_3

    goto :goto_3

    :cond_3
    const/4 p3, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 p3, 0x1

    :cond_5
    :goto_4
    return p3
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 2698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2701
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 2702
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2705
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 2706
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private static a(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 853
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 858
    array-length v2, p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    add-int v3, v0, v2

    .line 859
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_2

    .line 861
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 864
    invoke-static {p1, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object v3
.end method

.method public static a([Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 531
    :cond_0
    array-length v1, p0

    :goto_0
    add-int v2, p1, v1

    .line 533
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_1

    .line 535
    aput-object p2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-lez v1, :cond_2

    sub-int/2addr v2, p1

    .line 538
    invoke-static {p0, v0, v3, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-object v3
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 11

    .line 1030
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "delete_before_insert"

    .line 1032
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "delete"

    .line 1033
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "now_playing_queue_map"

    .line 1034
    invoke-virtual {p1, v1, v0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "SELECT ifnull(max(play_order), 0)  FROM now_playing_queue_map"

    .line 1038
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1042
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1043
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1044
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    const-string v3, "INSERT INTO now_playing_queue_map (audio_id, play_order) VALUES (?,?)"

    .line 1050
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1051
    :try_start_1
    array-length v0, p3

    .line 1052
    array-length v4, p3

    move v5, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v6, p3, v1

    const-string v7, "audio_id"

    .line 1054
    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    const/4 v9, 0x1

    .line 1055
    invoke-virtual {v3, v9, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const-string v7, "play_order"

    .line 1058
    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    move v6, v5

    goto :goto_2

    .line 1066
    :cond_2
    instance-of v7, v6, Ljava/lang/Number;

    if-eqz v7, :cond_3

    .line 1067
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    move v10, v6

    move v6, v5

    move v5, v10

    goto :goto_2

    :cond_3
    move v6, v5

    const/4 v5, 0x0

    :goto_2
    const/4 v7, 0x2

    int-to-long v8, v5

    .line 1070
    invoke-virtual {v3, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1072
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1073
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    add-int/lit8 v1, v1, 0x1

    move v5, v6

    goto :goto_1

    .line 1076
    :cond_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1078
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v3, :cond_5

    .line 1080
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1083
    :cond_5
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1084
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_6
    return v0

    :catchall_0
    move-exception p2

    goto :goto_3

    :catchall_1
    move-exception p2

    move-object v3, v0

    .line 1078
    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v3, :cond_7

    .line 1080
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_7
    throw p2
.end method

.method private b(Landroid/net/Uri;ILandroid/content/ContentValues;)I
    .locals 6

    const/16 v0, 0x136

    if-eq p2, v0, :cond_2

    const/16 p1, 0x140

    if-eq p2, p1, :cond_1

    const/16 p1, 0x14a

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_2

    .line 2585
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result p1

    goto :goto_2

    .line 2580
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "source_album_id="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "source_album_id"

    .line 2581
    invoke-virtual {p3, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2582
    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "album_art"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    :cond_2
    const-string p2, "source_id"

    .line 2570
    invoke-virtual {p3, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2571
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "source_id="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "source_id"

    .line 2572
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v4, p2

    goto :goto_1

    .line 2574
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_id="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_id"

    .line 2575
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 2577
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    :goto_2
    return p1
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)J
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p2

    const-string v1, "album"

    .line 1269
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "album_artist"

    .line 1270
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "album_id"

    .line 1271
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1281
    iget-object v8, v15, Lcom/samsung/android/app/music/provider/MusicProvider;->a:Ljava/util/HashMap;

    monitor-enter v8

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v7

    move-object v4, v11

    move/from16 v6, p4

    .line 1282
    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 1283
    iget-object v1, v15, Lcom/samsung/android/app/music/provider/MusicProvider;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1284
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1292
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "albums"

    const-string v4, "album_unique_key"

    const-string v5, "album_key"

    const-string v6, "album"

    const-string v8, "source_album_id"

    const/4 v12, 0x0

    .line 1286
    iget-object v13, v15, Lcom/samsung/android/app/music/provider/MusicProvider;->a:Ljava/util/HashMap;

    .line 1290
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p2

    move/from16 v16, p3

    .line 1287
    invoke-direct/range {v1 .. v16}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Integer;Landroid/content/ContentValues;Z)J

    move-result-wide v0

    :goto_1
    return-wide v0

    :catchall_0
    move-exception v0

    .line 1284
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b()Landroid/content/UriMatcher;
    .locals 1

    .line 78
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    return-object v0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13

    .line 810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    move-object v12, v1

    move-object/from16 v1, p3

    .line 812
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    if-nez v2, :cond_0

    const-string v3, "match LIKE ? ESCAPE \'\\\'"

    :goto_1
    move-object v12, v3

    goto :goto_2

    .line 816
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " AND match LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "bixby_total_search"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v12

    move-object/from16 v7, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 823
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 825
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doBixbySearchInternalStep2 return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", where "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", selectionArgs :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private b(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2646
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;

    .line 2647
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2715
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "bucket_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "album_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "music_album_artist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "artist_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "composer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    const-string v0, "genre"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v0, "audio"

    .line 2760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_0
    const-string p1, "music_genres_view"

    .line 2754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Genres;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Genres;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2755
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_1
    const-string p1, "music_folders_view"

    .line 2748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2749
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_2
    const-string p1, "music_artist_info"

    .line 2742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->c:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2743
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_3
    const-string p1, "music_album_artist_view"

    .line 2736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtists;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtists;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2737
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_4
    const-string p1, "music_album_info"

    const-string v0, "\\byear_name\\b"

    .line 2724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "year_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2725
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2728
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Artists;->c:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2731
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_5
    const-string p1, "music_composers_view"

    .line 2718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Composers;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Composers;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2719
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2764
    :goto_2
    sget-object p2, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeSortOrderFromSelectionGroup () - newSortOrder : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x54645c39 -> :sswitch_5
        -0x23b93ee0 -> :sswitch_4
        0x223e7913 -> :sswitch_3
        0x252b72f1 -> :sswitch_2
        0x5b51a8eb -> :sswitch_1
        0x6d80e790 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/content/ContentValues;)V
    .locals 1

    const-string v0, "album_art_location"

    .line 1806
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "album"

    .line 1807
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "album_artist"

    .line 1808
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "album_key"

    .line 1809
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "source_album_id"

    .line 1810
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "artist"

    .line 1812
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "artist_key"

    .line 1813
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "source_artist_id"

    .line 1814
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "validity"

    .line 1816
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "track_id"

    .line 1817
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/ContentValues;Z)V
    .locals 7

    const-string v0, "track"

    .line 2687
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "_size"

    .line 2688
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    .line 2689
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "local_track_id"

    const-string v4, "%d@%d@%d"

    const/4 v5, 0x3

    .line 2693
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz p2, :cond_1

    .line 2694
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    rem-int/lit16 p2, p2, 0x3e8

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v6

    const/4 p2, 0x1

    aput-object v1, v5, p2

    const/4 p2, 0x2

    aput-object v2, v5, p2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2693
    invoke-virtual {p1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2293
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "source_album_id"

    .line 2294
    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "album_art_location"

    .line 2295
    invoke-virtual {v0, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "album_id="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "album_art"

    const/4 p4, 0x0

    .line 2297
    invoke-virtual {p1, p3, v0, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private b(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "bucket_id"

    .line 2186
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "bucket_display_name"

    .line 2187
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2189
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2191
    new-instance p1, Ljava/io/File;

    const-string v0, "/"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2193
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2194
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "bucket_id"

    .line 2197
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bucket_display_name"

    .line 2198
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 6

    const-string v0, "delete_before_insert"

    .line 1091
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v1, "delete"

    .line 1094
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "now_playing_queue_unique"

    const/4 v1, 0x0

    .line 1095
    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1097
    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    .line 1098
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO now_playing_queue_unique (audio_id, recent_order) VALUES ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "audio_id"

    .line 1100
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "recent_order"

    .line 1101
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1098
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1103
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1104
    array-length p3, p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1108
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1109
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_2
    return p3

    :catchall_0
    move-exception p2

    .line 1106
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p2
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)J
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p2

    const-string v1, "artist"

    .line 1304
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "artist_id"

    .line 1309
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1310
    iget-object v1, v15, Lcom/samsung/android/app/music/provider/MusicProvider;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 1311
    :try_start_0
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v15, v9, v12, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v10

    .line 1312
    iget-object v2, v15, Lcom/samsung/android/app/music/provider/MusicProvider;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1313
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1320
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "artists"

    const-string v4, "artist_unique_key"

    const-string v5, "artist_key"

    const-string v6, "artist"

    const-string v8, "source_artist_id"

    const/4 v11, 0x0

    .line 1315
    iget-object v13, v15, Lcom/samsung/android/app/music/provider/MusicProvider;->b:Ljava/util/HashMap;

    .line 1318
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v7, v12

    move-object/from16 v15, p2

    move/from16 v16, p3

    .line 1315
    invoke-direct/range {v1 .. v16}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Integer;Landroid/content/ContentValues;Z)J

    move-result-wide v0

    :goto_1
    return-wide v0

    :catchall_0
    move-exception v0

    .line 1313
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2771
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "bucket_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "album_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "music_album_artist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "artist_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "composer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_5
    const-string v0, "genre"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string p1, "music_genres_view"

    .line 2805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " LEFT OUTER JOIN "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " USING ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "genre"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_2

    :pswitch_1
    const-string p1, "music_folders_view"

    .line 2800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " LEFT OUTER JOIN "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " USING ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "bucket_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_2

    :pswitch_2
    const-string p1, "music_album_artist_view"

    .line 2793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "music_album_artist"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "artist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_2

    :pswitch_3
    const-string p1, "music_artist_info"

    .line 2786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "artist_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :pswitch_4
    const-string p1, "music_album_info"

    .line 2779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "album_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :pswitch_5
    const-string p1, "music_composers_view"

    .line 2774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " LEFT OUTER JOIN "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " USING ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "composer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    return-object p2

    :sswitch_data_0
    .sparse-switch
        -0x54645c39 -> :sswitch_5
        -0x23b93ee0 -> :sswitch_4
        0x223e7913 -> :sswitch_3
        0x252b72f1 -> :sswitch_2
        0x5b51a8eb -> :sswitch_1
        0x6d80e790 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "composer"

    .line 2202
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2203
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    const-string v0, "composer"

    const-string v1, "<unknown>"

    .line 2204
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private d(Landroid/content/ContentValues;)V
    .locals 6

    const-string v0, "year"

    .line 2209
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "year_name"

    .line 2213
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "year"

    .line 2214
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2217
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2218
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2219
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_1

    const/4 v3, 0x0

    .line 2220
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v3, "year_name"

    .line 2223
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x76c

    if-lt v4, v5, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 2224
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "<unknown>"

    .line 2222
    :goto_0
    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 2226
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertYearToYearName yearStr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "year_name"

    const-string v1, "<unknown>"

    .line 2227
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private e(Landroid/content/ContentValues;)V
    .locals 3

    const-string v0, "most_played"

    .line 2236
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "most_played"

    .line 2237
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v0, "recently_played"

    .line 2240
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "recently_played"

    .line 2241
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string v0, "recently_added_remove_flag"

    .line 2244
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "recently_added_remove_flag"

    .line 2245
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return-void
.end method

.method private f(Landroid/content/ContentValues;)V
    .locals 2

    .line 2259
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->l_:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "title"

    const-string v1, "title_pinyin"

    .line 2262
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "music_album_artist"

    const-string v1, "music_album_artist_pinyin"

    .line 2263
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "genre"

    const-string v1, "genre_name_pinyin"

    .line 2265
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "composer"

    const-string v1, "composer_pinyin"

    .line 2267
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_display_name"

    const-string v1, "_display_name_pinyin"

    .line 2269
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bucket_display_name"

    const-string v1, "bucket_display_name_pinyin"

    .line 2270
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)Landroid/content/ContentValues;
    .locals 6
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 1126
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;IJ)Landroid/content/ContentValues;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1129
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    return-object p1

    :cond_0
    const-string p3, "audio_meta"

    const/4 v0, 0x0

    .line 1132
    invoke-virtual {p1, p3, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-string p1, "_id"

    .line 1133
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p2
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)Landroid/content/ContentValues;
    .locals 0
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1261
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/provider/MusicProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)J

    move-result-wide p1

    .line 1262
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    const-string p4, "album_id"

    .line 1263
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p3
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)Landroid/content/ContentValues;
    .locals 12
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "source_id"

    .line 1146
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "source_id=?"

    const-string v2, "audio_meta"

    const-string v1, "_id"

    .line 1148
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1150
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1151
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v10, v4

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v3, p1

    .line 1148
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v3, :cond_0

    .line 1153
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {v3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw p1

    :cond_2
    move-wide v10, v1

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-wide v8, v10

    .line 1155
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;IJ)Landroid/content/ContentValues;

    move-result-object p2

    if-nez p2, :cond_4

    .line 1158
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    return-object p1

    :cond_4
    cmp-long p3, v10, v1

    if-nez p3, :cond_5

    const-string p3, "audio_meta"

    .line 1163
    invoke-virtual {p1, p3, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    goto :goto_3

    .line 1169
    :cond_5
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/content/ContentValues;)V

    const-string p3, "audio_meta"

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, p2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_3
    const-string p1, "_id"

    .line 1178
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p2
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 933
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bulkInsert uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 936
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    const/16 v3, 0x12c

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2775

    if-eq v2, v3, :cond_3

    const/16 v3, 0x283d

    if-eq v2, v3, :cond_2

    const/16 v3, 0x28ab

    if-eq v2, v3, :cond_1

    .line 956
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 958
    invoke-interface {v3, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;->a(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p2

    goto :goto_0

    .line 960
    :cond_0
    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/net/Uri;[Landroid/content/ContentValues;I)I

    move-result p2

    goto :goto_0

    .line 950
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v2, p1, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->c(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p2

    goto :goto_0

    .line 947
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v2, p1, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p2

    goto :goto_0

    .line 940
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v2, p1, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p2

    goto :goto_0

    .line 944
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p2

    goto :goto_0

    .line 953
    :cond_5
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->a([Landroid/content/ContentValues;)I

    move-result p2

    .line 964
    :goto_0
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bulkInsert : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " items are inserted, takes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms, uri "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 964
    invoke-static {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)J
    .locals 15

    move-object/from16 v0, p2

    .line 1201
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "source_id"

    .line 1202
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    .line 1203
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    move/from16 v6, p3

    if-eq v6, v5, :cond_7

    .line 1204
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v8, "audio"

    const-string v5, "_id"

    const-string v7, "artist_id"

    .line 1216
    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "local_track_id=? AND cp_attrs=524296"

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v11, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    .line 1220
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1221
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 1229
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v7, v0

    .line 1216
    :try_start_1
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v5, :cond_3

    if-eqz v7, :cond_2

    .line 1229
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v7, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    throw v1

    :cond_4
    if-eqz v5, :cond_5

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_5
    const-string v4, "source_id"

    .line 1232
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "local_track_id"

    .line 1233
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_data"

    .line 1234
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    .line 1235
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    const-string v4, "_display_name"

    .line 1236
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "virtual_artist"

    const-string v4, "artist"

    .line 1237
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "virtual_album"

    const-string v4, "album"

    .line 1238
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "artist"

    .line 1239
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v2, "album"

    .line 1240
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v2, "cp_attrs"

    .line 1241
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "drm_type"

    .line 1242
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v2, "drm_type"

    .line 1244
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1246
    :cond_6
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, p0

    invoke-direct {p0, v1, v3, v0}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "audio_meta"

    move-object/from16 v3, p1

    .line 1249
    invoke-virtual {v3, v0, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0

    :cond_7
    :goto_2
    move-object v2, p0

    .line 1205
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    const-string v1, "Necessary columns can\'t be null or empty."

    invoke-static {v4, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2596
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2597
    invoke-static {v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/MusicDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2599
    sget-object p1, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    const-string p2, "call : SQLiteDatabase is null"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const/4 v3, -0x1

    .line 2602
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x3d8c7e9e

    if-eq v4, v5, :cond_3

    const v5, 0x774af529

    if-eq v4, v5, :cond_2

    const v5, 0x79bbf520

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "exec_sql"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const-string v4, "update_heart_contents"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const-string v4, "update_folders_info"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x2

    :cond_4
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 2625
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->b(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2627
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 2621
    :pswitch_0
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_3

    .line 2617
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_3

    :pswitch_2
    if-eqz p3, :cond_5

    const-string p1, "selectionArgs"

    .line 2606
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_6

    .line 2608
    array-length p3, p1

    if-lez p3, :cond_6

    .line 2609
    invoke-virtual {v1, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 2611
    :cond_6
    invoke-virtual {v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2613
    :goto_2
    sget-object p1, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Method.EXEC_SQL "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v2

    .line 2629
    :cond_7
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported call: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1453
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " selection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x283d

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 1519
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1521
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1523
    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid URI "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1474
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 1476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " AND ("

    .line 1477
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v6, v1

    .line 1480
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p0

    move-object v5, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_0

    .line 1471
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_0

    .line 1468
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "restore_list"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_0

    .line 1464
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "online_sync_info"

    .line 1465
    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 1461
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "smusic_db_info"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 1498
    :pswitch_5
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "dlna_open_intent_table"

    .line 1499
    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 1494
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "dlna_dmr_table"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 1490
    :pswitch_7
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "dlna_dms_table"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 1483
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "now_playing_queue_map"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 1503
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1505
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "dlna_dms_contents_table"

    .line 1506
    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1507
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "dlna_album_art"

    .line 1508
    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1509
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "dlna_dms_table"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1511
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "dlna_dmr_table"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    add-int/2addr p2, v1

    .line 1513
    iget-object p3, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1515
    iget-object p3, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    .line 1487
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "dlna_dms_contents_table"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 1526
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(Landroid/net/Uri;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 1527
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/net/Uri;I)V

    :cond_5
    return p2

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2775
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 2826
    sget-object p1, Lcom/samsung/android/app/music/provider/MusicProviderDumpHelper;->a:Lcom/samsung/android/app/music/provider/MusicProviderDumpHelper;

    .line 2827
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "MUSIC_PROVIDER"

    invoke-virtual {p1, p3, p2, v0}, Lcom/samsung/android/app/music/provider/MusicProviderDumpHelper;->a(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "vnd.android.cursor.dir/audio"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 913
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 918
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 920
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 922
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 924
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 925
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 926
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/provider/MusicProvider$NotifyHelper;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_1
    return-object p2
.end method

.method public onCreate()Z
    .locals 4

    .line 280
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 283
    invoke-static {v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/MusicDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    .line 285
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_0

    .line 286
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->a()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/music/provider/DaoMaster;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 287
    new-instance v1, Lcom/samsung/android/app/music/provider/MilkProvider;

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v0, v2, p0}, Lcom/samsung/android/app/music/provider/MilkProvider;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;)V

    .line 288
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->e:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/app/music/provider/PlaylistProvider;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v0, v3, p0}, Lcom/samsung/android/app/music/provider/PlaylistProvider;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->e:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/app/music/provider/FavoriteProvider;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v0, v3, p0}, Lcom/samsung/android/app/music/provider/FavoriteProvider;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->e:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/app/music/provider/SpotifyProvider;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v0, v3, p0}, Lcom/samsung/android/app/music/provider/SpotifyProvider;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->e:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v0, v3, p0}, Lcom/samsung/android/app/music/provider/BackupRestoreProvider;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->e:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    .line 297
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a(Landroid/content/Context;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 12
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 578
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x2974

    if-eq v0, v2, :cond_0

    .line 582
    sget-object p1, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    const-string p2, "openFile : only album art uri is vaild request"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 586
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string v2, "source_album_id"

    const-string v3, "album_art_location"

    const-string v4, "_data"

    .line 587
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "album_id=?"

    const/4 v2, 0x1

    .line 590
    new-array v9, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v9, v3

    .line 595
    sget-object v4, Lcom/samsung/android/app/music/provider/MusicProvider;->h:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->lock(Ljava/lang/Object;)V

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p1

    .line 596
    :try_start_0
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/app/music/provider/MusicProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_6

    .line 597
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_2

    .line 601
    :cond_1
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 602
    sget-object v6, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openFile : albumArtLocation - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "mediaStore"

    .line 603
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 604
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 605
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v5, Lcom/samsung/android/app/music/provider/MusicProvider;->g:Landroid/net/Uri;

    .line 606
    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 605
    invoke-static {v0, v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    .line 607
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openFile return pfd is returned from MediaProvider : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v1, p2

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_4

    const-string v3, "musicProvider"

    .line 612
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 614
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtLocationExtra;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "mdrm"

    .line 615
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v2, "_data"

    .line 616
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 617
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v5, p0

    move-object v11, p2

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    goto :goto_0

    .line 619
    :cond_3
    sget-object p2, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openFile : invalid albumArtLocation:location : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 622
    :cond_4
    sget-object p2, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openFile : invalid albumArtLocation : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v4, :cond_5

    .line 624
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 625
    :cond_5
    sget-object p2, Lcom/samsung/android/app/music/provider/MusicProvider;->h:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->unlock(Ljava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_0
    move-exception p2

    move-object v1, p2

    goto :goto_3

    .line 598
    :cond_6
    :goto_2
    :try_start_3
    sget-object p2, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    const-string v0, "openFile : no album info"

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_7

    .line 624
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 625
    :cond_7
    sget-object p2, Lcom/samsung/android/app/music/provider/MusicProvider;->h:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->unlock(Ljava/lang/Object;)V

    return-object v1

    .line 596
    :goto_3
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    if-eqz v4, :cond_9

    if-eqz v1, :cond_8

    .line 624
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_7
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_9
    :goto_5
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p2

    .line 625
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->h:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v10, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    .line 311
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v11, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v11}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v0, "limit"

    .line 314
    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v0, "groupBy"

    .line 316
    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 321
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v1, v3}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x1

    sparse-switch v8, :sswitch_data_0

    move-object/from16 v9, p3

    move-object/from16 v7, p5

    .line 479
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 481
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v1, "music_composers_view"

    .line 464
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 461
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v10, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v2, p1

    move v3, v8

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_2
    const-string v1, "music_folders_view"

    .line 455
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "music_genres_view"

    .line 452
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    const-string v1, "album_art"

    .line 446
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v1, "album_id=?"

    .line 447
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 448
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->b:Landroid/net/Uri;

    .line 449
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 448
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_5
    const-string v1, "album_art"

    .line 443
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_6
    const-string v1, "music_album_info"

    .line 437
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v1, "_id=?"

    .line 438
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 439
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->a:Landroid/net/Uri;

    .line 440
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 439
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_7
    const-string v1, "music_album_info"

    .line 434
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_8
    const-string v1, "albums"

    .line 431
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_9
    const-string v1, "music_album_artist_view"

    .line 473
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_a
    const-string v1, "music_artist_info"

    .line 426
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_b
    const-string v1, "artists"

    .line 423
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_c
    const-string v1, "now_playing_queue_unique_view"

    .line 419
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    :goto_0
    :sswitch_d
    move-object/from16 v9, p3

    move-object/from16 v7, p5

    goto/16 :goto_3

    :sswitch_e
    const-string v1, "now_playing_queue_map"

    const-string v5, "audio"

    if-eqz v4, :cond_1

    .line 408
    :goto_1
    array-length v7, v4

    if-ge v2, v7, :cond_1

    .line 409
    aget-object v7, v4, v2

    const-string v8, "_id"

    .line 410
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 411
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "._id AS _id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 415
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "._id = audio_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 476
    :sswitch_f
    iget-object v1, v10, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_10
    const-string v2, "audio"

    .line 393
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 395
    invoke-direct {v10, v1, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 396
    invoke-direct {v10, v2, v4}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 397
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\b"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\\b"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v9, p3

    invoke-virtual {v9, v7, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, p5

    .line 399
    invoke-direct {v10, v1, v7}, Lcom/samsung/android/app/music/provider/MusicProvider;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-virtual {v11, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object/from16 v18, v1

    move-object v14, v2

    move-object v13, v4

    goto/16 :goto_4

    :sswitch_11
    move-object/from16 v9, p3

    move-object/from16 v7, p5

    const-string v1, "(SELECT * FROM audio_meta LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id )"

    .line 388
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_12
    move-object/from16 v9, p3

    move-object/from16 v7, p5

    const-string v1, "audio"

    .line 382
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v1, "_id=?"

    .line 383
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_13
    move-object/from16 v9, p3

    move-object/from16 v7, p5

    const-string v1, "audio"

    .line 377
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 364
    :sswitch_14
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 365
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 366
    iget-object v1, v10, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "nonotify"

    .line 368
    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "1"

    .line 369
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 370
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_3
    return-object v0

    :sswitch_15
    move-object/from16 v7, p5

    .line 471
    iget-object v1, v10, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move-object v2, v11

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_16
    move-object/from16 v9, p3

    move-object/from16 v7, p5

    .line 468
    iget-object v1, v10, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    .line 469
    invoke-static {v0, v6}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v2, v11

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v9, v19

    .line 468
    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :sswitch_17
    move-object/from16 v9, p3

    move-object/from16 v7, p5

    const-string v1, "restore_list"

    .line 330
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_18
    move-object/from16 v9, p3

    move-object/from16 v7, p5

    const-string v1, "online_sync_info"

    .line 327
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_19
    move-object/from16 v9, p3

    move-object/from16 v7, p5

    const-string v1, "smusic_db_info"

    .line 324
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_1a
    move-object/from16 v9, p3

    move-object/from16 v7, p5

    const-string v1, "dlna_album_art"

    .line 346
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_1b
    move-object/from16 v9, p3

    move-object/from16 v7, p5

    const-string v1, "dlna_open_intent_table"

    .line 358
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v1, "_id=?"

    .line 359
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :sswitch_1c
    move-object/from16 v9, p3

    move-object/from16 v7, p5

    const-string v1, "dlna_open_intent_table"

    .line 355
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_1d
    move-object/from16 v9, p3

    move-object/from16 v7, p5

    const-string v1, "dlna_dmr_table"

    .line 352
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_1e
    move-object/from16 v9, p3

    move-object/from16 v7, p5

    const-string v1, "dlna_dms_table"

    .line 349
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_1f
    move-object/from16 v9, p3

    move-object/from16 v7, p5

    const-string v1, "dlna_dms_contents_table"

    .line 341
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v1, "_id=?"

    .line 342
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :sswitch_20
    move-object/from16 v9, p3

    move-object/from16 v7, p5

    const-string v1, "dlna_dms_contents_table"

    .line 333
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 334
    :goto_2
    array-length v1, v4

    if-ge v2, v1, :cond_5

    .line 335
    aget-object v1, v4, v2

    const-string v5, "cp_attrs"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "131076 AS cp_attrs"

    .line 336
    aput-object v1, v4, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    move-object v13, v4

    move-object/from16 v18, v7

    move-object v14, v9

    .line 486
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 487
    iget-object v12, v10, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    .line 488
    invoke-static {v0, v6}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz v0, :cond_6

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_6
    return-object v0

    .line 483
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_20
        0x5 -> :sswitch_1f
        0x6 -> :sswitch_1e
        0x7 -> :sswitch_1d
        0x8 -> :sswitch_1c
        0x9 -> :sswitch_1b
        0xb -> :sswitch_1a
        0xc8 -> :sswitch_19
        0xc9 -> :sswitch_18
        0xca -> :sswitch_17
        0x192 -> :sswitch_16
        0x193 -> :sswitch_16
        0x194 -> :sswitch_15
        0x271a -> :sswitch_14
        0x2775 -> :sswitch_13
        0x2776 -> :sswitch_12
        0x2777 -> :sswitch_11
        0x277e -> :sswitch_10
        0x27ed -> :sswitch_f
        0x283d -> :sswitch_e
        0x28ab -> :sswitch_c
        0x2905 -> :sswitch_b
        0x2906 -> :sswitch_a
        0x2907 -> :sswitch_d
        0x290f -> :sswitch_9
        0x2969 -> :sswitch_8
        0x296a -> :sswitch_7
        0x296b -> :sswitch_6
        0x2973 -> :sswitch_5
        0x2974 -> :sswitch_4
        0x29cd -> :sswitch_3
        0x2a31 -> :sswitch_2
        0x2a32 -> :sswitch_1
        0x2a3b -> :sswitch_1
        0x2a3c -> :sswitch_1
        0x2a95 -> :sswitch_0
    .end sparse-switch
.end method

.method public shutdown()V
    .locals 2

    .line 303
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    const-string v1, "Shutdown()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-super {p0}, Landroid/content/ContentProvider;->shutdown()V

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1617
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " selection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->d:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/4 v0, 0x4

    if-eq v4, v0, :cond_5

    const/16 v0, 0x2905

    if-eq v4, v0, :cond_4

    const/16 v0, 0x2969

    if-eq v4, v0, :cond_3

    const/16 v0, 0x2a32

    if-eq v4, v0, :cond_2

    const/16 v0, 0x2a3b

    if-eq v4, v0, :cond_2

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .line 1673
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1675
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1677
    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid URI "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1631
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_1

    .line 1633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " AND ("

    .line 1634
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1637
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    .line 1639
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1625
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/music/provider/MusicProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1627
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    move p3, v0

    goto :goto_0

    .line 1669
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "dlna_open_intent_table"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    .line 1665
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "dlna_dmr_table"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    .line 1661
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "dlna_dms_table"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    .line 1654
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/music/provider/FoldersDbHelper;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    .line 1647
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "albums"

    .line 1648
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    .line 1643
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "artists"

    .line 1644
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    .line 1657
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "dlna_dms_contents_table"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    .line 1680
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(Landroid/net/Uri;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 1681
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_6
    return p3

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2775
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
