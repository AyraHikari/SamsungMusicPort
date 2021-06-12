.class public Lcom/samsung/android/app/music/model/SimpleTrack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ARTIST_SEPARATOR:Ljava/lang/String; = ","

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/SimpleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID_ARTIST_ID:Ljava/lang/String; = "0"

.field private static final LOG_TAG:Ljava/lang/String; = "SimpleTrack"


# instance fields
.field albumArtBigUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        a = false
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "albumArtBigUrl"
        b = {
            "largeSizeAlbumArtUrl",
            "largeSizeImageUrl"
        }
    .end annotation
.end field

.field albumArtUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "albumArtUrl"
        b = {
            "imageUrl",
            "thumbImgUrl"
        }
    .end annotation
.end field

.field albumId:Ljava/lang/String;

.field albumTitle:Ljava/lang/String;

.field artistList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/artist/Artist;",
            ">;"
        }
    .end annotation
.end field

.field artistNames:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        a = false
    .end annotation
.end field

.field audioId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
        a = false
    .end annotation
.end field

.field audioType:Ljava/lang/String;

.field audioUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        a = false
    .end annotation
.end field

.field protected cpAttrs:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
        a = false
    .end annotation
.end field

.field private diskNo:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
        a = false
    .end annotation
.end field

.field explicit:I

.field private isCeleb:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        a = false
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "celebYn"
    .end annotation
.end field

.field private mDrmType:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
        a = false
    .end annotation
.end field

.field private mVirtualAudioId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
        a = false
    .end annotation
.end field

.field rankingBadge:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        a = false
    .end annotation
.end field

.field rankingChg:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
        a = false
    .end annotation
.end field

.field serviceStat:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        a = false
    .end annotation
.end field

.field titleYn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        a = false
    .end annotation
.end field

.field trackId:Ljava/lang/String;

.field private trackNo:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
        a = false
    .end annotation
.end field

.field trackTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 235
    new-instance v0, Lcom/samsung/android/app/music/model/SimpleTrack$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/SimpleTrack$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/SimpleTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioId:J

    const v0, 0x7fffffff

    .line 83
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->rankingChg:I

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->diskNo:I

    .line 99
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackNo:I

    const/4 v1, 0x0

    .line 102
    iput v1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->cpAttrs:I

    .line 105
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->mDrmType:I

    const-string v0, "0"

    .line 108
    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->isCeleb:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 599
    iput-wide v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->mVirtualAudioId:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioId:J

    const v0, 0x7fffffff

    .line 83
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->rankingChg:I

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->diskNo:I

    .line 99
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackNo:I

    const/4 v1, 0x0

    .line 102
    iput v1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->cpAttrs:I

    .line 105
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->mDrmType:I

    const-string v0, "0"

    .line 108
    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->isCeleb:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 599
    iput-wide v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->mVirtualAudioId:J

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioId:J

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioType:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackId:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackTitle:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumArtUrl:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumArtBigUrl:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumId:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumTitle:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioUrl:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->explicit:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->serviceStat:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->titleYn:Ljava/lang/String;

    .line 187
    sget-object v0, Lcom/samsung/android/app/music/model/artist/Artist;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->rankingChg:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->rankingBadge:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->diskNo:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackNo:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistNames:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->isCeleb:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioId:J

    const v0, 0x7fffffff

    .line 83
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->rankingChg:I

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->diskNo:I

    .line 99
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackNo:I

    const/4 v1, 0x0

    .line 102
    iput v1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->cpAttrs:I

    .line 105
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->mDrmType:I

    const-string v0, "0"

    .line 108
    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->isCeleb:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 599
    iput-wide v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->mVirtualAudioId:J

    .line 138
    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackTitle:Ljava/lang/String;

    .line 139
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    .line 140
    iget-object p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/app/music/model/artist/Artist;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/samsung/android/app/music/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iput-object p3, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumArtUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioId:J

    const v0, 0x7fffffff

    .line 83
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->rankingChg:I

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->diskNo:I

    .line 99
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackNo:I

    const/4 v1, 0x0

    .line 102
    iput v1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->cpAttrs:I

    .line 105
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->mDrmType:I

    const-string v0, "0"

    .line 108
    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->isCeleb:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 599
    iput-wide v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->mVirtualAudioId:J

    .line 145
    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackId:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackTitle:Ljava/lang/String;

    .line 147
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    .line 148
    iget-object p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/music/model/artist/Artist;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p4}, Lcom/samsung/android/app/music/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iput-object p3, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumArtUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioId:J

    const v0, 0x7fffffff

    .line 83
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->rankingChg:I

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->diskNo:I

    .line 99
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackNo:I

    const/4 v1, 0x0

    .line 102
    iput v1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->cpAttrs:I

    .line 105
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->mDrmType:I

    const-string v0, "0"

    .line 108
    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->isCeleb:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 599
    iput-wide v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->mVirtualAudioId:J

    .line 154
    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackId:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackTitle:Ljava/lang/String;

    .line 156
    iput-object p3, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumId:Ljava/lang/String;

    .line 157
    iput-object p4, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumTitle:Ljava/lang/String;

    .line 158
    iput-object p5, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioUrl:Ljava/lang/String;

    .line 159
    iput-object p6, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistNames:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioId:J

    const v0, 0x7fffffff

    .line 83
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->rankingChg:I

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->diskNo:I

    .line 99
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackNo:I

    const/4 v1, 0x0

    .line 102
    iput v1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->cpAttrs:I

    .line 105
    iput v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->mDrmType:I

    const-string v0, "0"

    .line 108
    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->isCeleb:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 599
    iput-wide v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->mVirtualAudioId:J

    .line 164
    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackId:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackTitle:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumArtUrl:Ljava/lang/String;

    .line 167
    iput-object p4, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumId:Ljava/lang/String;

    .line 168
    iput-object p5, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumTitle:Ljava/lang/String;

    .line 169
    iput-object p6, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioUrl:Ljava/lang/String;

    .line 170
    iput-object p7, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioType:Ljava/lang/String;

    .line 171
    iput-object p8, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistNames:Ljava/lang/String;

    return-void
