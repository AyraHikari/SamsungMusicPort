.class final Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/server/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackItem"
.end annotation


# instance fields
.field private final album:Ljava/lang/String;

.field private final artist:Ljava/lang/String;

.field private final cpAttrs:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "cp_attrs"
    .end annotation
.end field

.field private final genre:Ljava/lang/String;

.field private final id:J

.field private final sourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "source_id"
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sourceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artist"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "album"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "genre"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->id:J

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->sourceId:Ljava/lang/String;

    iput-wide p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->cpAttrs:J

    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->title:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->artist:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->album:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->genre:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;
    .locals 10

    move-object v0, p0

    and-int/lit8 v2, p10, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->id:J

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, p10, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->sourceId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 v5, p10, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->cpAttrs:J

    goto :goto_2

    :cond_2
    move-wide v5, p4

    :goto_2
    and-int/lit8 v7, p10, 0x8

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->title:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v7, p6

    :goto_3
    and-int/lit8 v8, p10, 0x10

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->artist:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, p10, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->album:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v1, p10, 0x40

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->genre:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v1, p9

    :goto_6
    move-wide p1, v2

    move-object p3, v4

    move-wide p4, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->copy(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->cpAttrs:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->album:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;
    .locals 11

    const-string v0, "sourceId"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artist"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "album"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "genre"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;

    move-object v1, v0

    move-wide v2, p1

    move-wide v5, p4

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;-><init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;

    iget-wide v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->id:J

    iget-wide v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->id:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->sourceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->sourceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->cpAttrs:J

    iget-wide v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->cpAttrs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->artist:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->artist:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->album:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->album:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->genre:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->genre:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public final getAlbum()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->album:Ljava/lang/String;

    return-object v0
.end method

.method public final getArtist()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public final getCpAttrs()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->cpAttrs:J

    return-wide v0
.end method

.method public final getGenre()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->id:J

    return-wide v0
.end method

.method public final getSourceId()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->id:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->sourceId:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->cpAttrs:J

    ushr-long v1, v4, v2

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->title:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->artist:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->album:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->genre:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_4
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->sourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cpAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->cpAttrs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", genre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;->genre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
