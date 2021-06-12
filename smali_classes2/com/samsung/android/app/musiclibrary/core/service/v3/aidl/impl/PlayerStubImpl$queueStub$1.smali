.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1;
.super Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final playQueue$delegate:Lkotlin/Lazy;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playQueue"

    const-string v4, "getPlayQueue()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue$Stub;-><init>()V

    .line 75
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1$playQueue$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1$playQueue$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1;->playQueue$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getPlayQueue()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1;->playQueue$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;

    return-object v0
.end method


# virtual methods
.method public add(II[JZILandroid/os/Bundle;)V
    .locals 7

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1;->getPlayQueue()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;

    move-result-object v0

    if-eqz p3, :cond_0

    :goto_0
    move-object v3, p3

    goto :goto_1

    .line 113
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;->getEmptyLongArray()[J

    move-result-object p3

    goto :goto_0

    :goto_1
    if-eqz p6, :cond_1

    :goto_2
    move-object v6, p6

    goto :goto_3

    .line 116
    :cond_1
    sget-object p6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-string p3, "Bundle.EMPTY"

    invoke-static {p6, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    .line 110
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;->add(II[JZILandroid/os/Bundle;)V

    return-void
.end method

.method public move(II)V
    .locals 1

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1;->getPlayQueue()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;->move(II)V

    return-void
.end method

.method public open(IILjava/lang/String;[JLcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;IZLandroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "[J",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice<",
            "-",
            "Landroid/os/Parcelable;",
            ">;IZ",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1;->getPlayQueue()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;

    move-result-object v0

    if-eqz p3, :cond_0

    move-object v3, p3

    goto :goto_0

    .line 89
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    move-object v3, v1

    :goto_0
    if-eqz p4, :cond_1

    move-object v4, p4

    goto :goto_1

    .line 90
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;->getEmptyLongArray()[J

    move-result-object v1

    move-object v4, v1

    :goto_1
    if-eqz p5, :cond_2

    .line 91
    invoke-virtual {p5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    :goto_3
    move-object v5, v1

    goto :goto_4

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :goto_4
    if-eqz p8, :cond_4

    move-object/from16 v8, p8

    goto :goto_5

    .line 94
    :cond_4
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-string v2, "Bundle.EMPTY"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    :goto_5
    move v1, p1

    move v2, p2

    move v6, p6

    move/from16 v7, p7

    .line 86
    invoke-interface/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;->open(IILjava/lang/String;[JLjava/util/List;IZLandroid/os/Bundle;)V

    return-void
.end method

.method public openPosition(IIZ)V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1;->getPlayQueue()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;->openPosition(IIZ)V

    return-void
.end method

.method public removeByIds([J)V
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1;->getPlayQueue()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;->getEmptyLongArray()[J

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;->removeByIds([J)V

    return-void
.end method

.method public removeByPosition([I)V
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1;->getPlayQueue()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/EmptyKt;->getEmptyIntArray()[I

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;->removeByPositions([I)V

    return-void
.end method

.method public toggleMode(I)V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1;->getPlayQueue()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;->toggleMode(I)V

    return-void
.end method