.end method

.method public static convertToAlbum(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 668
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "album_id"

    const-string v2, "source_album_id"

    .line 669
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "album"

    const-string v2, "album"

    .line 670
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "album_artist"

    const-string v2, "album"

    .line 671
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "album_cp_attrs"

    const-string v2, "cp_attrs"

    .line 673
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 672
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static convertToAudioMeta(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 4

    .line 639
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "source_id"

    .line 640
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "source_id"

    .line 641
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_data"

    .line 642
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    const-string v2, "title"

    .line 643
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cp_attrs"

    const-string v2, "cp_attrs"

    .line 644
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "duration"

    const/4 v2, 0x0

    .line 645
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "explicit"

    const-string v3, "explicit"

    .line 646
    invoke-static {p0, v3, v2}, Lcom/samsung/android/app/music/provider/ContentValuesWrapper;->a(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "album_id"

    const-string v2, "source_album_id"

    .line 650
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "album"

    const-string v2, "album"

    .line 651
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "album_artist"

    const-string v2, "album"

    .line 652
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "album_cp_attrs"

    const-string v2, "cp_attrs"

    .line 653
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "artist_id"

    const-string v2, "source_artist_id"

    .line 657
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "artist"

    .line 658
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "artist"

    .line 659
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "artist_cp_attrs"

    const-string v2, "cp_attrs"

    .line 660
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "is_celeb"

    const-string v2, "is_celeb"

    .line 661
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static convertToAudioType(I)Ljava/lang/String;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const-string p0, "0"

    return-object p0

    :sswitch_0
    const-string p0, "0"

    return-object p0

    :sswitch_1
    const-string p0, "4"

    return-object p0

    :sswitch_2
    const-string p0, "3"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10001 -> :sswitch_2
        0x80001 -> :sswitch_1
        0x80002 -> :sswitch_0
        0x80008 -> :sswitch_2
    .end sparse-switch
.end method

.method public static convertToSimpleTrack(Lcom/samsung/android/app/music/model/SimpleTrack;)Lcom/samsung/android/app/music/model/SimpleTrack;
    .locals 10

    .line 197
    new-instance v9, Lcom/samsung/android/app/music/model/SimpleTrack;

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getAlbumTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getAudioUrl()Ljava/lang/String;

    move-result-object v6

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getAudioType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getArtistNames()Ljava/lang/String;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/music/model/SimpleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getImageBigUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/app/music/model/SimpleTrack;->setImageBigUrl(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getArtistList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/app/music/model/SimpleTrack;->setArtistList(Ljava/util/ArrayList;)V

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getExplicit()I

    move-result p0

    invoke-virtual {v9, p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->setExplicit(I)V

    return-object v9
.end method

.method public static convertToThumbnail(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 4

    .line 678
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "thumbnail_type"

    const/4 v2, 0x0

    .line 680
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 679
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "image_url"

    .line 681
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image_url_big"

    .line 682
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_0

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image_url_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-static {v1}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 686
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    const-string v1, "image_url_big"

    .line 690
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static createSimpleTrackFromTrackCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/model/SimpleTrack;
    .locals 8

    .line 734
    new-instance v0, Lcom/samsung/android/app/music/model/SimpleTrack;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/SimpleTrack;-><init>()V

    const-string v1, "source_id"

    .line 736
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    .line 737
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "album_id"

    .line 738
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "artist"

    .line 739
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "image_url_big"

    .line 740
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "image_url_middle"

    .line 741
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "image_url_small"

    .line 742
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz v5, :cond_0

    move-object p0, v5

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_1

    move-object p0, v6

    .line 746
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/SimpleTrack;->setTrackId(Ljava/lang/String;)V

    .line 747
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/model/SimpleTrack;->setTrackTitle(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/model/SimpleTrack;->setAlbumId(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/model/SimpleTrack;->setArtistNames(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->setImageUrl(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/model/SimpleTrack;->setImageBigUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public static from(Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;)Lcom/samsung/android/app/music/model/SimpleTrack;
    .locals 6

    .line 562
    new-instance v0, Lcom/samsung/android/app/music/model/SimpleTrack;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/SimpleTrack;-><init>()V

    .line 563
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->getTrackInfo()Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;->getTrackId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackId:Ljava/lang/String;

    .line 564
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->getTrackInfo()Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/milkstore/StoreMainTrackInfo;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackTitle:Ljava/lang/String;

    .line 565
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumArtUrl:Ljava/lang/String;

    .line 566
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->getImageBigUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumArtBigUrl:Ljava/lang/String;

    .line 567
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->getExplicit()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/music/model/SimpleTrack;->explicit:I

    .line 569
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->getAlbumInfo()Lcom/samsung/android/app/music/model/milkstore/StoreMainAlbumInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/milkstore/StoreMainAlbumInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumId:Ljava/lang/String;

    .line 570
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->getAlbumInfo()Lcom/samsung/android/app/music/model/milkstore/StoreMainAlbumInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/milkstore/StoreMainAlbumInfo;->getAlbumTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumTitle:Ljava/lang/String;

    .line 571
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    .line 572
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->getArtistList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/milkstore/StoreMainArtistInfo;

    .line 573
    iget-object v3, v0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/app/music/model/artist/Artist;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/milkstore/StoreMainArtistInfo;->getArtistId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/milkstore/StoreMainArtistInfo;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lcom/samsung/android/app/music/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 575
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->getRankingChg()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/music/model/SimpleTrack;->rankingChg:I

    .line 576
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/milkstore/StoreMainContent;->getRankingBadge()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/app/music/model/SimpleTrack;->rankingBadge:Ljava/lang/String;

    return-object v0
.end method

.method public static fromAudio(Landroid/database/Cursor;)Lcom/samsung/android/app/music/model/SimpleTrack;
    .locals 5

    .line 700
    new-instance v0, Lcom/samsung/android/app/music/model/SimpleTrack;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/SimpleTrack;-><init>()V

    const-string v1, "cp_attrs"

    .line 702
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 703
    invoke-static {v1}, Lcom/samsung/android/app/music/provider/CpAttrs;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "local_track_id"

    .line 704
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "source_id"

    .line 706
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "_id"

    .line 708
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/app/music/model/SimpleTrack;->setAudioId(J)V

    .line 709
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/model/SimpleTrack;->setTrackId(Ljava/lang/String;)V

    const-string v2, "title"

    .line 710
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/model/SimpleTrack;->setTrackTitle(Ljava/lang/String;)V

    const-string v2, "source_album_id"

    .line 711
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/model/SimpleTrack;->setAlbumId(Ljava/lang/String;)V

    const-string v2, "album"

    .line 712
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/model/SimpleTrack;->setAlbumTitle(Ljava/lang/String;)V

    .line 713
    invoke-static {v1}, Lcom/samsung/android/app/music/model/SimpleTrack;->convertToAudioType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/SimpleTrack;->setAudioType(Ljava/lang/String;)V

    const-string v1, "source_artist_id"

    .line 714
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "dummyArtistId"

    :cond_1
    const-string v2, "artist"

    .line 719
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "unknown"

    :cond_2
    const-string v3, ", "

    const-string v4, ","

    .line 724
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "::"

    const-string v4, ","

    .line 726
    invoke-static {v1, v3, v2, v4}, Lcom/samsung/android/app/music/model/artist/Artist;->createArtists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 725
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/SimpleTrack;->setArtistList(Ljava/util/ArrayList;)V

    const-string v1, "explicit"

    .line 729
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->setExplicit(I)V

    return-object v0
.end method

.method public static getImagePixelSize(Ljava/lang/String;)I
    .locals 0

    .line 696
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/ThumbnailUpdateHelper;->b(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getSourceArtistId()Ljava/lang/String;
    .locals 2

    .line 585
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getAudioType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getArtistId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasPlayableTrack(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Track:",
            "Lcom/samsung/android/app/music/model/SimpleTrack;",
            ">(",
            "Ljava/util/List<",
            "TTrack;>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 758
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 759
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/SimpleTrack;

    .line 760
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/SimpleTrack;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRankVisible(I)Z
    .locals 1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public convertArtistNameListToArray()[Ljava/lang/String;
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 315
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 316
    iget-object v2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/artist/Artist;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/artist/Artist;->getArtistName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 545
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/app/music/model/SimpleTrack;

    if-eqz v1, :cond_1

    .line 549
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/samsung/android/app/music/model/SimpleTrack;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public generateUnsignedHash(Ljava/lang/String;)J
    .locals 4

    .line 616
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/artist/Artist;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/artist/Artist;->getArtistID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 513
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getArtistIds()Ljava/lang/String;
    .locals 1

    const-string v0, ","

    .line 337
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getArtistIds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistIds(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 341
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 342
    iget-object v1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    .line 345
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 349
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/artist/Artist;

    .line 352
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/artist/Artist;->getArtistID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getArtistList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/artist/Artist;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 2

    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getArtistList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getArtistList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getArtistList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/artist/Artist;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/artist/Artist;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getArtistNameArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/artist/Artist;",
            ">;"
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getArtistNames()Ljava/lang/String;
    .locals 4

    .line 472
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistNames:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistNames:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 477
    iget-object v1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    const-string v0, ""

    .line 479
    iget-object v1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 481
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 482
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/artist/Artist;

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/artist/Artist;->getArtistName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 489
    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/model/SimpleTrack;->setArtistNames(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAudioId()J
    .locals 2

    .line 532
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioId:J

    return-wide v0
.end method

.method public getAudioType()Ljava/lang/String;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioType:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "0"

    return-object v0
.end method

.method public getAudioUrl()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCpAttrs()I
    .locals 2

    .line 440
    iget v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->cpAttrs:I

    if-nez v0, :cond_1

    .line 441
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getAudioType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x80002

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const v0, 0x80001

    return v0

    :pswitch_1
    const v0, 0x10001

    return v0

    :cond_0
    return v1

    .line 452
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->cpAttrs:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDiscNo()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->diskNo:I

    return v0
.end method

.method public getDisplayArtistName()Ljava/lang/String;
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ", "

    .line 324
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->convertArtistNameListToArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getExplicit()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->explicit:I

    return v0
.end method

.method public getImageBigUrl()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumArtBigUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumArtUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRankingBadge()Ljava/lang/String;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->rankingBadge:Ljava/lang/String;

    return-object v0
.end method

.method public getRankingChg()I
    .locals 1

    .line 367
    iget v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->rankingChg:I

    return v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackNo()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackNo:I

    return v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVirtualAudioId()J
    .locals 4

    .line 606
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->mVirtualAudioId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/model/SimpleTrack;->generateUnsignedHash(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->mVirtualAudioId:J

    .line 610
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->mVirtualAudioId:J

    return-wide v0
.end method

.method public hasAvailableAlbum()Z
    .locals 1

    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasAvailableArtist()Z
    .locals 1

    .line 299
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->isVariousArtist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAdvertisement()Z
    .locals 2

    const-string v0, "1"

    .line 422
    iget-object v1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "2"

    iget-object v1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isCelebTrack()Z
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->isCeleb:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isExplicit()Z
    .locals 2

    .line 272
    iget v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->explicit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLocalTrack()Z
    .locals 2

    const-string v0, "3"

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getAudioType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackId:Ljava/lang/String;

    const-string v1, "@"

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPlayable()Z
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->serviceStat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->serviceStat:Ljava/lang/String;

    const-string v2, "P"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->serviceStat:Ljava/lang/String;

    const-string v2, "H"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->serviceStat:Ljava/lang/String;

    const-string v2, "F"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public isRankVisible()Z
    .locals 1

    .line 359
    iget v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->rankingChg:I

    invoke-static {v0}, Lcom/samsung/android/app/music/model/SimpleTrack;->isRankVisible(I)Z

    move-result v0

    return v0
.end method

.method public isTitle()Z
    .locals 2

    const-string v0, "Y"

    .line 303
    iget-object v1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->titleYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVariousArtist()Z
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/artist/Artist;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/artist/Artist;->isVariousArtist()Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumTitle:Ljava/lang/String;

    return-void
.end method

.method public setArtistList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/artist/Artist;",
            ">;)V"
        }
    .end annotation

    .line 403
    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    return-void
.end method

.method public setArtistNameArray(Ljava/lang/String;)V
    .locals 5

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    const-string p1, "SimpleTrack"

    const-string v0, "setArtistNameArray names null"

    .line 500
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ","

    .line 503
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 504
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 505
    new-instance v3, Lcom/samsung/android/app/music/model/artist/Artist;

    const-string v4, "0"

    invoke-direct {v3, v4, v2}, Lcom/samsung/android/app/music/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setArtistNames(Ljava/lang/String;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistNames:Ljava/lang/String;

    return-void
.end method

.method public setAudioId(J)V
    .locals 0

    .line 528
    iput-wide p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioId:J

    return-void
.end method

.method public setAudioType(Ljava/lang/String;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioType:Ljava/lang/String;

    return-void
.end method

.method public setAudioUrl(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 464
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioUrl:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setCelebTrack(Ljava/lang/String;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->isCeleb:Ljava/lang/String;

    return-void
.end method

.method public setDiscNo(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->diskNo:I

    return-void
.end method

.method public setExplicit(I)V
    .locals 0

    .line 399
    iput p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->explicit:I

    return-void
.end method

.method public setForceAudioUrlNull()V
    .locals 1

    const/4 v0, 0x0

    .line 581
    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioUrl:Ljava/lang/String;

    return-void
.end method

.method public setImageBigUrl(Ljava/lang/String;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumArtBigUrl:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumArtUrl:Ljava/lang/String;

    return-void
.end method

.method public setServiceStat(Ljava/lang/String;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->serviceStat:Ljava/lang/String;

    return-void
.end method

.method public setTrackId(Ljava/lang/String;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackId:Ljava/lang/String;

    return-void
.end method

.method public setTrackNo(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackNo:I

    return-void
.end method

.method public setTrackTitle(Ljava/lang/String;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackTitle:Ljava/lang/String;

    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .line 620
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 621
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "source_id"

    .line 622
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "source_artist_id"

    const-string v2, "::"

    .line 623
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/model/SimpleTrack;->getArtistIds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "artist"

    .line 624
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getDisplayArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "source_album_id"

    .line 625
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "album"

    .line 626
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getAlbumTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "explicit"

    .line 627
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->isExplicit()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "cp_attrs"

    .line 628
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getCpAttrs()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "image_url"

    .line 629
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getImageBigUrl()Ljava/lang/String;

    move-result-object v1

    .line 631
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "image_url_big"

    .line 632
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", artistList - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", artistId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->getArtistId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", audioType - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", albumArtUrl - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumArtUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", albumArtBigUrl - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumArtBigUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 209
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 210
    iget-object p2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object p2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object p2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object p2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumArtUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object p2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumArtBigUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object p2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object p2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->albumTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object p2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->audioUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget p2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->explicit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object p2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->serviceStat:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object p2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->titleYn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object p2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 222
    iget p2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->rankingChg:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-object p2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->rankingBadge:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget p2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->diskNo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget p2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->trackNo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-object p2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->artistNames:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object p2, p0, Lcom/samsung/android/app/music/model/SimpleTrack;->isCeleb:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
