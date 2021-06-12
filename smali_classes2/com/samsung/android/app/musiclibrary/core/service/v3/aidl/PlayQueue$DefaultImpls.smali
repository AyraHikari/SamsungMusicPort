.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic add$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;II[JZILandroid/os/Bundle;ILjava/lang/Object;)V
    .locals 4

    if-nez p8, :cond_6

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/4 p1, 0x4

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_1

    const/4 p8, 0x0

    goto :goto_0

    :cond_1
    move p8, p2

    :goto_0
    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    .line 46
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;->getEmptyLongArray()[J

    move-result-object p3

    :cond_2
    move-object v1, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move v2, p4

    :goto_1
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move v0, p5

    :goto_2
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    .line 49
    sget-object p6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-string p2, "Bundle.EMPTY"

    invoke-static {p6, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move p3, p1

    move p4, p8

    move-object p5, v1

    move p6, v2

    move p7, v0

    move-object p8, v3

    invoke-interface/range {p2 .. p8}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;->add(II[JZILandroid/os/Bundle;)V

    return-void

    .line 0
    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: add"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic open$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;IILjava/lang/String;[JLjava/util/List;IZLandroid/os/Bundle;ILjava/lang/Object;)V
    .locals 12

    move/from16 v0, p9

    if-nez p10, :cond_7

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    const-string v1, ""

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 36
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;->getEmptyLongArray()[J

    move-result-object v1

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    .line 37
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object v1

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object/from16 v8, p5

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    const/4 v9, 0x0

    goto :goto_4

    :cond_4
    move/from16 v9, p6

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    const/4 v10, 0x0

    goto :goto_5

    :cond_5
    move/from16 v10, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    .line 40
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-string v1, "Bundle.EMPTY"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v0

    goto :goto_6

    :cond_6
    move-object/from16 v11, p8

    :goto_6
    move-object v3, p0

    move v5, p2

    invoke-interface/range {v3 .. v11}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;->open(IILjava/lang/String;[JLjava/util/List;IZLandroid/os/Bundle;)V

    return-void

    .line 0
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: open"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
