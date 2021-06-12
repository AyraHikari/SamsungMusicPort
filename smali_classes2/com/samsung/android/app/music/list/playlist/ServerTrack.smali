.class public final Lcom/samsung/android/app/music/list/playlist/ServerTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# instance fields
.field private final albumId:Ljava/lang/String;

.field private final albumTitle:Ljava/lang/String;

.field private final artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/Artist;",
            ">;"
        }
    .end annotation
.end field

.field private final audioType:Ljava/lang/String;

.field private final celebYn:Ljava/lang/String;

.field private final displayOrder:I

.field private final explicit:I

.field private final fileName:Ljava/lang/String;

.field private final imageUrl:Ljava/lang/String;

.field private final largeSizeImageUrl:Ljava/lang/String;

.field private final registDate:Ljava/lang/String;

.field private final trackId:Ljava/lang/String;

.field private final trackSeqId:I

.field private final trackTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/Artist;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "trackId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackTitle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "registDate"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artistList"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUrl"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "largeSizeImageUrl"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "albumId"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "albumTitle"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "celebYn"

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackSeqId:I

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->audioType:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->explicit:I

    iput p6, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->displayOrder:I

    iput-object p7, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->registDate:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->artistList:Ljava/util/List;

    iput-object p9, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->imageUrl:Ljava/lang/String;

    iput-object p10, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->largeSizeImageUrl:Ljava/lang/String;

    iput-object p11, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->albumId:Ljava/lang/String;

    iput-object p12, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->albumTitle:Ljava/lang/String;

    iput-object p13, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->fileName:Ljava/lang/String;

    iput-object p14, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->celebYn:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/app/music/list/playlist/ServerTrack;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/playlist/ServerTrack;
    .locals 15

    move-object v0, p0

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackSeqId:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackTitle:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->audioType:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->explicit:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->displayOrder:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->registDate:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->artistList:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->imageUrl:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->largeSizeImageUrl:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->albumId:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->albumTitle:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->fileName:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->celebYn:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v1, p14

    :goto_d
    move/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v1

    invoke-virtual/range {p0 .. p14}, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/playlist/ServerTrack;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackSeqId:I

    return v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->largeSizeImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->celebYn:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->audioType:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->explicit:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->displayOrder:I

    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->registDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/Artist;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/playlist/ServerTrack;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/Artist;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/app/music/list/playlist/ServerTrack;"
        }
    .end annotation

    const-string v0, "trackId"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackTitle"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioType"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "registDate"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artistList"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUrl"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "largeSizeImageUrl"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "albumId"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "albumTitle"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "celebYn"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;

    move-object v1, v0

    move/from16 v2, p1

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v15}, Lcom/samsung/android/app/music/list/playlist/ServerTrack;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lcom/samsung/android/app/music/list/playlist/ServerTrack;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/samsung/android/app/music/list/playlist/ServerTrack;

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackSeqId:I

    iget v3, p1, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackSeqId:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackId:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->audioType:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->audioType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->explicit:I

    iget v3, p1, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->explicit:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->displayOrder:I

    iget v3, p1, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->displayOrder:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->registDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->registDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->artistList:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->artistList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->imageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->imageUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->largeSizeImageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->largeSizeImageUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->albumId:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->albumId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->albumTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->albumTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->fileName:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->fileName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->celebYn:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->celebYn:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v0
.end method

.method public final getAlbumId()Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getArtistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/playlist/Artist;",
            ">;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public final getAudioType()Ljava/lang/String;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->audioType:Ljava/lang/String;

    return-object v0
.end method

.method public final getCelebYn()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->celebYn:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayOrder()I
    .locals 1

    .line 391
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->displayOrder:I

    return v0
.end method

.method public final getExplicit()I
    .locals 1

    .line 391
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->explicit:I

    return v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getLargeSizeImageUrl()Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->largeSizeImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegistDate()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->registDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrackId()Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrackSeqId()I
    .locals 1

    .line 390
    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackSeqId:I

    return v0
.end method

.method public final getTrackTitle()Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackSeqId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackId:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->audioType:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->explicit:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->displayOrder:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->registDate:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->artistList:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->largeSizeImageUrl:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->albumId:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->albumTitle:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->celebYn:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_a
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerTrack(trackSeqId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackSeqId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", audioType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->audioType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", explicit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->explicit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->displayOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", registDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->registDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", artistList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->artistList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", largeSizeImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->largeSizeImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", albumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", albumTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->albumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", celebYn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/ServerTrack;->celebYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
