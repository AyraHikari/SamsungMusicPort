.class public final Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaylistItemInfo"
.end annotation


# instance fields
.field private final a:J

.field private final b:J

.field private final c:I

.field private final d:I

.field private e:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;


# direct methods
.method public constructor <init>(JJIILcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->a:J

    iput-wide p3, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->b:J

    iput p5, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->c:I

    iput p6, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->d:I

    iput-object p7, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->e:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;JJIILcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;
    .locals 8

    move-object v0, p0

    and-int/lit8 v2, p8, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->a:J

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, p8, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->b:J

    goto :goto_1

    :cond_1
    move-wide v4, p3

    :goto_1
    and-int/lit8 v6, p8, 0x4

    if-eqz v6, :cond_2

    iget v6, v0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->c:I

    goto :goto_2

    :cond_2
    move v6, p5

    :goto_2
    and-int/lit8 v7, p8, 0x8

    if-eqz v7, :cond_3

    iget v7, v0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->d:I

    goto :goto_3

    :cond_3
    move v7, p6

    :goto_3
    and-int/lit8 v1, p8, 0x10

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->e:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    goto :goto_4

    :cond_4
    move-object v1, p7

    :goto_4
    move-wide p1, v2

    move-wide p3, v4

    move p5, v6

    move p6, v7

    move-object p7, v1

    invoke-virtual/range {p0 .. p7}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->a(JJIILcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->a:J

    return-wide v0
.end method

.method public final a(JJIILcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;
    .locals 9

    new-instance v8, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;

    move-object v0, v8

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;-><init>(JJIILcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)V

    return-object v8
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->e:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    return-void
.end method

.method public final b()J
    .locals 2

    .line 131
    iget-wide v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->b:J

    return-wide v0
.end method

.method public final c()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->d:I

    return v0
.end method

.method public final e()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->e:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5

    instance-of v1, p1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;

    iget-wide v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->a:J

    iget-wide v5, p1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget-wide v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->b:J

    iget-wide v5, p1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->c:I

    iget v3, p1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->c:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->d:I

    iget v3, p1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->d:I

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->e:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->e:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v2

    :cond_5
    :goto_4
    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->b:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->e:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaylistItemInfo(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnailId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", trackCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cpAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", holder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->e:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
