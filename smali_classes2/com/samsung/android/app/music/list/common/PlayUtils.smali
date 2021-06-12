.class public final Lcom/samsung/android/app/music/list/common/PlayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/common/PlayUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/samsung/android/app/music/list/common/PlayUtils;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/common/PlayUtils;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/list/common/PlayUtils;->a:Lcom/samsung/android/app/music/list/common/PlayUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/content/Context;[JLjava/lang/Integer;Ljava/lang/String;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<",
            "*>;>;I",
            "Landroid/content/Context;",
            "[J",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 115
    new-instance p1, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p1, p3, p4}, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;-><init>([JI)V

    goto :goto_0

    .line 117
    :cond_0
    sget-object p3, Lcom/samsung/android/app/music/list/common/PlayUtils;->a:Lcom/samsung/android/app/music/list/common/PlayUtils;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;I)Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;

    move-result-object p1

    .line 120
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/list/common/PlayUtils;->a:Lcom/samsung/android/app/music/list/common/PlayUtils;

    .line 121
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->a()[J

    move-result-object v1

    .line 122
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->b()I

    move-result v2

    const/16 v3, -0x64

    const/16 v4, -0x64

    const/16 v5, -0x65

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g()I

    move-result v6

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->h()Ljava/lang/String;

    move-result-object v7

    move-object v8, p5

    move-object v9, p2

    .line 120
    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIIIIILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/content/Context;[JLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)I
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 109
    move-object p2, v0

    check-cast p2, Landroid/content/Context;

    :cond_0
    move-object v3, p2

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1

    .line 110
    move-object p3, v0

    check-cast p3, [J

    :cond_1
    move-object v4, p3

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_2

    .line 111
    move-object p4, v0

    check-cast p4, Ljava/lang/Integer;

    :cond_2
    move-object v5, p4

    and-int/lit8 p2, p6, 0x20

    if-eqz p2, :cond_3

    .line 112
    sget-object p2, Lcom/samsung/android/app/music/list/common/PlayUtils;->a:Lcom/samsung/android/app/music/list/common/PlayUtils;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g()I

    move-result p3

    invoke-direct {p2, p3}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a(I)Ljava/lang/String;

    move-result-object p5

    :cond_3
    move-object v6, p5

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/content/Context;[JLjava/lang/Integer;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;[JLjava/lang/Integer;Ljava/lang/String;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<",
            "*>;>;[J",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 38
    new-instance v0, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;-><init>([JI)V

    goto :goto_0

    .line 40
    :cond_0
    sget-object p1, Lcom/samsung/android/app/music/list/common/PlayUtils;->a:Lcom/samsung/android/app/music/list/common/PlayUtils;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;I)Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;

    move-result-object v0

    .line 43
    :goto_0
    sget-object v1, Lcom/samsung/android/app/music/list/common/PlayUtils;->a:Lcom/samsung/android/app/music/list/common/PlayUtils;

    .line 44
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->a()[J

    move-result-object v2

    .line 45
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->b()I

    move-result v3

    const/16 v4, -0x65

    const/16 v5, -0x64

    const/4 v6, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g()I

    move-result v7

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->h()Ljava/lang/String;

    move-result-object v8

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string p1, "fragment.activity!!"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    move-object v9, p3

    .line 43
    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIIIIILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;[JLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)I
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 33
    move-object p1, v0

    check-cast p1, [J

    :cond_0
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_1

    .line 34
    move-object p2, v0

    check-cast p2, Ljava/lang/Integer;

    :cond_1
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_2

    .line 35
    sget-object p3, Lcom/samsung/android/app/music/list/common/PlayUtils;->a:Lcom/samsung/android/app/music/list/common/PlayUtils;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g()I

    move-result p4

    invoke-direct {p3, p4}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a(I)Ljava/lang/String;

    move-result-object p3

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;[JLjava/lang/Integer;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private final a([JIIIIILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
    .locals 23
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    move-object/from16 v7, p1

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    const/4 v8, 0x1

    if-eqz v7, :cond_b

    .line 169
    array-length v9, v7

    if-nez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-nez v9, :cond_b

    array-length v9, v7

    sub-int/2addr v9, v8

    if-le v0, v9, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz p9, :cond_2

    if-eqz v5, :cond_2

    const v10, 0x100004

    if-ne v4, v10, :cond_2

    .line 182
    invoke-static/range {p7 .. p7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const/16 v10, 0x3e8

    int-to-long v6, v10

    div-long v19, v19, v6

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x2fc

    const/16 v22, 0x0

    move-object/from16 v10, p9

    .line 180
    invoke-static/range {v10 .. v22}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I

    :cond_2
    const/16 v6, -0x64

    const/16 v7, -0x65

    if-ne v1, v7, :cond_3

    const/16 v1, -0x65

    goto :goto_1

    :cond_3
    if-eq v1, v6, :cond_4

    goto :goto_1

    .line 192
    :cond_4
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->a()I

    move-result v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-ne v2, v7, :cond_6

    const/16 v2, -0x65

    goto :goto_2

    :cond_6
    if-eq v2, v6, :cond_7

    goto :goto_2

    .line 198
    :cond_7
    sget-boolean v2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->b()I

    move-result v2

    goto :goto_2

    :cond_8
    const/4 v2, 0x5

    :goto_2
    const/4 v6, -0x1

    if-eq v0, v6, :cond_9

    if-ne v1, v8, :cond_9

    .line 203
    new-array v6, v8, [J

    move-object/from16 v9, p1

    aget-wide v10, v9, v0

    const/4 v8, 0x0

    aput-wide v10, v6, v8

    move-object v8, v6

    const/4 v6, 0x0

    goto :goto_3

    :cond_9
    move-object/from16 v9, p1

    move v6, v0

    move-object v8, v9

    :goto_3
    const-string v10, "PlayUtils"

    .line 209
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "playInternal() queue=("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " > "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "), queuePosition=("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " > "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), playOption="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", enqueueOption="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", playMode="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", listType="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", keyword="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", playlistId="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v10, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v3, v7, :cond_a

    const/4 v6, 0x0

    move v0, v2

    move/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p1

    move-object/from16 v5, p8

    .line 226
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play(IIILjava/lang/String;[JLjava/lang/String;Z)V

    .line 235
    array-length v0, v9

    return v0

    :cond_a
    const/4 v7, 0x0

    move v0, v2

    move/from16 v1, p6

    move-object/from16 v2, p7

    move-object v3, v8

    move v4, v6

    move-object/from16 v5, p8

    move v6, v7

    .line 214
    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play(IILjava/lang/String;[JILjava/lang/String;Z)V

    .line 223
    array-length v0, v8

    return v0

    :cond_b
    :goto_4
    move-object v9, v7

    const-string v6, "PlayUtils"

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "playInternal() failed. queue="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_c

    array-length v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_5

    :cond_c
    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", queuePosition="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", playOption="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", enqueueOption="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", playMode="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", listType="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", keyword="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 170
    invoke-static {v8, v6, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static final a([JIIIILjava/lang/String;)I
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v9}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIIIILjava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final a([JIIIILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
    .locals 10

    .line 145
    sget-object v0, Lcom/samsung/android/app/music/list/common/PlayUtils;->a:Lcom/samsung/android/app/music/list/common/PlayUtils;

    const/16 v5, -0x65

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIIIIILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static synthetic a([JIIIILjava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/Object;)I
    .locals 10

    move/from16 v0, p8

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const/16 v1, -0x65

    const/16 v4, -0x65

    goto :goto_0

    :cond_0
    move v4, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const/16 v1, -0x64

    const/16 v5, -0x64

    goto :goto_1

    :cond_1
    move v5, p3

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    .line 142
    sget-object v1, Lcom/samsung/android/app/music/list/common/PlayUtils;->a:Lcom/samsung/android/app/music/list/common/PlayUtils;

    move v6, p4

    invoke-direct {v1, p4}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_2

    :cond_2
    move v6, p4

    move-object/from16 v8, p6

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 143
    check-cast v0, Landroid/content/Context;

    move-object v9, v0

    goto :goto_3

    :cond_3
    move-object/from16 v9, p7

    :goto_3
    move-object v2, p0

    move v3, p1

    move v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIIIILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static final a([JILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
    .locals 11

    const-string v0, "queue"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object v1, Lcom/samsung/android/app/music/list/common/PlayUtils;->a:Lcom/samsung/android/app/music/list/common/PlayUtils;

    const/4 v3, 0x0

    const/16 v4, -0x65

    const/16 v5, -0x64

    const/4 v6, 0x1

    move-object v2, p0

    move v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIIIIILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static synthetic a([JILjava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p6, p5, 0x8

    if-eqz p6, :cond_0

    .line 88
    sget-object p3, Lcom/samsung/android/app/music/list/common/PlayUtils;->a:Lcom/samsung/android/app/music/list/common/PlayUtils;

    invoke-direct {p3, p1}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a(I)Ljava/lang/String;

    move-result-object p3

    :cond_0
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 89
    check-cast p4, Landroid/content/Context;

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private final a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;I)Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<",
            "*>;>;I)",
            "Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;"
        }
    .end annotation

    .line 243
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, p2

    :goto_0
    if-ge v2, v1, :cond_2

    .line 248
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->e(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 249
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 250
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-le p2, v2, :cond_1

    add-int/lit8 v3, v3, -0x1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "PlayUtils"

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeQueue() queuePos=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "), queueSize="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance p1, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/Collection;)[J

    move-result-object p2

    invoke-direct {p1, p2, v3}, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;-><init>([JI)V

    return-object p1
.end method

.method private final a(I)Ljava/lang/String;
    .locals 1

    const v0, 0x10004

    if-eq p1, v0, :cond_2

    const v0, 0x10030

    if-eq p1, v0, :cond_1

    const v0, 0x100004

    if-eq p1, v0, :cond_2

    const v0, 0x100024

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "SEARCH"

    goto :goto_0

    :cond_1
    const-string p1, "FAVORITE"

    goto :goto_0

    :cond_2
    const-string p1, "MYPLAYLIST"

    :goto_0
    return-object p1
.end method

.method public static final a([JIILjava/lang/String;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x30

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIILjava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/Object;)V

    return-void
.end method

.method public static final a([JIILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 10

    .line 316
    sget-object v0, Lcom/samsung/android/app/music/list/common/PlayUtils;->a:Lcom/samsung/android/app/music/list/common/PlayUtils;

    const/16 v3, -0x65

    const/16 v4, -0x64

    const/16 v5, -0x65

    move-object v1, p0

    move v2, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIIIIILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    return-void
.end method

.method public static synthetic a([JIILjava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x10

    if-eqz p7, :cond_0

    .line 313
    sget-object p4, Lcom/samsung/android/app/music/list/common/PlayUtils;->a:Lcom/samsung/android/app/music/list/common/PlayUtils;

    invoke-direct {p4, p2}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a(I)Ljava/lang/String;

    move-result-object p4

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x20

    if-eqz p4, :cond_1

    const/4 p4, 0x0

    .line 314
    move-object p5, p4

    check-cast p5, Landroid/content/Context;

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static final b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;[JLjava/lang/Integer;Ljava/lang/String;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<",
            "*>;>;[J",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 64
    new-instance v0, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;-><init>([JI)V

    goto :goto_0

    .line 66
    :cond_0
    sget-object p1, Lcom/samsung/android/app/music/list/common/PlayUtils;->a:Lcom/samsung/android/app/music/list/common/PlayUtils;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;I)Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;

    move-result-object v0

    .line 69
    :goto_0
    sget-object v1, Lcom/samsung/android/app/music/list/common/PlayUtils;->a:Lcom/samsung/android/app/music/list/common/PlayUtils;

    .line 70
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->a()[J

    move-result-object v2

    .line 71
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->b()I

    move-result v3

    const/16 v4, -0x65

    const/16 v5, -0x64

    const/4 v6, 0x1

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g()I

    move-result v7

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->h()Ljava/lang/String;

    move-result-object v8

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string p1, "fragment.activity!!"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    move-object v9, p3

    .line 69
    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIIIIILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;[JLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)I
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 59
    move-object p1, v0

    check-cast p1, [J

    :cond_0
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_1

    .line 60
    move-object p2, v0

    check-cast p2, Ljava/lang/Integer;

    :cond_1
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_2

    .line 61
    sget-object p3, Lcom/samsung/android/app/music/list/common/PlayUtils;->a:Lcom/samsung/android/app/music/list/common/PlayUtils;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g()I

    move-result p4

    invoke-direct {p3, p4}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a(I)Ljava/lang/String;

    move-result-object p3

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/common/PlayUtils;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;[JLjava/lang/Integer;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
