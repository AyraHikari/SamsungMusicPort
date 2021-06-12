.class public final Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1054
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isSupportNext(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;)Z
    .locals 0

    .line 1054
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->isSupportNext()Z

    move-result p0

    return p0
.end method

.method private final isSupportNext()Z
    .locals 6

    .line 1092
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    return v1

    .line 1095
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/feature/SystemPropertyFeatures;->p:Ljava/lang/String;

    .line 1096
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const-string v2, "name"

    .line 1099
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "noble"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v2, v5, v4, v3}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "zen"

    invoke-static {v0, v2, v5, v4, v3}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_6

    const-string v2, "ktt"

    .line 1102
    invoke-static {v0, v2, v5, v4, v3}, Lkotlin/text/StringsKt;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "skt"

    invoke-static {v0, v2, v5, v4, v3}, Lkotlin/text/StringsKt;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "lgt"

    invoke-static {v0, v2, v5, v4, v3}, Lkotlin/text/StringsKt;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "kx"

    .line 1103
    invoke-static {v0, v2, v5, v4, v3}, Lkotlin/text/StringsKt;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_6

    return v5

    :cond_6
    return v1
.end method


# virtual methods
.method public final printErrorLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SMUSIC-SV-PlayerMedia"

    .line 1120
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final printInfoLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SMUSIC-SV-PlayerMedia"

    .line 1116
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final printLifeCycleLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SMUSIC-SV-PlayerMedia"

    .line 1124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LifeCycle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final printLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SMUSIC-SV-PlayerMedia"

    .line 1112
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
