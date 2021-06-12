.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlayQueueImpl"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final iPlayQueue$delegate:Lkotlin/Lazy;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "iPlayQueue"

    const-string v4, "getIPlayQueue()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;Ljava/lang/String;)V
    .locals 1

    const-string v0, "iPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;->tag:Ljava/lang/String;

    .line 172
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl$iPlayQueue$2;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl$iPlayQueue$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;->iPlayQueue$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getIPlayQueue$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;->getIPlayQueue()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;

    move-result-object p0

    return-object p0
.end method

.method private final getIPlayQueue()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;->iPlayQueue$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;

    return-object v0
.end method


# virtual methods
.method public add(II[JZILandroid/os/Bundle;)V
    .locals 8

    const-string v0, "ids"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;->access$getIPlayQueue$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;

    move-result-object v1

    if-eqz v1, :cond_0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;->add(II[JZILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 268
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public move(II)V
    .locals 1

    .line 217
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;->access$getIPlayQueue$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;->move(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 288
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public open(IILjava/lang/String;[JLjava/util/List;IZLandroid/os/Bundle;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "[J",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;IZ",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    const-string v2, "keyWord"

    move-object v6, p3

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "ids"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "queue"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "extras"

    move-object/from16 v3, p8

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    .line 186
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;->access$getIPlayQueue$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 190
    array-length v4, v0

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move-object v7, v5

    goto :goto_1

    :cond_1
    move-object v7, v0

    .line 191
    :goto_1
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v8, v5

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;-><init>(Ljava/util/List;)V

    move-object v8, v0

    .line 196
    :goto_2
    invoke-virtual/range {p8 .. p8}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v11, v5

    goto :goto_3

    :cond_3
    move-object v11, v3

    :goto_3
    move-object v3, v2

    move v4, p1

    move v5, p2

    move-object v6, p3

    move/from16 v9, p6

    move/from16 v10, p7

    .line 186
    invoke-interface/range {v3 .. v11}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;->open(IILjava/lang/String;[JLcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;IZLandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_4
    return-void
.end method

.method public openPosition(IIZ)V
    .locals 1

    .line 211
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;->access$getIPlayQueue$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;->openPosition(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 273
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public removeByIds([J)V
    .locals 1

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;->access$getIPlayQueue$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;->removeByIds([J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 283
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public removeByPositions([I)V
    .locals 1

    const-string v0, "positions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;->access$getIPlayQueue$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;->removeByPosition([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public toggleMode(I)V
    .locals 1

    .line 218
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;->access$getIPlayQueue$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue;->toggleMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 293
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
