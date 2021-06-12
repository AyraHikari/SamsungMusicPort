.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlayControlImpl"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final iPlayControl$delegate:Lkotlin/Lazy;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "iPlayControl"

    const-string v4, "getIPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;Ljava/lang/String;)V
    .locals 1

    const-string v0, "iPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;->tag:Ljava/lang/String;

    .line 157
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl$iPlayControl$2;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl$iPlayControl$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;->iPlayControl$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getIPlayControl$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl;
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;->getIPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl;

    move-result-object p0

    return-object p0
.end method

.method private final getIPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;->iPlayControl$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl;

    return-object v0
.end method


# virtual methods
.method public buffering()I
    .locals 2

    .line 168
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;->access$getIPlayControl$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl;->buffering()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 299
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public next()V
    .locals 1

    .line 164
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;->access$getIPlayControl$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl;->next()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 163
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;->access$getIPlayControl$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 162
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;->access$getIPlayControl$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public position()J
    .locals 4

    .line 167
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;->access$getIPlayControl$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl;->position()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 293
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-wide v0
.end method

.method public prev(Z)V
    .locals 1

    .line 165
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;->access$getIPlayControl$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl;->prev(Z)V
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

.method public seek(J)V
    .locals 1

    .line 166
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;->access$getIPlayControl$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl;->seek(J)V
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

.method public togglePlay()V
    .locals 1

    .line 161
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;->access$getIPlayControl$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayControlImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl;->togglePlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
